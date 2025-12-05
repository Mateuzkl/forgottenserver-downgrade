local mType = Game.createMonsterType("Jagged Earth Elemental")
local monster = {}
monster.description = "a jagged earth elemental"
monster.experience = 1300
monster.outfit = {lookType = 285}

monster.health = 1500
monster.maxHealth = monster.health
monster.race = "undead"
monster.corpse = 8933
monster.speed = 280

monster.changeTarget = {interval = 20 * 1000, chance = 50}

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

monster.voices = {
	interval = 1000,
	chance = 5,
	{text = "*STOMP STOMP*", yell = false},
}

monster.loot = {
{
	id = "gold coin",
	chance = 87298,
	maxCount = 175
},
{
	id = "lump of earth",
	chance = 48625
},
{
	id = "small stone",
	chance = 24919,
	maxCount = 10
},
{
	id = "twigs",
	chance = 20874
},
{
	id = "natural soil",
	chance = 7686
},
{
	id = "small emerald",
	chance = 5502,
	maxCount = 2
},
{
	id = "seeds",
	chance = 2184
},
{
	id = "clay lump",
	chance = 1133
},
{
	id = "iron ore",
	chance = 324
}
}

monster.attacks = {
{
	name = "melee",
	interval = 2 * 1000,
	attack = 300,
	skill = 70,
	effect = CONST_ME_DRAWBLOOD
},
{
	name = "combat",
	interval = 1 * 1000,
	chance = 10,
	minDamage = -100,
	maxDamage = -250,
	length = 6,
	spread = 0,
	type = COMBAT_EARTHDAMAGE,
	effect = CONST_ME_STONES
},
{
	name = "combat",
	interval = 1 * 1000,
	chance = 11,
	minDamage = 0,
	maxDamage = -200,
	range = 7,
	radius = 6,
	target = true,
	type = COMBAT_EARTHDAMAGE,
	shootEffect = CONST_ANI_SMALLEARTH,
	effect = CONST_ME_POISON
}
}

monster.defenses = {
	defense = 25,
	armor = 25,
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
	type = COMBAT_ENERGYDAMAGE,
	percent = 20
},
{
	type = COMBAT_FIREDAMAGE,
	percent = -25
}
}

monster.immunities = {
{
	type = "paralyze",
	condition = true
},
{
	type = "invisible",
	condition = true
},
{
	type = "earth",
	combat = true,
	condition = true
}
}

mType:register(monster)
