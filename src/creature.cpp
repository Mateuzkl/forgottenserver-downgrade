// Copyright 2023 The Forgotten Server Authors. All rights reserved.
// Use of this source code is governed by the GPL-2.0 License that can be found in the LICENSE file.

#include "otpch.h"

#include "creature.h"

#include "configmanager.h"
#include "events.h"
#include "game.h"
#include "monster.h"
#include "scheduler.h"

extern CreatureEvents* g_creatureEvents;
extern Events* g_events;
extern Game g_game;

Creature::Creature() { onIdleStatus(); }

Creature::~Creature()
{
	for (Creature* summon : summons) {
		summon->setAttackedCreature(nullptr);
		summon->removeMaster();
	}

	for (Condition* condition : conditions) {
		condition->endCondition(this);
		delete condition;
	}
}

bool Creature::canSee(const Position& myPos, const Position& pos, int32_t viewRangeX, int32_t viewRangeY)
{
	if (myPos.z <= 7) {
		// we are on ground level or above (7 -> 0)
		// view is from 7 -> 0
		if (pos.z > 7) {
			return false;
		}
	} else if (myPos.z >= 8) {
		// we are underground (8 -> 15)
		// we can't see floors above 8
		if (pos.z < 8) {
			return false;
		}

		// view is +/- 2 from the floor we stand on
		if (myPos.getDistanceZ(pos) > 2) {
			return false;
		}
	}

	int32_t offsetz = myPos.getOffsetZ(pos);
	return (pos.getX() >= myPos.getX() - viewRangeX + offsetz) && (pos.getX() <= myPos.getX() + viewRangeX + offsetz) &&
	       (pos.getY() >= myPos.getY() - viewRangeY + offsetz) && (pos.getY() <= myPos.getY() + viewRangeY + offsetz);
}

bool Creature::canSee(const Position& pos) const
{
	return canSee(getPosition(), pos, Map::maxViewportX, Map::maxViewportY);
}

bool Creature::canSeeCreature(const Creature* creature) const
{
	if (!canSeeGhostMode(creature) && creature->isInGhostMode()) {
		return false;
	}

	if (!canSeeInvisibility() && creature->isInvisible()) {
		return false;
	}
	return true;
}

void Creature::setSkull(Skulls_t newSkull)
{
	skull = newSkull;
	g_game.updateCreatureSkull(this);
}

int64_t Creature::getTimeSinceLastMove() const
{
	if (lastStep) {
		return OTSYS_TIME() - lastStep;
	}
	return std::numeric_limits<int64_t>::max();
}

int32_t Creature::getWalkDelay(Direction dir) const
{
	if (lastStep == 0) {
		return 0;
	}

	int64_t ct = OTSYS_TIME();
	int64_t stepDuration = getStepDuration(dir);
	return stepDuration - (ct - lastStep);
}

int32_t Creature::getWalkDelay() const
{
	// Used for auto-walking
	if (lastStep == 0) {
		return 0;
	}

	int64_t ct = OTSYS_TIME();
	int64_t stepDuration = getStepDuration() * lastStepCost;
	return stepDuration - (ct - lastStep);
}

void Creature::onThink(uint32_t interval)
{
	if (!isMapLoaded && useCacheMap()) {
		isMapLoaded = true;
		updateMapCache();
	}

	if (followCreature && master != followCreature && !canSeeCreature(followCreature)) {
		onCreatureDisappear(followCreature, false);
	}

	if (attackedCreature && master != attackedCreature && !canSeeCreature(attackedCreature)) {
		onCreatureDisappear(attackedCreature, false);
	}

	blockTicks += interval;
	if (blockTicks >= 1000) {
		blockCount = std::min<uint32_t>(blockCount + 1, 2);
		blockTicks = 0;
	}

	if (followCreature) {
		walkUpdateTicks += interval;
		if (forceUpdateFollowPath || walkUpdateTicks >= 2000) {
			walkUpdateTicks = 0;
			forceUpdateFollowPath = false;
			isUpdatingPath = true;
		}
	}

	if (isUpdatingPath) {
		isUpdatingPath = false;
		goToFollowCreature();
	}

	// scripting event - onThink
	const CreatureEventList& thinkEvents = getCreatureEvents(CREATURE_EVENT_THINK);
	for (CreatureEvent* thinkEvent : thinkEvents) {
		thinkEvent->executeOnThink(this, interval);
	}
}

void Creature::onAttacking(uint32_t interval)
{
	if (!attackedCreature) {
		return;
	}

	onAttacked();
	attackedCreature->onAttacked();

	if (g_game.isSightClear(getPosition(), attackedCreature->getPosition(), true)) {
		doAttacking(interval);
	}
}

void Creature::onIdleStatus()
{
	if (!isDead()) {
		damageMap.clear();
		lastHitCreatureId = 0;
	}
}

void Creature::onWalk()
{
	if (getWalkDelay() <= 0) {
		Direction dir;
		uint32_t flags = FLAG_IGNOREFIELDDAMAGE;
		if (getNextStep(dir, flags)) {
			ReturnValue ret = g_game.internalMoveCreature(this, dir, flags);
			if (ret != RETURNVALUE_NOERROR) {
				if (Player* player = getPlayer()) {
					player->sendCancelMessage(ret);
					player->sendCancelWalk();
				}

				forceUpdateFollowPath = true;
			}
		} else {
			stopEventWalk();

			if (listWalkDir.empty()) {
				onWalkComplete();
			}
		}
	}

	if (cancelNextWalk) {
		listWalkDir.clear();
		onWalkAborted();
		cancelNextWalk = false;
	}

	if (eventWalk != 0) {
		eventWalk = 0;
		addEventWalk();
	}
}

void Creature::onWalk(Direction& dir)
{
	if (!hasCondition(CONDITION_DRUNK)) {
		return;
	}

	uint16_t rand = static_cast<uint16_t>(uniform_random(0, 399));
	if (rand / 4 > getDrunkenness()) {
		return;
	}

	dir = static_cast<Direction>(rand % 4);
	g_game.internalCreatureSay(this, TALKTYPE_MONSTER_SAY, "Hicks!", false);
}

bool Creature::getNextStep(Direction& dir, uint32_t&)
{
	if (listWalkDir.empty()) {
		return false;
	}

	dir = listWalkDir.back();
	listWalkDir.pop_back();
	onWalk(dir);
	return true;
}

void Creature::startAutoWalk()
{
	if (isMovementBlocked()) {
		if (auto player = getPlayer()) {
			player->sendCancelWalk();
		}
		return;
	}

	addEventWalk(listWalkDir.size() == 1);
}

void Creature::startAutoWalk(Direction direction)
{
	if (isMovementBlocked()) {
		if (auto player = getPlayer()) {
			player->sendCancelWalk();
		}
		return;
	}

	listWalkDir.clear();
	listWalkDir.push_back(direction);
	addEventWalk(true);
}

void Creature::startAutoWalk(const std::vector<Direction>& listDir)
{
	if (isMovementBlocked()) {
		if (auto player = getPlayer()) {
			player->sendCancelWalk();
		}
		return;
	}

	listWalkDir = listDir;
	addEventWalk(listWalkDir.size() == 1);
}

void Creature::addEventWalk(bool firstStep)
{
	cancelNextWalk = false;

	if (getStepSpeed() <= 0) {
		return;
	}

	if (eventWalk != 0) {
		return;
	}

	int64_t ticks = getEventStepTicks(firstStep);
	if (ticks <= 0) {
		return;
	}

	// Take first step right away, but still queue the next
	if (ticks == 1) {
		g_game.checkCreatureWalk(getID());
	}

	eventWalk = g_scheduler.addEvent(createSchedulerTask(ticks, [id = getID()]() { g_game.checkCreatureWalk(id); }));
}

void Creature::stopEventWalk()
{
	if (eventWalk != 0) {
		g_scheduler.stopEvent(eventWalk);
		eventWalk = 0;
	}
}

void Creature::updateMapCache()
{
	Tile* tile;
	const Position& myPos = getPosition();
	Position pos(0, 0, myPos.z);

	for (int32_t y = -maxWalkCacheHeight; y <= maxWalkCacheHeight; ++y) {
		for (int32_t x = -maxWalkCacheWidth; x <= maxWalkCacheWidth; ++x) {
			pos.x = myPos.getX() + x;
			pos.y = myPos.getY() + y;
			tile = g_game.map.getTile(pos);
			updateTileCache(tile, pos);
		}
	}
}

void Creature::updateTileCache(const Tile* tile, int32_t dx, int32_t dy)
{
	if (std::abs(dx) <= maxWalkCacheWidth && std::abs(dy) <= maxWalkCacheHeight) {
		localMapCache[maxWalkCacheHeight + dy][maxWalkCacheWidth + dx] =
		    tile && tile->queryAdd(0, *this, 1, FLAG_PATHFINDING | FLAG_IGNOREFIELDDAMAGE) == RETURNVALUE_NOERROR;
	}
}

void Creature::updateTileCache(const Tile* tile, const Position& pos)
{
	const Position& myPos = getPosition();
	if (pos.z == myPos.z) {
		int32_t dx = pos.getOffsetX(myPos);
		int32_t dy = pos.getOffsetY(myPos);
		updateTileCache(tile, dx, dy);
	}
}

int32_t Creature::getWalkCache(const Position& pos) const
{
	if (!useCacheMap()) {
		return 2;
	}

	const Position& myPos = getPosition();
	if (myPos.z != pos.z) {
		return 0;
	}

	if (pos == myPos) {
		return 1;
	}

	if (int32_t dx = pos.getOffsetX(myPos); std::abs(dx) <= maxWalkCacheWidth) {
		if (int32_t dy = pos.getOffsetY(myPos); std::abs(dy) <= maxWalkCacheHeight) {
			if (localMapCache[maxWalkCacheHeight + dy][maxWalkCacheWidth + dx]) {
				return 1;
			}
			return 0;
		}
	}

	// out of range
	return 2;
}

void Creature::onAddTileItem(const Tile* tile, const Position& pos)
{
	if (isMapLoaded && pos.z == getPosition().z) {
		updateTileCache(tile, pos);
	}
}

void Creature::onUpdateTileItem(const Tile* tile, const Position& pos, const Item*, const ItemType& oldType,
                                const Item*, const ItemType& newType)
{
	if (!isMapLoaded) {
		return;
	}

	if (oldType.blockSolid || oldType.blockPathFind || newType.blockPathFind || newType.blockSolid) {
		if (pos.z == getPosition().z) {
			updateTileCache(tile, pos);
		}
	}
}

void Creature::onRemoveTileItem(const Tile* tile, const Position& pos, const ItemType& iType, const Item*)
{
	if (!isMapLoaded) {
		return;
	}

	if (iType.blockSolid || iType.blockPathFind || iType.isGroundTile()) {
		if (pos.z == getPosition().z) {
			updateTileCache(tile, pos);
		}
	}
}

void Creature::onCreatureAppear(Creature* creature, bool isLogin)
{
	if (creature == this) {
		if (useCacheMap()) {
			isMapLoaded = true;
			updateMapCache();
		}

		if (isLogin) {
			setLastPosition(getPosition());
		}
	} else if (isMapLoaded) {
		if (creature->getPosition().z == getPosition().z) {
			updateTileCache(creature->getTile(), creature->getPosition());
		}
	}
}

void Creature::onRemoveCreature(Creature* creature, bool)
{
	onCreatureDisappear(creature, true);
	if (creature == this) {
		if (master && !master->isRemoved()) {
			setMaster(nullptr);
		}
	} else if (isMapLoaded) {
		if (creature->getPosition().z == getPosition().z) {
			updateTileCache(creature->getTile(), creature->getPosition());
		}
	}
}

void Creature::onCreatureDisappear(const Creature* creature, bool isLogout)
{
	if (attackedCreature == creature) {
		setAttackedCreature(nullptr);
		onAttackedCreatureDisappear(isLogout);
	}

	if (followCreature == creature) {
		setFollowCreature(nullptr);
		onFollowCreatureDisappear(isLogout);
	}
}

void Creature::onChangeZone(ZoneType_t zone)
{
	if (attackedCreature && zone == ZONE_PROTECTION) {
		onCreatureDisappear(attackedCreature, false);
	}
}

void Creature::onAttackedCreatureChangeZone(ZoneType_t zone)
{
	if (zone == ZONE_PROTECTION) {
		onCreatureDisappear(attackedCreature, false);
	}
}

void Creature::onCreatureMove(Creature* creature, const Tile* newTile, const Position& newPos, const Tile* oldTile,
                              const Position& oldPos, bool teleport)
{
	if (creature == this) {
		lastStep = OTSYS_TIME();
		lastStepCost = 1;

		if (!teleport) {
			if (oldPos.z != newPos.z) {
				// floor change extra cost
				lastStepCost = 2;
			} else if (newPos.getDistanceX(oldPos) >= 1 && newPos.getDistanceY(oldPos) >= 1) {
				if (getPlayer()) {
					lastStepCost = 1;
				} else {
					lastStepCost = 3;
				}
			}
		} else {
			stopEventWalk();
		}

		if (!summons.empty()) {
			// check if any of our summons is out of range (+/- 2 floors or 30 tiles away)
			std::forward_list<Creature*> despawnList;
			for (Creature* summon : summons) {
				const Position& pos = summon->getPosition();
				if (newPos.getDistanceZ(pos) > 2 || std::max(newPos.getDistanceX(pos), newPos.getDistanceY(pos)) > 30) {
					despawnList.push_front(summon);
				}
			}

			for (Creature* despawnCreature : despawnList) {
				g_game.removeCreature(despawnCreature, true);
			}
		}

		if (newTile->getZone() != oldTile->getZone()) {
			g_events->eventCreatureOnChangeZone(this, oldTile->getZone(), newTile->getZone());
			onChangeZone(getZone());
		}

		// update map cache
		if (isMapLoaded) {
			if (teleport || oldPos.z != newPos.z) {
				updateMapCache();
			} else {
				const Position& myPos = getPosition();

				if (oldPos.y > newPos.y) { // north
					// shift y south
					for (int32_t y = mapWalkHeight - 1; --y >= 0;) {
						memcpy(localMapCache[y + 1], localMapCache[y], sizeof(localMapCache[y]));
					}

					// update 0
					for (int32_t x = -maxWalkCacheWidth; x <= maxWalkCacheWidth; ++x) {
						Tile* cacheTile =
						    g_game.map.getTile(myPos.getX() + x, myPos.getY() - maxWalkCacheHeight, myPos.z);
						updateTileCache(cacheTile, x, -maxWalkCacheHeight);
					}
				} else if (oldPos.y < newPos.y) { // south
					// shift y north
					for (int32_t y = 0; y <= mapWalkHeight - 2; ++y) {
						memcpy(localMapCache[y], localMapCache[y + 1], sizeof(localMapCache[y]));
					}

					// update mapWalkHeight - 1
					for (int32_t x = -maxWalkCacheWidth; x <= maxWalkCacheWidth; ++x) {
						Tile* cacheTile =
						    g_game.map.getTile(myPos.getX() + x, myPos.getY() + maxWalkCacheHeight, myPos.z);
						updateTileCache(cacheTile, x, maxWalkCacheHeight);
					}
				}

				if (oldPos.x < newPos.x) { // east
					// shift y west
					int32_t starty = 0;
					int32_t endy = mapWalkHeight - 1;
					int32_t dy = oldPos.getDistanceY(newPos);

					if (dy < 0) {
						endy += dy;
					} else if (dy > 0) {
						starty = dy;
					}

					for (int32_t y = starty; y <= endy; ++y) {
						for (int32_t x = 0; x <= mapWalkWidth - 2; ++x) {
							localMapCache[y][x] = localMapCache[y][x + 1];
						}
					}

					// update mapWalkWidth - 1
					for (int32_t y = -maxWalkCacheHeight; y <= maxWalkCacheHeight; ++y) {
						Tile* cacheTile = g_game.map.getTile(myPos.x + maxWalkCacheWidth, myPos.y + y, myPos.z);
						updateTileCache(cacheTile, maxWalkCacheWidth, y);
					}
				} else if (oldPos.x > newPos.x) { // west
					// shift y east
					int32_t starty = 0;
					int32_t endy = mapWalkHeight - 1;
					int32_t dy = oldPos.getDistanceY(newPos);

					if (dy < 0) {
						endy += dy;
					} else if (dy > 0) {
						starty = dy;
					}

					for (int32_t y = starty; y <= endy; ++y) {
						for (int32_t x = mapWalkWidth - 1; --x >= 0;) {
							localMapCache[y][x + 1] = localMapCache[y][x];
						}
					}

					// update 0
					for (int32_t y = -maxWalkCacheHeight; y <= maxWalkCacheHeight; ++y) {
						Tile* cacheTile = g_game.map.getTile(myPos.x - maxWalkCacheWidth, myPos.y + y, myPos.z);
						updateTileCache(cacheTile, -maxWalkCacheWidth, y);
					}
				}

				updateTileCache(oldTile, oldPos);
			}
		}
	} else {
		if (isMapLoaded) {
			const Position& myPos = getPosition();

			if (newPos.z == myPos.z) {
				updateTileCache(newTile, newPos);
			}

			if (oldPos.z == myPos.z) {
				updateTileCache(oldTile, oldPos);
			}
		}
	}

	if (creature == followCreature || (creature == this && followCreature)) {
		if (hasFollowPath) {
			isUpdatingPath = false;
			g_dispatcher.addTask(createTask(std::bind(&Game::updateCreatureWalk, &g_game, getID())));
		}

		if (newPos.z != oldPos.z || !canSee(followCreature->getPosition())) {
			onCreatureDisappear(followCreature, false);
		}
	}

	if (creature == attackedCreature || (creature == this && attackedCreature)) {
		if (newPos.z != oldPos.z || !canSee(attackedCreature->getPosition())) {
			onCreatureDisappear(attackedCreature, false);
		} else {
			if (hasExtraSwing()) {
				// our target is moving lets see if we can get in hit
				g_dispatcher.addTask([id = getID()]() { g_game.checkCreatureAttack(id); });
			}

			if (newTile->getZone() != oldTile->getZone()) {
				onAttackedCreatureChangeZone(attackedCreature->getZone());
			}
		}
	}
}

CreatureVector Creature::getKillers()
{
	CreatureVector killers;
	const int64_t timeNow = OTSYS_TIME();
	const int64_t inFightTicks = getInteger(ConfigManager::PZ_LOCKED);
	for (const auto& it : damageMap) {
		Creature* attacker = g_game.getCreatureByID(it.first);
		if (attacker && attacker != this && timeNow - it.second.ticks <= inFightTicks) {
			killers.push_back(attacker);
		}
	}
	return killers;
}

void Creature::onDeath()
{
	bool lastHitUnjustified = false;
	bool mostDamageUnjustified = false;
	Creature* lastHitCreature = g_game.getCreatureByID(lastHitCreatureId);
	Creature* lastHitCreatureMaster;
	if (lastHitCreature) {
		lastHitUnjustified = lastHitCreature->onKilledCreature(this);
		lastHitCreatureMaster = lastHitCreature->getMaster();
	} else {
		lastHitCreatureMaster = nullptr;
	}

	Creature* mostDamageCreature = nullptr;

	const int64_t timeNow = OTSYS_TIME();
	const int64_t inFightTicks = getInteger(ConfigManager::PZ_LOCKED);
	int32_t mostDamage = 0;
	std::map<Creature*, uint64_t> experienceMap;
	for (const auto& it : damageMap) {
		if (Creature* attacker = g_game.getCreatureByID(it.first)) {
			CountBlock_t cb = it.second;
			if ((cb.total > mostDamage && (timeNow - cb.ticks <= inFightTicks))) {
				mostDamage = cb.total;
				mostDamageCreature = attacker;
			}

			if (attacker != this) {
				uint64_t gainExp = getGainedExperience(attacker);
				if (Player* attackerPlayer = attacker->getPlayer()) {
					attackerPlayer->removeAttacked(getPlayer());

					Party* party = attackerPlayer->getParty();
					if (party && party->getLeader() && party->isSharedExperienceActive() &&
					    party->isSharedExperienceEnabled()) {
						attacker = party->getLeader();
					}
				}

				auto tmpIt = experienceMap.find(attacker);
				if (tmpIt == experienceMap.end()) {
					experienceMap[attacker] = gainExp;
				} else {
					tmpIt->second += gainExp;
				}
			}
		}
	}

	for (const auto& it : experienceMap) {
		it.first->onGainExperience(it.second, this);
	}

	if (mostDamageCreature) {
		if (mostDamageCreature != lastHitCreature && mostDamageCreature != lastHitCreatureMaster) {
			Creature* mostDamageCreatureMaster = mostDamageCreature->getMaster();
			if (lastHitCreature != mostDamageCreatureMaster &&
			    (lastHitCreatureMaster == nullptr || mostDamageCreatureMaster != lastHitCreatureMaster)) {
				mostDamageUnjustified = mostDamageCreature->onKilledCreature(this, false);
			}
		}
	}

	bool droppedCorpse = dropCorpse(lastHitCreature, mostDamageCreature, lastHitUnjustified, mostDamageUnjustified);
	death(lastHitCreature);

	if (master) {
		setMaster(nullptr);

		if (dynamic_cast<Monster*>(this) != nullptr) {
			decrementReferenceCounter();
		}
	}

	if (droppedCorpse) {
		g_game.removeCreature(this, false);
	}
}

bool Creature::dropCorpse(Creature* lastHitCreature, Creature* mostDamageCreature, bool lastHitUnjustified,
                          bool mostDamageUnjustified)
{
	if (!lootDrop && getMonster()) {
		if (master) {
			// scripting event - onDeath
			const CreatureEventList& deathEvents = getCreatureEvents(CREATURE_EVENT_DEATH);
			for (CreatureEvent* deathEvent : deathEvents) {
				deathEvent->executeOnDeath(this, nullptr, lastHitCreature, mostDamageCreature, lastHitUnjustified,
				                           mostDamageUnjustified);
			}
		}

		g_game.addMagicEffect(getPosition(), CONST_ME_POFF);
	} else {
		Item* splash;
		switch (getRace()) {
			case RACE_VENOM:
				splash = Item::CreateItem(ITEM_FULLSPLASH, FLUID_SLIME);
				break;

			case RACE_BLOOD:
				splash = Item::CreateItem(ITEM_FULLSPLASH, FLUID_BLOOD);
				break;

			default:
				splash = nullptr;
				break;
		}

		Tile* tile = getTile();

		if (splash) {
			g_game.internalAddItem(tile, splash, INDEX_WHEREEVER, FLAG_NOLIMIT);
			g_game.startDecay(splash);
		}

		Item* corpse = getCorpse(lastHitCreature, mostDamageCreature);
		if (corpse) {
			g_game.internalAddItem(tile, corpse, INDEX_WHEREEVER, FLAG_NOLIMIT);
			g_game.startDecay(corpse);
		}

		// scripting event - onDeath
		for (CreatureEvent* deathEvent : getCreatureEvents(CREATURE_EVENT_DEATH)) {
			deathEvent->executeOnDeath(this, corpse, lastHitCreature, mostDamageCreature, lastHitUnjustified,
			                           mostDamageUnjustified);
		}

		if (corpse) {
			dropLoot(corpse->getContainer(), lastHitCreature);
		}
	}

	return true;
}

bool Creature::hasBeenAttacked(uint32_t attackerId)
{
	auto it = damageMap.find(attackerId);
	if (it == damageMap.end()) {
		return false;
	}
	return (OTSYS_TIME() - it->second.ticks) <= getInteger(ConfigManager::PZ_LOCKED);
}

Item* Creature::getCorpse(Creature*, Creature*) { return Item::CreateItem(getLookCorpse()); }

void Creature::changeHealth(int32_t healthChange, bool sendHealthChange /* = true*/)
{
	int32_t oldHealth = health;

	if (healthChange > 0) {
		health += std::min<int32_t>(healthChange, getMaxHealth() - health);
	} else {
		health = std::max<int32_t>(0, health + healthChange);
	}

	if (sendHealthChange && oldHealth != health) {
		g_game.addCreatureHealth(this);
	}

	if (isDead()) {
		g_dispatcher.addTask([id = getID()]() { g_game.executeDeath(id); });
	}
}

void Creature::gainHealth(Creature* healer, int32_t healthGain)
{
	changeHealth(healthGain);
	if (healer) {
		healer->onTargetCreatureGainHealth(this, healthGain);
	}
}

void Creature::drainHealth(Creature* attacker, int32_t damage)
{
	changeHealth(-damage, false);

	if (attacker) {
		attacker->onAttackedCreatureDrainHealth(this, damage);
	} else {
		lastHitCreatureId = 0;
	}
}

BlockType_t Creature::blockHit(Creature* attacker, CombatType_t combatType, int32_t& damage,
                               bool checkDefense /* = false */, bool checkArmor /* = false */, bool /* field = false */,
                               bool /* ignoreResistances = false */)
{
	BlockType_t blockType = BLOCK_NONE;

	if (isImmune(combatType)) {
		damage = 0;
		blockType = BLOCK_IMMUNITY;
	} else if (combatType != COMBAT_HEALING && (checkDefense || checkArmor)) {
		bool hasDefense = false;

		if (blockCount > 0) {
			--blockCount;
			hasDefense = true;
		}

		if (checkDefense && hasDefense && canUseDefense) {
			int32_t defense = getDefense();
			damage -= uniform_random(defense / 2, defense);
			if (damage <= 0) {
				damage = 0;
				blockType = BLOCK_DEFENSE;
				checkArmor = false;
			}
		}

		if (checkArmor) {
			int32_t armor = getArmor();
			if (armor > 3) {
				damage -= uniform_random(armor / 2, armor - (armor % 2 + 1));
			} else if (armor > 0) {
				--damage;
			}

			if (damage <= 0) {
				damage = 0;
				blockType = BLOCK_ARMOR;
			}
		}

		if (hasDefense && blockType != BLOCK_NONE) {
			onBlockHit();
		}
	}

	if (attacker) {
		if (Player* attackerPlayer = attacker->getPlayer()) {
			for (int32_t slot = CONST_SLOT_FIRST; slot <= CONST_SLOT_LAST; ++slot) {
				if (!attackerPlayer->isItemAbilityEnabled(static_cast<slots_t>(slot))) {
					continue;
				}

				Item* item = attackerPlayer->getInventoryItem(static_cast<slots_t>(slot));
				if (!item) {
					continue;
				}

				const uint16_t boostPercent = item->getBoostPercent(combatType);
				if (boostPercent != 0) {
					damage += std::round(damage * (boostPercent / 100.));
				}
			}
		}

		if (damage <= 0) {
			damage = 0;
			blockType = BLOCK_ARMOR;
		}

		if (combatType != COMBAT_HEALING) {
			attacker->onAttackedCreature(this);
			attacker->onAttackedCreatureBlockHit(blockType);
		}
	}

	if (combatType != COMBAT_HEALING) {
		onAttacked();
	}
	return blockType;
}

bool Creature::setAttackedCreature(Creature* creature)
{
	if (creature) {
		const Position& creaturePos = creature->getPosition();
		if (creaturePos.z != getPosition().z || !canSee(creaturePos)) {
			attackedCreature = nullptr;
			return false;
		}

		attackedCreature = creature;
		onAttackedCreature(attackedCreature);
		attackedCreature->onAttacked();
	} else {
		attackedCreature = nullptr;
	}

	for (Creature* summon : summons) {
		summon->setAttackedCreature(creature);
	}
	return true;
}

void Creature::getPathSearchParams(const Creature*, FindPathParams& fpp) const
{
	const Monster* monster = getMonster();
	if (monster && monster->getMaster()) {
		fpp.fullPathSearch = false;
		fpp.clearSight = false;
		fpp.maxSearchDist = 8;
		fpp.minTargetDist = 1;
		fpp.maxTargetDist = 2;
	} else if (monster) {
		fpp.fullPathSearch = false;
		fpp.clearSight = true;
		fpp.maxSearchDist = 10;
		fpp.minTargetDist = 1;
		fpp.maxTargetDist = 1;
	} else {
		fpp.fullPathSearch = !hasFollowPath;
		fpp.clearSight = true;
		fpp.maxSearchDist = 12;
		fpp.minTargetDist = 1;
		fpp.maxTargetDist = 1;
	}
}

void Creature::goToFollowCreature()
{
	if (isMovementBlocked()) {
		return;
	}

	if (followCreature) {
		FindPathParams fpp;
		getPathSearchParams(followCreature, fpp);

		Monster* monster = getMonster();
		if (monster && !monster->getMaster() && (monster->isFleeing() || fpp.maxTargetDist > 1)) {
			Direction dir = DIRECTION_NONE;

			if (monster->isFleeing()) {
				monster->getDistanceStep(followCreature->getPosition(), dir, true);
			} else { // maxTargetDist > 1
				if (!monster->getDistanceStep(followCreature->getPosition(), dir)) {
					// if we can't get anything then let the A* calculate
					listWalkDir.clear();
					if (getPathTo(followCreature->getPosition(), listWalkDir, fpp)) {
						hasFollowPath = true;
						startAutoWalk();
					} else {
						hasFollowPath = false;
					}
					return;
				}
			}

			if (dir != DIRECTION_NONE) {
				listWalkDir.clear();
				listWalkDir.push_back(dir);

				hasFollowPath = true;
				startAutoWalk();
			}
		} else {
			listWalkDir.clear();
			if (getPathTo(followCreature->getPosition(), listWalkDir, fpp)) {
				hasFollowPath = true;
				startAutoWalk();
			} else {
				hasFollowPath = false;
			}
		}
	}

	onFollowCreatureComplete(followCreature);
}

bool Creature::setFollowCreature(Creature* creature)
{
	if (creature) {
		if (followCreature == creature) {
			return true;
		}

		const Position& creaturePos = creature->getPosition();
		if (creaturePos.z != getPosition().z || !canSee(creaturePos)) {
			followCreature = nullptr;
			return false;
		}

		if (!listWalkDir.empty()) {
			listWalkDir.clear();
			onWalkAborted();
		}

		hasFollowPath = false;
		forceUpdateFollowPath = false;
		followCreature = creature;
		isUpdatingPath = true;
	} else {
		isUpdatingPath = false;
		followCreature = nullptr;
	}

	onFollowCreature(creature);
	return true;
}

double Creature::getDamageRatio(Creature* attacker) const
{
	uint32_t totalDamage = 0;
	uint32_t attackerDamage = 0;

	for (const auto& it : damageMap) {
		const CountBlock_t& cb = it.second;
		totalDamage += cb.total;
		if (it.first == attacker->getID()) {
			attackerDamage += cb.total;
		}
	}

	if (totalDamage == 0) {
		return 0;
	}

	return (static_cast<double>(attackerDamage) / totalDamage);
}

uint64_t Creature::getGainedExperience(Creature* attacker) const
{
	return std::floor(getDamageRatio(attacker) * getLostExperience());
}

void Creature::addDamagePoints(Creature* attacker, int32_t damagePoints)
{
	if (damagePoints <= 0) {
		return;
	}

	uint32_t attackerId = attacker->id;

	auto& cb = damageMap[attackerId];
	cb.ticks = OTSYS_TIME();
	cb.total += damagePoints;

	lastHitCreatureId = attackerId;
}

void Creature::onAddCondition(ConditionType_t type)
{
	if (type == CONDITION_PARALYZE && hasCondition(CONDITION_HASTE)) {
		removeCondition(CONDITION_HASTE);
	} else if (type == CONDITION_HASTE && hasCondition(CONDITION_PARALYZE)) {
		removeCondition(CONDITION_PARALYZE);
	}
}

void Creature::onAddCombatCondition(ConditionType_t)
{
	//
}

void Creature::onEndCondition(ConditionType_t)
{
	//
}

void Creature::onTickCondition(ConditionType_t type, bool& bRemove)
{
	const MagicField* field = getTile()->getFieldItem();
	if (!field) {
		return;
	}

	switch (type) {
		case CONDITION_FIRE:
			bRemove = (field->getCombatType() != COMBAT_FIREDAMAGE);
			break;
		case CONDITION_ENERGY:
			bRemove = (field->getCombatType() != COMBAT_ENERGYDAMAGE);
			break;
		case CONDITION_POISON:
			bRemove = (field->getCombatType() != COMBAT_EARTHDAMAGE);
			break;
		case CONDITION_FREEZING:
			bRemove = (field->getCombatType() != COMBAT_ICEDAMAGE);
			break;
		case CONDITION_DAZZLED:
			bRemove = (field->getCombatType() != COMBAT_HOLYDAMAGE);
			break;
		case CONDITION_CURSED:
			bRemove = (field->getCombatType() != COMBAT_DEATHDAMAGE);
			break;
		case CONDITION_DROWN:
			bRemove = (field->getCombatType() != COMBAT_DROWNDAMAGE);
			break;
		case CONDITION_BLEEDING:
			bRemove = (field->getCombatType() != COMBAT_PHYSICALDAMAGE);
			break;
		default:
			break;
	}
}

void Creature::onCombatRemoveCondition(Condition* condition) { removeCondition(condition); }

void Creature::onAttacked()
{
	//
}

void Creature::onAttackedCreatureDrainHealth(Creature* target, int32_t points)
{
	target->addDamagePoints(this, points);
}

bool Creature::onKilledCreature(Creature* target, bool)
{
	if (master) {
		master->onKilledCreature(target);
	}

	// scripting event - onKill
	const CreatureEventList& killEvents = getCreatureEvents(CREATURE_EVENT_KILL);
	for (CreatureEvent* killEvent : killEvents) {
		killEvent->executeOnKill(this, target);
	}
	return false;
}

void Creature::onGainExperience(uint64_t gainExp, Creature* target)
{
	if (gainExp == 0 || !master) {
		return;
	}

	gainExp /= 2;
	master->onGainExperience(gainExp, target);

	SpectatorVec spectators;
	g_game.map.getSpectators(spectators, position, false, true);
	if (spectators.empty()) {
		return;
	}

	TextMessage textMessage(MESSAGE_STATUS_DEFAULT,
	                        fmt::format("{:s} gained {:d} {:s}.", ucfirst(getNameDescription()), gainExp,
	                                    gainExp != 1 ? " experience points" : " experience point"));
	for (Creature* spectator : spectators) {
		assert(dynamic_cast<Player*>(spectator) != nullptr);
		static_cast<Player*>(spectator)->sendTextMessage(textMessage);
	}

	g_game.addAnimatedText(spectators, std::to_string(gainExp), position, TEXTCOLOR_WHITE);
}

bool Creature::setMaster(Creature* newMaster)
{
	if (!newMaster && !master) {
		return false;
	}

	if (newMaster) {
		incrementReferenceCounter();
		newMaster->summons.push_back(this);
	}

	Creature* oldMaster = master;
	master = newMaster;

	if (oldMaster) {
		auto summon = std::find(oldMaster->summons.begin(), oldMaster->summons.end(), this);
		if (summon != oldMaster->summons.end()) {
			oldMaster->summons.erase(summon);
			decrementReferenceCounter();
		}
	}
	return true;
}

bool Creature::addCondition(Condition* condition, bool force /* = false*/)
{
	if (condition == nullptr) {
		return false;
	}

	if (!force && condition->getType() == CONDITION_HASTE && hasCondition(CONDITION_PARALYZE)) {
		int64_t walkDelay = getWalkDelay();
		if (walkDelay > 0) {
			g_scheduler.addEvent(
			    createSchedulerTask(walkDelay, [=, id = getID()]() { g_game.forceAddCondition(id, condition); }));
			return false;
		}
	}

	Condition* prevCond = getCondition(condition->getType(), condition->getId(), condition->getSubId());
	if (prevCond) {
		prevCond->addCondition(this, condition);
		delete condition;
		return true;
	}

	if (condition->startCondition(this)) {
		conditions.push_back(condition);
		onAddCondition(condition->getType());
		return true;
	}

	delete condition;
	return false;
}

bool Creature::addCombatCondition(Condition* condition)
{
	// Caution: condition variable could be deleted after the call to addCondition
	ConditionType_t type = condition->getType();

	if (!addCondition(condition)) {
		return false;
	}

	onAddCombatCondition(type);
	return true;
}

void Creature::removeCondition(ConditionType_t type, bool force /* = false*/)
{
	auto it = conditions.begin(), end = conditions.end();
	while (it != end) {
		Condition* condition = *it;
		if (condition->getType() != type) {
			++it;
			continue;
		}

		if (!force && type == CONDITION_PARALYZE) {
			int64_t walkDelay = getWalkDelay();
			if (walkDelay > 0) {
				g_scheduler.addEvent(
				    createSchedulerTask(walkDelay, [=, id = getID()]() { g_game.forceRemoveCondition(id, type); }));
				return;
			}
		}

		it = conditions.erase(it);

		condition->endCondition(this);
		delete condition;

		onEndCondition(type);
	}
}

void Creature::removeCondition(ConditionType_t type, ConditionId_t conditionId, bool force /* = false*/)
{
	auto it = conditions.begin(), end = conditions.end();
	while (it != end) {
		Condition* condition = *it;
		if (condition->getType() != type || condition->getId() != conditionId) {
			++it;
			continue;
		}

		if (!force && type == CONDITION_PARALYZE) {
			int64_t walkDelay = getWalkDelay();
			if (walkDelay > 0) {
				g_scheduler.addEvent(
				    createSchedulerTask(walkDelay, [=, id = getID()]() { g_game.forceRemoveCondition(id, type); }));
				return;
			}
		}

		it = conditions.erase(it);

		condition->endCondition(this);
		delete condition;

		onEndCondition(type);
	}
}

void Creature::removeCombatCondition(ConditionType_t type)
{
	std::vector<Condition*> removeConditions;
	for (Condition* condition : conditions) {
		if (condition->getType() == type) {
			removeConditions.push_back(condition);
		}
	}

	for (Condition* condition : removeConditions) {
		onCombatRemoveCondition(condition);
	}
}

void Creature::removeCondition(Condition* condition, bool force /* = false*/)
{
	auto it = std::find(conditions.begin(), conditions.end(), condition);
	if (it == conditions.end()) {
		return;
	}

	if (!force && condition->getType() == CONDITION_PARALYZE) {
		int64_t walkDelay = getWalkDelay();
		if (walkDelay > 0) {
			g_scheduler.addEvent(createSchedulerTask(
			    walkDelay, [id = getID(), type = condition->getType()]() { g_game.forceRemoveCondition(id, type); }));
			return;
		}
	}

	conditions.erase(it);

	condition->endCondition(this);
	onEndCondition(condition->getType());
	delete condition;
}

Condition* Creature::getCondition(ConditionType_t type) const
{
	for (Condition* condition : conditions) {
		if (condition->getType() == type) {
			return condition;
		}
	}
	return nullptr;
}

Condition* Creature::getCondition(ConditionType_t type, ConditionId_t conditionId, uint32_t subId /* = 0*/) const
{
	for (Condition* condition : conditions) {
		if (condition->getType() == type && condition->getId() == conditionId && condition->getSubId() == subId) {
			return condition;
		}
	}
	return nullptr;
}

void Creature::executeConditions(uint32_t interval)
{
	ConditionList tempConditions{conditions};
	for (Condition* condition : tempConditions) {
		auto it = std::find(conditions.begin(), conditions.end(), condition);
		if (it == conditions.end()) {
			continue;
		}

		if (!condition->executeCondition(this, interval)) {
			it = std::find(conditions.begin(), conditions.end(), condition);
			if (it != conditions.end()) {
				conditions.erase(it);
				condition->endCondition(this);
				onEndCondition(condition->getType());
				delete condition;
			}
		}
	}
}

bool Creature::hasCondition(ConditionType_t type, uint32_t subId /* = 0*/) const
{
	if (isSuppress(type)) {
		return false;
	}

	int64_t timeNow = OTSYS_TIME();
	for (Condition* condition : conditions) {
		if (condition->getType() != type || condition->getSubId() != subId) {
			continue;
		}

		if (condition->getEndTime() >= timeNow || condition->getTicks() == -1) {
			return true;
		}
	}
	return false;
}

bool Creature::isImmune(CombatType_t type) const
{
	return hasBitSet(static_cast<uint32_t>(type), getDamageImmunities());
}

bool Creature::isImmune(ConditionType_t type) const
{
	return hasBitSet(static_cast<uint32_t>(type), getConditionImmunities());
}

bool Creature::isSuppress(ConditionType_t type) const
{
	return hasBitSet(static_cast<uint32_t>(type), getConditionSuppressions());
}

int64_t Creature::getStepDuration(Direction dir) const
{
	int64_t stepDuration = getStepDuration();
	if ((dir & DIRECTION_DIAGONAL_MASK) != 0) {
		stepDuration *= 3;
	}
	return stepDuration;
}

int64_t Creature::getStepDuration() const
{
	if (isRemoved()) {
        return 0;
    }

    uint32_t groundSpeed;
    int32_t stepSpeed = getStepSpeed();
    Item* ground = tile->getGround();
    if (ground) {
        groundSpeed = Item::items[ground->getID()].speed;
        if (groundSpeed == 0) {
            groundSpeed = 150;
        }
    } else {
        groundSpeed = 150;
    }

    double duration = (1000.0 * static_cast<double>(groundSpeed)) / static_cast<double>(stepSpeed);
    int64_t stepDuration = static_cast<int64_t>(std::ceil(duration / 50.0) * 50.0);
    
    if (stepDuration < 50) {
        stepDuration = 50;
    }

    const Monster* monster = getMonster();
    if (monster && monster->isTargetNearby() && !monster->isFleeing() && !monster->getMaster()) {
        stepDuration *= 2;
    }

    return stepDuration;
}

int64_t Creature::getEventStepTicks(bool onlyDelay) const
{
	int64_t ret = getWalkDelay();
	if (ret <= 0) {
		int64_t stepDuration = getStepDuration();
		if (onlyDelay && stepDuration > 0) {
			ret = 1;
		} else {
			ret = stepDuration * lastStepCost;
		}
	}
	return ret;
}

LightInfo Creature::getCreatureLight() const { return internalLight; }

void Creature::setCreatureLight(LightInfo lightInfo) { internalLight = std::move(lightInfo); }

void Creature::setNormalCreatureLight() { internalLight = {}; }

bool Creature::registerCreatureEvent(std::string_view name)
{
	CreatureEvent* event = g_creatureEvents->getEventByName(name);
	if (!event) {
		return false;
	}

	CreatureEventType_t type = event->getEventType();
	if (hasEventRegistered(type)) {
		for (CreatureEvent* creatureEvent : eventsList) {
			if (creatureEvent == event) {
				return false;
			}
		}
	} else {
		scriptEventsBitField |= static_cast<uint32_t>(1) << type;
	}

	eventsList.push_back(event);
	return true;
}

bool Creature::unregisterCreatureEvent(std::string_view name)
{
	CreatureEvent* event = g_creatureEvents->getEventByName(name);
	if (!event) {
		return false;
	}

	CreatureEventType_t type = event->getEventType();
	if (!hasEventRegistered(type)) {
		return false;
	}

	bool resetTypeBit = true;

	auto it = eventsList.begin(), end = eventsList.end();
	while (it != end) {
		CreatureEvent* curEvent = *it;
		if (curEvent == event) {
			it = eventsList.erase(it);
			continue;
		}

		if (curEvent->getEventType() == type) {
			resetTypeBit = false;
		}
		++it;
	}

	if (resetTypeBit) {
		scriptEventsBitField &= ~(static_cast<uint32_t>(1) << type);
	}
	return true;
}

CreatureEventList Creature::getCreatureEvents(CreatureEventType_t type) const
{
	CreatureEventList tmpEventList;

	if (!hasEventRegistered(type)) {
		return tmpEventList;
	}

	for (CreatureEvent* creatureEvent : eventsList) {
		if (!creatureEvent->isLoaded()) {
			continue;
		}

		if (creatureEvent->getEventType() == type) {
			tmpEventList.push_back(creatureEvent);
		}
	}

	return tmpEventList;
}

bool FrozenPathingConditionCall::isInRange(const Position& startPos, const Position& testPos,
                                           const FindPathParams& fpp) const
{
	if (fpp.fullPathSearch) {
		if (testPos.x > targetPos.x + fpp.maxTargetDist) {
			return false;
		}

		if (testPos.x < targetPos.x - fpp.maxTargetDist) {
			return false;
		}

		if (testPos.y > targetPos.y + fpp.maxTargetDist) {
			return false;
		}

		if (testPos.y < targetPos.y - fpp.maxTargetDist) {
			return false;
		}
	} else {
		int32_t dx = startPos.getOffsetX(targetPos);

		int32_t dxMax = (dx >= 0 ? fpp.maxTargetDist : 0);
		if (testPos.x > targetPos.x + dxMax) {
			return false;
		}

		int32_t dxMin = (dx <= 0 ? fpp.maxTargetDist : 0);
		if (testPos.x < targetPos.x - dxMin) {
			return false;
		}

		int32_t dy = startPos.getOffsetY(targetPos);

		int32_t dyMax = (dy >= 0 ? fpp.maxTargetDist : 0);
		if (testPos.y > targetPos.y + dyMax) {
			return false;
		}

		int32_t dyMin = (dy <= 0 ? fpp.maxTargetDist : 0);
		if (testPos.y < targetPos.y - dyMin) {
			return false;
		}
	}
	return true;
}

bool FrozenPathingConditionCall::operator()(const Position& startPos, const Position& testPos,
                                            const FindPathParams& fpp, int32_t& bestMatchDist) const
{
	if (!isInRange(startPos, testPos, fpp)) {
		return false;
	}

	if (fpp.clearSight && !g_game.isSightClear(testPos, targetPos, true)) {
		return false;
	}

	int32_t testDist = std::max(targetPos.getDistanceX(testPos), targetPos.getDistanceY(testPos));
	if (fpp.maxTargetDist == 1) {
		if (testDist < fpp.minTargetDist || testDist > fpp.maxTargetDist) {
			return false;
		}

		return true;
	} else if (testDist <= fpp.maxTargetDist) {
		if (testDist < fpp.minTargetDist) {
			return false;
		}

		if (testDist == fpp.maxTargetDist) {
			bestMatchDist = 0;
			return true;
		} else if (testDist > bestMatchDist) {
			// not quite what we want, but the best so far
			bestMatchDist = testDist;
			return true;
		}
	}
	return false;
}

bool Creature::isInvisible() const
{
	return std::find_if(conditions.begin(), conditions.end(), [](const Condition* condition) {
		       return condition->getType() == CONDITION_INVISIBLE;
	       }) != conditions.end();
}

bool Creature::getPathTo(const Position& targetPos, std::vector<Direction>& dirList, const FindPathParams& fpp) const
{
	return g_game.map.getPathMatching(*this, dirList, FrozenPathingConditionCall(targetPos), fpp);
}

bool Creature::getPathTo(const Position& targetPos, std::vector<Direction>& dirList, int32_t minTargetDist,
                         int32_t maxTargetDist, bool fullPathSearch /*= true*/, bool clearSight /*= true*/,
                         int32_t maxSearchDist /*= 0*/) const
{
	FindPathParams fpp;
	fpp.fullPathSearch = fullPathSearch;
	fpp.maxSearchDist = maxSearchDist;
	fpp.clearSight = clearSight;
	fpp.minTargetDist = minTargetDist;
	fpp.maxTargetDist = maxTargetDist;
	return getPathTo(targetPos, dirList, fpp);
}

void Creature::setStorageValue(uint32_t key, std::optional<int64_t> value, bool isSpawn)
{
	auto oldValue = getStorageValue(key);
	if (value) {
		storageMap.insert_or_assign(key, value.value());
	} else {
		storageMap.erase(key);
	}
	g_events->eventCreatureOnUpdateStorage(this, key, oldValue, value, isSpawn);
}

std::optional<int64_t> Creature::getStorageValue(uint32_t key) const
{
	auto it = storageMap.find(key);
	if (it == storageMap.end()) {
		return std::nullopt;
	}
	return std::make_optional(it->second);
}
