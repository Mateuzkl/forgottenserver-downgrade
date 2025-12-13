-- gerado por Spell Converter
-- script original
local LEVEL_LOWER = 1
local LEVEL_SAME = 2
local LEVEL_HIGHER = 3

local DISTANCE_BESIDE = 1
local DISTANCE_CLOSE = 2
local DISTANCE_FAR = 3
local DISTANCE_VERYFAR = 4

local directions = {
	[DIRECTION_NORTH] = "north",
	[DIRECTION_SOUTH] = "south",
	[DIRECTION_EAST] = "east",
	[DIRECTION_WEST] = "west",
	[DIRECTION_NORTHEAST] = "north-east",
	[DIRECTION_NORTHWEST] = "north-west",
	[DIRECTION_SOUTHEAST] = "south-east",
	[DIRECTION_SOUTHWEST] = "south-west"
}

local messages = {
	[DISTANCE_BESIDE] = {
		[LEVEL_LOWER] = "is below you",
		[LEVEL_SAME] = "is standing next to you",
		[LEVEL_HIGHER] = "is above you"
	},
	[DISTANCE_CLOSE] = {
		[LEVEL_LOWER] = "is on a lower level to the",
		[LEVEL_SAME] = "is to the",
		[LEVEL_HIGHER] = "is on a higher level to the"
	},
	[DISTANCE_FAR] = "is far to the",
	[DISTANCE_VERYFAR] = "is very far to the"
}

local spell = Spell("instant")

function spell.onCastSpell(creature, variant) return combat:execute(creature, variant) end

spell:group("support")
spell:id(134)
spell:name("Find Person")
spell:words("exiva")
spell:level(8)
spell:mana(20)
spell:cooldown(2 * 1000)
spell:groupCooldown(2 * 1000)
spell:needLearn(false)
spell:isAggressive(false)
spell:vocation("sorcerer", "master sorcerer", "druid", "elder druid", "paladin", "royal paladin", "knight", "elite knight")
spell:register()
