// Copyright 2023 The Forgotten Server Authors. All rights reserved.
// Use of this source code is governed by the GPL-2.0 License that can be found in the LICENSE file.

#ifndef FS_GAME_H
#define FS_GAME_H

#include "account.h"
#include "combat.h"
#include "container.h"
#include "groups.h"
#include "item.h"
#include "map.h"
#include "mounts.h"
#include "npc.h"
#include "player.h"
#include "position.h"
#include "raids.h"
#include "wildcardtree.h"

class ServiceManager;
class Creature;
class Monster;
class Npc;
class CombatInfo;

enum stackPosType_t
{
	STACKPOS_MOVE,
	STACKPOS_LOOK,
	STACKPOS_TOPDOWN_ITEM,
	STACKPOS_USEITEM,
	STACKPOS_USETARGET,
};

enum WorldType_t
{
	WORLD_TYPE_NO_PVP = 1,
	WORLD_TYPE_PVP = 2,
	WORLD_TYPE_PVP_ENFORCED = 3,
};

enum GameState_t
{
	GAME_STATE_STARTUP,
	GAME_STATE_INIT,
	GAME_STATE_NORMAL,
	GAME_STATE_CLOSED,
	GAME_STATE_SHUTDOWN,
	GAME_STATE_CLOSING,
	GAME_STATE_MAINTAIN,
};

inline constexpr int32_t PLAYER_NAME_LENGTH = 25;

inline constexpr int32_t EVENT_LIGHTINTERVAL = 10000;
inline constexpr int32_t EVENT_WORLDTIMEINTERVAL = 2500;
inline constexpr int32_t EVENT_DECAYINTERVAL = 250;
inline constexpr int32_t EVENT_DECAY_BUCKETS = 4;

inline constexpr int32_t MOVE_CREATURE_INTERVAL = 1000;
inline constexpr int32_t RANGE_MOVE_CREATURE_INTERVAL = 1500;
inline constexpr int32_t RANGE_MOVE_ITEM_INTERVAL = 400;
inline constexpr int32_t RANGE_USE_ITEM_INTERVAL = 400;
inline constexpr int32_t RANGE_USE_ITEM_EX_INTERVAL = 400;
inline constexpr int32_t RANGE_USE_WITH_CREATURE_INTERVAL = 400;
inline constexpr int32_t RANGE_ROTATE_ITEM_INTERVAL = 400;
inline constexpr int32_t RANGE_BROWSE_FIELD_INTERVAL = 400;
inline constexpr int32_t RANGE_WRAP_ITEM_INTERVAL = 400;
inline constexpr int32_t RANGE_REQUEST_TRADE_INTERVAL = 400;

/**
 * Main Game class.
 * This class is responsible to control everything that happens
 */

class Game
{
public:
	Game() = default;
	~Game();

	// non-copyable
	Game(const Game&) = delete;
	Game& operator=(const Game&) = delete;

	void start(ServiceManager* manager);

	void forceAddCondition(uint32_t creatureId, Condition* condition);
	void forceRemoveCondition(uint32_t creatureId, ConditionType_t type);

	bool loadMainMap(std::string_view filename);
	void loadMap(const std::string& path);

	/**
	 * Get the map size - info purpose only
	 * \param width width of the map
	 * \param height height of the map
	 */
	void getMapDimensions(uint32_t& width, uint32_t& height) const
	{
		width = map.width;
		height = map.height;
	}

	void setWorldType(WorldType_t type);
	WorldType_t getWorldType() const { return worldType; }

	Cylinder* internalGetCylinder(Player* player, const Position& pos) const;
	Thing* internalGetThing(Player* player, const Position& pos, int32_t index, uint32_t spriteId,
	                        stackPosType_t type) const;
	static void internalGetPosition(Item* item, Position& pos, uint8_t& stackpos);

	static std::string getTradeErrorDescription(ReturnValue ret, Item* item);

	// Struct to store damage info for a rewardboss
	struct PlayerScoreInfo {
		int32_t damageDone = 0;   // Damage dealt by the player to the boss
		int32_t damageTaken = 0;  // Damage taken by the player from the boss
		int32_t healingDone = 0;  // Healing done to players near boss
	};
	// Struct to store contribution info for a rewardboss
	struct RewardBossContributionInfo {
		std::unordered_map<uint32_t, PlayerScoreInfo> playerScoreTable;  // Map of player GUIDs to PlayerScoreInfo
	};
	// Map to track the contributions of players to different rewardbosses
	std::unordered_map<uint32_t, RewardBossContributionInfo> rewardBossTracking;
	void resetDamageTracking(uint32_t monsterId);  // Function to reset damage tracking for a specific monster

	/**
	 * Returns a creature based on the unique creature identifier
	 * \param id is the unique creature id to get a creature pointer to
	 * \returns A Creature pointer to the creature
	 */
	Creature* getCreatureByID(uint32_t id);

	/**
	 * Returns a monster based on the unique creature identifier
	 * \param id is the unique monster id to get a monster pointer to
	 * \returns A Monster pointer to the monster
	 */
	Monster* getMonsterByID(uint32_t id);

	/**
	 * Returns an npc based on the unique creature identifier
	 * \param id is the unique npc id to get a npc pointer to
	 * \returns A NPC pointer to the npc
	 */
	Npc* getNpcByID(uint32_t id);

	/**
	 * Returns a player based on the unique creature identifier
	 * \param id is the unique player id to get a player pointer to
	 * \returns A Pointer to the player
	 */
	Player* getPlayerByID(uint32_t id);

	/**
	 * Returns a creature based on a string name identifier
	 * \param s is the name identifier
	 * \returns A Pointer to the creature
	 */
	Creature* getCreatureByName(const std::string& s);

	/**
	 * Returns a npc based on a string name identifier
	 * \param s is the name identifier
	 * \returns A Pointer to the npc
	 */
	Npc* getNpcByName(std::string_view npcName);

	/**
	 * Returns a player based on a string name identifier
	 * \param s is the name identifier
	 * \returns A Pointer to the player
	 */
	Player* getPlayerByName(std::string_view s);

	/**
	 * Returns a player based on guid
	 * \returns A Pointer to the player
	 */
	Player* getPlayerByGUID(const uint32_t& guid);

	/**
	 * Returns a player based on a string name identifier, with support for the "~" wildcard.
	 * \param s is the name identifier, with or without wildcard
	 * \param player will point to the found player (if any)
	 * \return "RETURNVALUE_PLAYERWITHTHISNAMEISNOTONLINE" or "RETURNVALUE_NAMEISTOOAMBIGIOUS"
	 */
	ReturnValue getPlayerByNameWildcard(std::string_view s, Player*& player);

	/**
	 * Returns a player based on an account number identifier
	 * \param acc is the account identifier
	 * \returns A Pointer to the player
	 */
	Player* getPlayerByAccount(uint32_t acc);

	/**
	 * Place Creature on the map without sending out events to the surrounding.
	 * \param creature Creature to place on the map
	 * \param pos The position to place the creature
	 * \param extendedPos If true, the creature will in first-hand be placed 2 tiles away
	 * \param forced If true, placing the creature will not fail because of obstacles (creatures/items)
	 */
	bool internalPlaceCreature(Creature* creature, const Position& pos, bool extendedPos = false, bool forced = false);

	/**
	 * Place Creature on the map.
	 * \param creature Creature to place on the map
	 * \param pos The position to place the creature
	 * \param extendedPos If true, the creature will in first-hand be placed 2 tiles away
	 * \param force If true, placing the creature will not fail because of obstacles (creatures/items)
	 */
	bool placeCreature(Creature* creature, const Position& pos, bool extendedPos = false, bool forced = false,
	                   MagicEffectClasses magicEffect = CONST_ME_TELEPORT);

	/**
	 * Remove Creature from the map.
	 * Removes the Creature from the map
	 * \param c Creature to remove
	 */
	bool removeCreature(Creature* creature, bool isLogout = true);
	void executeDeath(uint32_t creatureId);

	void addCreatureCheck(Creature* creature);
	static void removeCreatureCheck(Creature* creature);

	size_t getPlayersOnline() const { return players.size(); }
	size_t getMonstersOnline() const { return monsters.size(); }
	size_t getNpcsOnline() const { return npcs.size(); }
	uint32_t getPlayersRecord() const { return playersRecord; }

	LightInfo getWorldLightInfo() const { return {lightLevel, lightColor}; }
	void setWorldLightInfo(LightInfo lightInfo)
	{
		lightLevel = lightInfo.level;
		lightColor = lightInfo.color;
		for (const auto& it : players) {
			it.second->sendWorldLight(lightInfo);
		}
	}
	void updateWorldLightLevel();

	ReturnValue internalMoveCreature(Creature* creature, Direction direction, uint32_t flags = 0);
	ReturnValue internalMoveCreature(Creature& creature, Tile& toTile, uint32_t flags = 0);

	ReturnValue internalMoveItem(Cylinder* fromCylinder, Cylinder* toCylinder, int32_t index, Item* item,
	                             uint32_t count, Item** _moveItem, uint32_t flags = 0, Creature* actor = nullptr,
	                             Item* tradeItem = nullptr, const Position* fromPos = nullptr,
	                             const Position* toPos = nullptr);

	ReturnValue internalAddItem(Cylinder* toCylinder, Item* item, int32_t index = INDEX_WHEREEVER, uint32_t flags = 0,
	                            bool test = false);
	ReturnValue internalAddItem(Cylinder* toCylinder, Item* item, int32_t index, uint32_t flags, bool test,
	                            uint32_t& remainderCount);
	ReturnValue internalRemoveItem(Item* item, int32_t count = -1, bool test = false, uint32_t flags = 0);

	ReturnValue internalPlayerAddItem(Player* player, Item* item, bool dropOnMap = true,
	                                  slots_t slot = CONST_SLOT_WHEREEVER);

	/**
	 * Find an item of a certain type
	 * \param cylinder to search the item
	 * \param itemId is the item to remove
	 * \param subType is the extra type an item can have such as charges/fluidtype, default is -1
	 * meaning it's not used
	 * \param depthSearch if true it will check child containers aswell
	 * \returns A pointer to the item to an item and nullptr if not found
	 */
	Item* findItemOfType(Cylinder* cylinder, uint16_t itemId, bool depthSearch = true, int32_t subType = -1) const;

	/**
	 * Remove/Add item(s) with a monetary value
	 * \param cylinder to remove the money from
	 * \param money is the amount to remove
	 * \param flags optional flags to modify the default behavior
	 * \returns true if the removal was successful
	 */
	bool removeMoney(Cylinder* cylinder, uint64_t money, uint32_t flags = 0);

	/**
	 * Add item(s) with monetary value
	 * \param cylinder which will receive money
	 * \param money the amount to give
	 * \param flags optional flags to modify default behavior
	 */
	void addMoney(Cylinder* cylinder, uint64_t money, uint32_t flags = 0);

	/**
	 * Transform one item to another type/count
	 * \param item is the item to transform
	 * \param newId is the new itemid
	 * \param newCount is the new count value, use default value (-1) to not change it
	 * \returns true if the transformation was successful
	 */
	Item* transformItem(Item* item, uint16_t newId, int32_t newCount = -1);

	/**
	 * Teleports an object to another position
	 * \param thing is the object to teleport
	 * \param newPos is the new position
	 * \param pushMove force teleport if false
	 * \param flags optional flags to modify default behavior
	 * \returns true if the teleportation was successful
	 */
	ReturnValue internalTeleport(Thing* thing, const Position& newPos, bool pushMove = true, uint32_t flags = 0);

	/**
	 * Turn a creature to a different direction.
	 * \param creature Creature to change the direction
	 * \param dir Direction to turn to
	 */
	bool internalCreatureTurn(Creature* creature, Direction dir);

	/**
	 * Creature wants to say something.
	 * \param creature Creature pointer
	 * \param type Type of message
	 * \param text The text to say
	 */
	bool internalCreatureSay(Creature* creature, SpeakClasses type, std::string_view text, bool ghostMode,
	                         SpectatorVec* spectatorsPtr = nullptr, const Position* pos = nullptr, bool echo = false);

	void loadPlayersRecord();
	void checkPlayersRecord();

	void sendGuildMotd(uint32_t playerId);
	void kickPlayer(uint32_t playerId, bool displayEffect);
	void playerReportBug(uint32_t playerId, std::string_view message);
	void playerReportRuleViolation(uint32_t playerId, std::string_view targetName, uint8_t reportType,
	                               uint8_t reportReason, std::string_view comment, std::string_view translation);

	void playerAnswerModalWindow(uint32_t playerId, uint32_t modalWindowId, uint8_t button, uint8_t choice);

	bool internalStartTrade(Player* player, Player* tradePartner, Item* tradeItem);
	void internalCloseTrade(Player* player, bool sendCancel = true);
	bool playerBroadcastMessage(Player* player, std::string_view text) const;
	void broadcastMessage(std::string_view text, MessageClasses type) const;

	// Implementation of player invoked events
	void playerMoveThing(uint32_t playerId, const Position& fromPos, uint16_t spriteId, uint8_t fromStackPos,
	                     const Position& toPos, uint8_t count);
	void playerMoveCreatureByID(uint32_t playerId, uint32_t movingCreatureId, const Position& movingCreatureOrigPos,
	                            const Position& toPos);
	void playerMoveCreature(Player* player, Creature* movingCreature, const Position& movingCreatureOrigPos,
	                        Tile* toTile);
	void playerMoveItemByPlayerID(uint32_t playerId, const Position& fromPos, uint16_t spriteId, uint8_t fromStackPos,
	                              const Position& toPos, uint8_t count);
	void playerMoveItem(Player* player, const Position& fromPos, uint16_t spriteId, uint8_t fromStackPos,
	                    const Position& toPos, uint8_t count, Item* item, Cylinder* toCylinder);
	void playerMove(uint32_t playerId, Direction direction);
	void playerCancelMove(uint32_t playerId);
	void playerCreatePrivateChannel(uint32_t playerId);
	void playerChannelInvite(uint32_t playerId, std::string_view name);
	void playerChannelExclude(uint32_t playerId, std::string_view name);
	void playerRequestChannels(uint32_t playerId);
	void playerOpenChannel(uint32_t playerId, uint16_t channelId);
	void playerCloseChannel(uint32_t playerId, uint16_t channelId);
	void playerOpenPrivateChannel(uint32_t playerId, std::string receiver);
	void playerCloseNpcChannel(uint32_t playerId);
	void playerReceivePing(uint32_t playerId);
	void playerAutoWalk(uint32_t playerId, const std::vector<Direction>& listDir);
	void playerStopAutoWalk(uint32_t playerId);
	void playerUseItemEx(uint32_t playerId, const Position& fromPos, uint8_t fromStackPos, uint16_t fromSpriteId,
	                     const Position& toPos, uint8_t toStackPos, uint16_t toSpriteId);
	void playerUseItem(uint32_t playerId, const Position& pos, uint8_t stackPos, uint8_t index, uint16_t spriteId);
	void playerUseWithCreature(uint32_t playerId, const Position& fromPos, uint8_t fromStackPos, uint32_t creatureId,
	                           uint16_t spriteId);
	void playerCloseContainer(uint32_t playerId, uint8_t cid);
	void playerMoveUpContainer(uint32_t playerId, uint8_t cid);
	void playerUpdateContainer(uint32_t playerId, uint8_t cid);
	void playerRotateItem(uint32_t playerId, const Position& pos, uint8_t stackPos, const uint16_t spriteId);
	void playerWriteItem(uint32_t playerId, uint32_t windowTextId, std::string_view text);
	void playerUpdateHouseWindow(uint32_t playerId, uint8_t listId, uint32_t windowTextId, std::string_view text);
	void playerRequestTrade(uint32_t playerId, const Position& pos, uint8_t stackPos, uint32_t tradePlayerId,
	                        uint16_t spriteId);
	void playerAcceptTrade(uint32_t playerId);
	void playerLookInTrade(uint32_t playerId, bool lookAtCounterOffer, uint8_t index);
	void playerPurchaseItem(uint32_t playerId, uint16_t spriteId, uint8_t count, uint8_t amount, bool ignoreCap = false,
	                        bool inBackpacks = false);
	void playerSellItem(uint32_t playerId, uint16_t spriteId, uint8_t count, uint8_t amount,
	                    bool ignoreEquipped = false);
	void playerCloseShop(uint32_t playerId);
	void playerLookInShop(uint32_t playerId, uint16_t spriteId, uint8_t count);
	void playerCloseTrade(uint32_t playerId);
	void playerSetAttackedCreature(uint32_t playerId, uint32_t creatureId);
	void playerFollowCreature(uint32_t playerId, uint32_t creatureId);
	void playerCancelAttackAndFollow(uint32_t playerId);
	void playerSetFightModes(uint32_t playerId, fightMode_t fightMode, bool chaseMode, bool secureMode);
	void playerLookAt(uint32_t playerId, const Position& pos, uint8_t stackPos);
	void playerLookInBattleList(uint32_t playerId, uint32_t creatureId);
	void playerRequestAddVip(uint32_t playerId, std::string_view name);
	void playerRequestRemoveVip(uint32_t playerId, uint32_t guid);
	void playerTurn(uint32_t playerId, Direction dir);
	void playerRequestOutfit(uint32_t playerId);
	void playerSay(uint32_t playerId, uint16_t channelId, SpeakClasses type, std::string_view receiver,
	               std::string_view text);
	void playerChangeOutfit(uint32_t playerId, Outfit_t outfit, bool randomizeMount = false);
	void playerInviteToParty(uint32_t playerId, uint32_t invitedId);
	void playerJoinParty(uint32_t playerId, uint32_t leaderId);
	void playerRevokePartyInvitation(uint32_t playerId, uint32_t invitedId);
	void playerPassPartyLeadership(uint32_t playerId, uint32_t newLeaderId);
	void playerLeaveParty(uint32_t playerId);
	void playerEnableSharedPartyExperience(uint32_t playerId, bool sharedExpActive);

	void parsePlayerExtendedOpcode(uint32_t playerId, uint8_t opcode, std::string_view buffer);
	void parsePlayerNetworkMessage(uint32_t playerId, uint8_t recvByte, NetworkMessage* msg);

	void cleanup();
	void shutdown();
	void ReleaseCreature(Creature* creature);
	void ReleaseItem(Item* item);

	bool canThrowObjectTo(const Position& fromPos, const Position& toPos, bool checkLineOfSight = true,
	                      bool sameFloor = false, int32_t rangex = Map::maxClientViewportX,
	                      int32_t rangey = Map::maxClientViewportY) const;
	bool isSightClear(const Position& fromPos, const Position& toPos, bool sameFloor = false) const;

	Position getClosestFreeTile(Creature* creature, const Position& nextPos, bool extended = false);

	void changeSpeed(Creature* creature, int32_t varSpeedDelta);
	void internalCreatureChangeOutfit(Creature* creature, const Outfit_t& outfit);
	void internalCreatureChangeVisible(Creature* creature, bool visible);
	void changeLight(const Creature* creature);
	void updateCreatureSkull(const Creature* creature);
	void updatePlayerShield(Player* player);
	void updateCreatureWalkthrough(const Creature* creature);
	void updateKnownCreature(const Creature* creature);

	GameState_t getGameState() const;
	void setGameState(GameState_t newState);
	void saveGameState();

	// Events
	void checkCreatureWalk(uint32_t creatureId);
	void updateCreatureWalk(uint32_t creatureId);
	void checkCreatureAttack(uint32_t creatureId);
	void checkCreatures(size_t index);

	bool combatBlockHit(CombatDamage& damage, Creature* attacker, Creature* target, bool checkDefense, bool checkArmor,
	                    bool field, bool ignoreResistances = false);

	void combatGetTypeInfo(CombatType_t combatType, Creature* target, TextColor_t& color, uint8_t& effect);

	bool combatChangeHealth(Creature* attacker, Creature* target, CombatDamage& damage);
	bool combatChangeMana(Creature* attacker, Creature* target, CombatDamage& damage);

	// animation help functions
	void addCreatureHealth(const Creature* target);
	static void addCreatureHealth(const SpectatorVec& spectators, const Creature* target);
	void addAnimatedText(std::string_view message, const Position& pos, TextColor_t color);
	static void addAnimatedText(const SpectatorVec& list, std::string_view message, const Position& pos,
	                            TextColor_t color);
	void addMagicEffect(const Position& pos, uint8_t effect);
	static void addMagicEffect(const SpectatorVec& spectators, const Position& pos, uint8_t effect);
	void addDistanceEffect(const Position& fromPos, const Position& toPos, uint8_t effect);
	static void addDistanceEffect(const SpectatorVec& spectators, const Position& fromPos, const Position& toPos,
	                              uint8_t effect);

	void setAccountStorageValue(const uint32_t accountId, const uint32_t key, const int32_t value);
	int32_t getAccountStorageValue(const uint32_t accountId, const uint32_t key) const;
	void loadAccountStorageValues();
	bool saveAccountStorageValues() const;

	void startDecay(Item* item);

	void loadMotdNum();
	int16_t getWorldTime() { return worldTime; }
	void updateWorldTime();
	void checkLight();
	void saveMotdNum() const;
	std::string_view getMotdHash() const { return motdHash; }
	uint32_t getMotdNum() const { return motdNum; }
	void incrementMotdNum() { motdNum++; }

	const std::unordered_map<uint32_t, Player*>& getPlayers() const { return players; }
	const std::map<uint32_t, Npc*>& getNpcs() const { return npcs; }

	void addPlayer(Player* player);
	void removePlayer(Player* player);

	void addNpc(Npc* npc);
	void removeNpc(Npc* npc);

	void addMonster(Monster* monster);
	void removeMonster(Monster* monster);

	Guild* getGuild(uint32_t id) const;
	void addGuild(Guild* guild);
	void removeGuild(uint32_t guildId);

	void internalRemoveItems(std::vector<Item*> itemList, uint32_t amount, bool stackable);

	BedItem* getBedBySleeper(uint32_t guid) const;
	void setBedSleeper(BedItem* bed, uint32_t guid);
	void removeBedSleeper(uint32_t guid);

	Item* getUniqueItem(uint16_t uniqueId);
	bool addUniqueItem(uint16_t uniqueId, Item* item);
	void removeUniqueItem(uint16_t uniqueId);

	bool reload(ReloadTypes_t reloadType);

	Groups groups;
	Map map;
	Raids raids;
	Mounts mounts;

	std::forward_list<Item*> toDecayItems;

	std::unordered_set<Tile*> getTilesToClean() const { return tilesToClean; }
	void addTileToClean(Tile* tile) { tilesToClean.emplace(tile); }
	void removeTileToClean(Tile* tile) { tilesToClean.erase(tile); }
	void clearTilesToClean() { tilesToClean.clear(); }

	void loadGameStorageValues();
	bool saveGameStorageValues() const;

	void setStorageValue(uint32_t key, std::optional<int64_t> value);
	std::optional<int64_t> getStorageValue(uint32_t key) const;
	decltype(auto) getStorageMap() const { return storageMap; }

private:
	std::map<uint32_t, int64_t> storageMap;

	bool playerSaySpell(Player* player, SpeakClasses type, std::string_view text);
	void playerWhisper(Player* player, std::string_view text);
	bool playerYell(Player* player, std::string_view text);
	bool playerSpeakTo(Player* player, SpeakClasses type, std::string_view receiver, std::string_view text);
	void playerSpeakToNpc(Player* player, std::string_view text);

	void checkDecay();
	void internalDecayItem(Item* item);

	std::unordered_map<uint32_t, Player*> players;
	std::unordered_map<std::string, Player*> mappedPlayerNames;
	std::unordered_map<uint32_t, Player*> mappedPlayerGuids;
	std::unordered_map<uint32_t, Guild*> guilds;
	std::unordered_map<uint16_t, Item*> uniqueItems;
	std::map<uint32_t, uint32_t> stages;
	std::unordered_map<uint32_t, std::unordered_map<uint32_t, int32_t>> accountStorageMap;

	std::list<Item*> decayItems[EVENT_DECAY_BUCKETS];
	std::list<Creature*> checkCreatureLists[EVENT_CREATURECOUNT];

	std::vector<Creature*> ToReleaseCreatures;
	std::vector<Item*> ToReleaseItems;

	size_t lastBucket = 0;

	WildcardTreeNode wildcardTree{false};

	std::map<uint32_t, Npc*> npcs;
	std::map<uint32_t, Monster*> monsters;

	// list of items that are in trading state, mapped to the player
	std::map<Item*, uint32_t> tradeItems;

	std::map<uint32_t, BedItem*> bedSleepersMap;

	std::unordered_set<Tile*> tilesToClean;

	static constexpr uint8_t LIGHT_DAY = 250;
	static constexpr uint8_t LIGHT_NIGHT = 40;
	// 1h realtime   = 1day worldtime
	// 2.5s realtime = 1min worldtime
	// worldTime is calculated in minutes
	static constexpr int16_t GAME_SUNRISE = 360;
	static constexpr int16_t GAME_DAYTIME = 480;
	static constexpr int16_t GAME_SUNSET = 1080;
	static constexpr int16_t GAME_NIGHTTIME = 1200;
	static constexpr float LIGHT_CHANGE_SUNRISE =
	    static_cast<int>(float(float(LIGHT_DAY - LIGHT_NIGHT) / float(GAME_DAYTIME - GAME_SUNRISE)) * 100) / 100.0f;
	static constexpr float LIGHT_CHANGE_SUNSET =
	    static_cast<int>(float(float(LIGHT_DAY - LIGHT_NIGHT) / float(GAME_NIGHTTIME - GAME_SUNSET)) * 100) / 100.0f;

	uint8_t lightLevel = LIGHT_DAY;
	uint8_t lightColor = 215;
	int16_t worldTime = 0;

	GameState_t gameState = GAME_STATE_NORMAL;
	WorldType_t worldType = WORLD_TYPE_PVP;

	ServiceManager* serviceManager = nullptr;

	void updatePlayersRecord() const;
	uint32_t playersRecord = 0;

	std::string motdHash;
	uint32_t motdNum = 0;

	uint32_t lastStageLevel = 0;
	bool stagesEnabled = false;
	bool useLastStageLevel = false;
};

#endif
