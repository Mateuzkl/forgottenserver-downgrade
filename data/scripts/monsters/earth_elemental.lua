local mType = Game.createMonsterType("Earth Elemental")
local monster = {}
monster.description = "an earth elemental"
monster.experience = 450
monster.outfit = {lookType = 301}

monster.health = 650
monster.maxHealth = monster.health
monster.race = "undead"
monster.corpse = 8933
monster.speed = 220

monster.changeTarget = {interval = 4 * 1000, chance = 10}

monster.flags = {
	summonable = false,
	attackable = true,
	hostile = true,
	illusionable = false,
	convinceable = false,
	pushable = false,
	canpushitems = true,
	staticAttackChance = 80,
	targetDistance = 1,
	canwalkonfire = false
}

monster.loot = {
{
	id = "small stone",
	chance = 10000,
	maxCount = 10
},
{
	id = "gold coin",
	chance = 43000,
	maxCount = 100
},
{
	id = "gold coin",
	chance = 50000,
	maxCount = 30
},
{
	id = "blank rune",
	chance = 10000
},
{
	id = "strong mana potion",
	chance = 1910
},
{
	id = "earth arrow",
	chance = 20160,
	maxCount = 30
},
{
	id = 9808,
	chance = 350
},
{
	id = "small topaz",
	chance = 620
},
{
	id = "lump of earth",
	chance = 20460
},
{
	id = "clay lump",
	chance = 570
}
}

monster.attacks = {
{
	name = "melee",
	interval = 2 * 1000,
	attack = 110,
	skill = 70,
	effect = CONST_ME_DRAWBLOOD
},
{
	name = "combat",
	interval = 2 * 1000,
	chance = 10,
	minDamage = -72,
	maxDamage = -105,
	range = 7,
	target = true,
	type = COMBAT_EARTHDAMAGE,
	shootEffect = CONST_ANI_SMALLEARTH,
	effect = CONST_ME_GREENBUBBLE
},
{
	name = "combat",
	interval = 2 * 1000,
	chance = 10,
	minDamage = 0,
	maxDamage = -100,
	range = 7,
	radius = 2,
	target = true,
	type = COMBAT_PHYSICALDAMAGE,
	shootEffect = CONST_ANI_LARGEROCK,
	effect = CONST_ME_POFF
},
{
	name = "combat",
	type = COMBAT_EARTHDAMAGE,
	conditionType = CONDITION_POISON,
	conditionMinDamage = -200,
	conditionMaxDamage = -260,
	conditionTickInterval = 2000,
	interval = 2 * 1000,
	chance = 20,
	length = 6,
	spread = 0,
	effect = CONST_ME_BIGPLANTS
},
{
	name = "combat",
	type = COMBAT_EARTHDAMAGE,
	conditionType = CONDITION_POISON,
	conditionMinDamage = -100,
	conditionMaxDamage = -140,
	conditionTickInterval = 2000,
	interval = 2 * 1000,
	chance = 10,
	radius = 5,
	target = false,
	shootEffect = CONST_ANI_POISON,
	effect = CONST_ME_POISON
},
{
	name = "speed",
	interval = 2 * 1000,
	chance = 10,
	range = 5,
	target = true,
	speed = -330,
	duration = 5 * 1000,
	effect = CONST_ME_SMALLPLANTS
}
}

monster.defenses = {
	defense = 25,
	armor = 25,
	{
			name = "combat",
			interval = 2 * 1000,
			chance = 5,
			type = COMBAT_HEALING,
			minDamage = 60,
			maxDamage = 80,
			effect = CONST_ME_MAGIC_BLUE
		},
}

monster.elements = {
{
	type = COMBAT_DEATHDAMAGE,
	percent = 50
},
{
	type = COMBAT_ICEDAMAGE,
	percent = 85
},
{
	type = COMBAT_PHYSICALDAMAGE,
	percent = 50
},
{
	type = COMBAT_HOLYDAMAGE,
	percent = 50
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
},
{
	type = "energy",
	combat = true,
	condition = true
}
}

mType:register(monster)
