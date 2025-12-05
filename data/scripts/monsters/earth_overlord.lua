local mType = Game.createMonsterType("Earth Overlord")
local monster = {}
monster.description = "an Earth Overlord"
monster.experience = 2800
monster.outfit = {lookType = 285}

monster.health = 4000
monster.maxHealth = monster.health
monster.race = "undead"
monster.corpse = 8933
monster.speed = 330

monster.changeTarget = {interval = 20 * 1000, chance = 30}

monster.flags = {
	summonable = false,
	attackable = true,
	hostile = true,
	illusionable = false,
	convinceable = false,
	pushable = false,
	canpushitems = true,
	staticAttackChance = 80,
	targetDistance = 1
}

monster.loot = {
{
	id = "gold coin",
	chance = 100000,
	maxCount = 100
},
{
	id = "gold coin",
	chance = 100000,
	maxCount = 68
},
{
	id = "platinum coin",
	chance = 33333,
	maxCount = 3
},
{
	id = "terra mantle",
	chance = 1923
},
{
	id = "mother soil",
	chance = 100000
},
{
	id = "lump of earth",
	chance = 33333
},
{
	id = "shiny stone",
	chance = 8333
}
}

monster.attacks = {
{
	name = "melee",
	interval = 2 * 1000,
	attack = 400,
	skill = 70,
	effect = CONST_ME_DRAWBLOOD
},
{
	name = "combat",
	interval = 1 * 1000,
	chance = 10,
	minDamage = 0,
	maxDamage = -800,
	length = 7,
	spread = 0,
	type = COMBAT_EARTHDAMAGE,
	effect = CONST_ME_STONES
},
{
	name = "combat",
	interval = 1 * 1000,
	chance = 9,
	minDamage = 0,
	maxDamage = -490,
	radius = 6,
	type = COMBAT_EARTHDAMAGE,
	effect = CONST_ME_BIGPLANTS
},
{
	name = "speed",
	interval = 2 * 1000,
	chance = 20,
	range = 7,
	speed = -750,
	duration = 4 * 1000,
	effect = CONST_ME_MAGIC_RED
}
}

monster.defenses = {
	defense = 30,
	armor = 30,
}

monster.elements = {
{
	type = COMBAT_DEATHDAMAGE,
	percent = 20
},
{
	type = COMBAT_ICEDAMAGE,
	percent = 20
},
{
	type = COMBAT_FIREDAMAGE,
	percent = -25
}
}

monster.immunities = {
{
	type = "earth",
	combat = true,
	condition = true
}
}

mType:register(monster)
