local mType = Game.createMonsterType("Water Elemental")
local monster = {}
monster.description = "a water elemental"
monster.experience = 650
monster.outfit = {lookType = 286}

monster.health = 550
monster.maxHealth = monster.health
monster.race = "undead"
monster.corpse = 10499
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
	canpushcreatures = true,
	staticAttackChance = 90,
	targetDistance = 1,
	canwalkonenergy = false
}

monster.loot = {
{
	id = "small diamond",
	chance = 1000
},
{
	id = "small sapphire",
	chance = 1000
},
{
	id = "gold coin",
	chance = 50000,
	maxCount = 100
},
{
	id = "small emerald",
	chance = 1000,
	maxCount = 2
},
{
	id = "platinum coin",
	chance = 10000
},
{
	id = "energy ring",
	chance = 950
},
{
	id = "life ring",
	chance = 930
},
{
	id = 2667,
	chance = 20000
},
{
	id = "rainbow trout",
	chance = 940
},
{
	id = "green perch",
	chance = 1050
},
{
	id = "strong health potion",
	chance = 10000
},
{
	id = "strong mana potion",
	chance = 10000
},
{
	id = 7632,
	chance = 800
},
{
	id = 7633,
	chance = 800
},
{
	id = "leviathan's amulet",
	chance = 260
}
}

monster.attacks = {
{
	name = "melee",
	interval = 2 * 1000,
	attack = 160,
	skill = 70,
	effect = CONST_ME_DRAWBLOOD
},
{
	name = "drown",
	interval = 2 * 1000,
	chance = 10,
	minDamage = -125,
	maxDamage = -235,
	range = 7,
	radius = 2,
	target = true,
	effect = CONST_ME_BLUEBUBBLE
},
{
	name = "combat",
	interval = 2 * 1000,
	chance = 20,
	minDamage = -88,
	maxDamage = -150,
	range = 7,
	type = COMBAT_ICEDAMAGE,
	shootEffect = CONST_ANI_SMALLICE
},
{
	name = "combat",
	type = COMBAT_EARTHDAMAGE,
	conditionType = CONDITION_POISON,
	conditionMinDamage = -225,
	conditionMaxDamage = -260,
	conditionTickInterval = 2000,
	interval = 2 * 1000,
	chance = 15,
	radius = 5,
	target = false,
	effect = CONST_ME_POISON
}
}

monster.defenses = {
	defense = 20,
	armor = 20,
	{
			name = "combat",
			interval = 2 * 1000,
			chance = 5,
			type = COMBAT_HEALING,
			minDamage = 50,
			maxDamage = 80,
			effect = CONST_ME_MAGIC_BLUE
		},
	{
			name = "speed",
			interval = 2 * 1000,
			chance = 15,
			speed = 300,
			duration = 5 * 1000,
			effect = CONST_ME_MAGIC_RED
		},
}

monster.elements = {
{
	type = COMBAT_PHYSICALDAMAGE,
	percent = 35
},
{
	type = COMBAT_HOLYDAMAGE,
	percent = 50
},
{
	type = COMBAT_DEATHDAMAGE,
	percent = 50
},
{
	type = COMBAT_ENERGYDAMAGE,
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
	type = "drown",
	condition = true
},
{
	type = "fire",
	combat = true,
	condition = true
},
{
	type = "ice",
	combat = true,
	condition = true
},
{
	type = "earth",
	combat = true,
	condition = true
},
{
	type = "lifedrain",
	combat = true
}
}

mType:register(monster)
