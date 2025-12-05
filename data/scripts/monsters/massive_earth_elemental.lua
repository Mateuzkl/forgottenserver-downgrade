local mType = Game.createMonsterType("Massive Earth Elemental")
local monster = {}
monster.description = "a massive earth elemental"
monster.experience = 950
monster.outfit = {lookType = 285}

monster.health = 1330
monster.maxHealth = monster.health
monster.race = "undead"
monster.corpse = 8933
monster.speed = 240

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
	canwalkonenergy = false,
	canwalkonfire = false
}

monster.loot = {
{
	id = "small stone",
	chance = 25280,
	maxCount = 10
},
{
	id = "gold coin",
	chance = 32000,
	maxCount = 100
},
{
	id = "gold coin",
	chance = 32000,
	maxCount = 100
},
{
	id = "gold coin",
	chance = 32000,
	maxCount = 41
},
{
	id = "stone skin amulet",
	chance = 980
},
{
	id = "protection amulet",
	chance = 1580
},
{
	id = "dwarven ring",
	chance = 2790
},
{
	id = "diamond sceptre",
	chance = 150
},
{
	id = "terra amulet",
	chance = 500
},
{
	id = 9809,
	chance = 3300
},
{
	id = "small topaz",
	chance = 5280,
	maxCount = 2
},
{
	id = "lump of earth",
	chance = 40680
},
{
	id = "clay lump",
	chance = 480
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
	minDamage = -99,
	maxDamage = -145,
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
	minDamage = -95,
	maxDamage = -169,
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
	conditionMinDamage = -300,
	conditionMaxDamage = -320,
	conditionTickInterval = 2000,
	interval = 2 * 1000,
	chance = 15,
	length = 6,
	spread = 0,
	effect = CONST_ME_BIGPLANTS
},
{
	name = "combat",
	type = COMBAT_EARTHDAMAGE,
	conditionType = CONDITION_POISON,
	conditionMinDamage = -200,
	conditionMaxDamage = -220,
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
	chance = 20,
	range = 5,
	target = true,
	speed = -330,
	duration = 5 * 1000,
	effect = CONST_ME_SMALLPLANTS
}
}

monster.defenses = {
	defense = 35,
	armor = 35,
	{
			name = "combat",
			interval = 2 * 1000,
			chance = 5,
			type = COMBAT_HEALING,
			minDamage = 150,
			maxDamage = 180,
			effect = CONST_ME_MAGIC_BLUE
		},
}

monster.elements = {
{
	type = COMBAT_DEATHDAMAGE,
	percent = 45
},
{
	type = COMBAT_ENERGYDAMAGE,
	percent = 90
},
{
	type = COMBAT_PHYSICALDAMAGE,
	percent = 30
},
{
	type = COMBAT_HOLYDAMAGE,
	percent = 50
},
{
	type = COMBAT_FIREDAMAGE,
	percent = -15
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
	type = "ice",
	combat = true,
	condition = true
}
}

mType:register(monster)
