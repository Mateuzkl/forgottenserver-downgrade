local function outExplode()
	local spectators = Game.getSpectators(Position(32234, 31285, 14), false, true, 10, 10, 10, 10)
	for _, spectator in ipairs(spectators) do
		if spectator:isPlayer() then
			spectator:teleportTo(Position(32234, 31280, 14))
		elseif spectator:isMonster() and spectator:getName() == "Charging Outburst" then
			spectator:teleportTo(Position(32234, 31279, 14))
		end
	end
end

local combat = Combat()
combat:setParameter(COMBAT_PARAM_TYPE, COMBAT_ENERGYDAMAGE)
combat:setParameter(COMBAT_PARAM_EFFECT, CONST_ME_PURPLEENERGY)

arr = {
	{0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0},
	{0, 0, 0, 0, 1, 1, 1, 1, 1, 0, 0, 0, 0},
	{0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0},
	{0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0},
	{0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0},
	{0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0},
	{1, 1, 1, 1, 1, 1, 3, 1, 1, 1, 1, 1, 1},
	{0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0},
	{0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0},
	{0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0},
	{0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0},
	{0, 0, 0, 0, 1, 1, 1, 1, 1, 0, 0, 0, 0},
	{0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0},
}

local area = createCombatArea(arr)
combat:setArea(area)

local function delayedCastSpell(creature, var)
	if not creature then
		return
	end
	return combat:execute(creature, positionToVariant(creature:getPosition()))
end

function removeOutburst(cid)
	local creature = Creature(cid)
	if not isCreature(creature) then return false end
	creature:remove()
end

local spell = Spell("instant")

function spell.onCastSpell(creature, var)
	local from = creature:getId()

	outExplode()
	delayedCastSpell(creature, var)
	chargingOutKilled = true
	addEvent(removeOutburst, 1000, creature.uid)

	local monster = Game.createMonster("Outburst", {x = 32234, y = 31284, z = 14}, false, true)
	monster:addHealth(-monster:getHealth() + outburstHealth, COMBAT_PHYSICALDAMAGE)
	transferBossPoints(from, monster:getId())
	return true
end

spell:name("outburst explode")
spell:words("###449")
spell:isAggressive(true)
spell:blockWalls(true)
spell:needLearn(true)
spell:register()