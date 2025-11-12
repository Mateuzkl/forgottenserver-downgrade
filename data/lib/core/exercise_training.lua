ExerciseWeaponsTable = {
	-- KNIGHT
	[31208] = { skill = SKILL_SWORD, allowFarUse = true },
	[31209] = { skill = SKILL_AXE, allowFarUse = true },
	[31210] = { skill = SKILL_CLUB, allowFarUse = true },
	[37941] = { skill = SKILL_SWORD, allowFarUse = true },
	[37942] = { skill = SKILL_AXE, allowFarUse = true },
	[37943] = { skill = SKILL_CLUB, allowFarUse = true },
	-- PALADIN
	[31211] = { skill = SKILL_DISTANCE, effect = CONST_ANI_SIMPLEARROW, allowFarUse = true },
	[37944] = { skill = SKILL_DISTANCE, effect = CONST_ANI_SIMPLEARROW, allowFarUse = true },
	-- DRUID
	[31212] = { skill = SKILL_MAGLEVEL, effect = CONST_ANI_SMALLICE, allowFarUse = true },
	[37945] = { skill = SKILL_MAGLEVEL, effect = CONST_ANI_SMALLICE, allowFarUse = true },
	-- SORCERER
	[31213] = { skill = SKILL_MAGLEVEL, effect = CONST_ANI_FIRE, allowFarUse = true },
	[37946] = { skill = SKILL_MAGLEVEL, effect = CONST_ANI_FIRE, allowFarUse = true },
	-- KNIGHT (Free)
	[31196] = { skill = SKILL_SWORD, allowFarUse = true },
	[31197] = { skill = SKILL_AXE, allowFarUse = true },
	[31198] = { skill = SKILL_CLUB, allowFarUse = true },
	-- PALADIN (Free)
	[31199] = { skill = SKILL_DISTANCE, effect = CONST_ANI_SIMPLEARROW, allowFarUse = true },
	-- DRUID (Free)
	[31200] = { skill = SKILL_MAGLEVEL, effect = CONST_ANI_SMALLICE, allowFarUse = true },
	-- SORCERER (Free)
	[31201] = { skill = SKILL_MAGLEVEL, effect = CONST_ANI_FIRE, allowFarUse = true }
}

FreeDummies = {31214, 31215, 31216, 31217, 31218, 31219, 31220, 31221}
HouseDummies = {31215, 31216, 31217, 31218, 31219, 31220}
MaxAllowedOnADummy = configManager.getNumber(configKeys.MAX_ALLOWED_ON_A_DUMMY)

local magicLevelRate = configManager.getNumber(configKeys.RATE_MAGIC)
local skillLevelRate = configManager.getNumber(configKeys.RATE_SKILL)

function LeaveTraining(playerId)
	if onExerciseTraining[playerId] then
		stopEvent(onExerciseTraining[playerId].event)
		onExerciseTraining[playerId] = nil
	end

	local player = Player(playerId)
	return
end

function ExerciseEvent(playerId, tilePosition, weaponId, dummyId)
	local player = Player(playerId)
	if not player then
		return LeaveTraining(playerId)
	end

	if not Tile(tilePosition):getItemById(dummyId) then
		player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "Someone has moved the dummy, the training has stopped.")
		LeaveTraining(playerId)
		return false
	end

	local playerPosition = player:getPosition()
	if not player:getTile():hasFlag(TILESTATE_PROTECTIONZONE) and not staminaEvents[playerId] then
        player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "You are no longer in a protection zone, the training has stopped.")
		LeaveTraining(playerId)
        return true
    end

	if player:getItemCount(weaponId) <= 0 then
		player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "You need the training weapon in the backpack, the training has stopped.")
		LeaveTraining(playerId)
		return false
	end

	local weapon = player:getItemById(weaponId, true)
	if not weapon:isItem() or not weapon:hasAttribute(ITEM_ATTRIBUTE_CHARGES) then
		player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "The selected item is not a training weapon, the training has stopped.")
		LeaveTraining(playerId)
		return false
	end

	local weaponCharges = weapon:getAttribute(ITEM_ATTRIBUTE_CHARGES)
	if not weaponCharges or weaponCharges <= 0 then
		weapon:remove(1)
		player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "Your training weapon has disappeared.")
		LeaveTraining(playerId)
		return false
	end

	local isMagic = ExerciseWeaponsTable[weaponId].skill == SKILL_MAGLEVEL
	local bonusDummy = 1

	if table.contains(HouseDummies, dummyId) then
		bonusDummy = 1.5 -- 50%
	elseif table.contains(FreeDummies, dummyId) then
		bonusDummy = 1
	end

	if isMagic then
		player:addManaSpent(500 * bonusDummy)
	else
		player:addSkillTries(ExerciseWeaponsTable[weaponId].skill, 7 * bonusDummy)
	end

	weapon:setAttribute(ITEM_ATTRIBUTE_CHARGES, (weaponCharges - 1))
	tilePosition:sendMagicEffect(CONST_ME_HITAREA)

	if ExerciseWeaponsTable[weaponId].effect then
		playerPosition:sendDistanceEffect(tilePosition, ExerciseWeaponsTable[weaponId].effect)
	end

	if weapon:getAttribute(ITEM_ATTRIBUTE_CHARGES) <= 0 then
		weapon:remove(1)
		player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "Your training weapon has disappeared.")
		LeaveTraining(playerId)
		return false
	end

	local vocation = player:getVocation()
	onExerciseTraining[playerId].event = addEvent(ExerciseEvent, vocation:getAttackSpeed() / configManager.getNumber(configKeys.RATE_EXERCISE_TRAINING_SPEED), playerId, tilePosition, weaponId, dummyId)
	return true
end

if onExerciseTraining == nil then
	onExerciseTraining = {}
end