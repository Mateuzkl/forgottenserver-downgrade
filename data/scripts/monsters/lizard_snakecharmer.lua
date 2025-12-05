local mType = Game.createMonsterType("Lizard Snakecharmer")
local monster = {}
monster.description = "a lizard snakecharmer"
monster.experience = 210
monster.outfit = {lookType = 115}

monster.health = 325
monster.maxHealth = monster.health
monster.race = "blood"
monster.corpse = 6041
monster.speed = 184
monster.maxSummons = 6

monster.changeTarget = {interval = 4 * 1000, chance = 10}

monster.flags = {
	summonable = false,
	attackable = true,
	hostile = true,
	illusionable = true,
	convinceable = false,
	pushable = true,
	canpushitems = true,
	canpushcreatures = false,
	targetDistance = 4,
	staticAttackChance = 80,
	canwalkonenergy = false,
	canwalkonfire = false
}

monster.summons = {
{
	name = "cobra",
	chance = 20,
	interval = 2 * 1000
}
}

monster.voices = {
	interval = 5000,
	chance = 10,
	{text = "I ssssmell warm blood!", yell = false},
	{text = "Shhhhhhhh", yell = false},
}

monster.loot = {
{
	id = "gold coin",
	chance = 83740,
	maxCount = 55
},
{
	id = 3077,
	chance = 45000
},
{
	id = "cape",
	chance = 8640
},
{
	id = "life crystal",
	chance = 1430
},
{
	id = "lizard leather",
	chance = 1320
},
{
	id = "lizard scale",
	chance = 1000
},
{
	id = "terra rod",
	chance = 980
},
{
	id = "mana potion",
	chance = 700
},
{
	id = "small amethyst",
	chance = 370
},
{
	id = "life ring",
	chance = 190
},
{
	id = "snakebite rod",
	chance = 120
},
{
	id = "charmer's tiara",
	chance = 100
},
{
	id = "yellow gem",
	chance = 30
}
}

monster.attacks = {
{
	name = "melee",
	interval = 2 * 1000,
	attack = 30,
	skill = 70,
	effect = CONST_ME_DRAWBLOOD
},
{
	name = "combat",
	type = COMBAT_EARTHDAMAGE,
	conditionType = CONDITION_POISON,
	conditionMinDamage = -100,
	conditionMaxDamage = -200,
	conditionTickInterval = 2000,
	interval = 2 * 1000,
	chance = 15,
	range = 7,
	shootEffect = CONST_ANI_POISON
},
{
	name = "combat",
	interval = 2 * 1000,
	chance = 15,
	minDamage = -50,
	maxDamage = -110,
	range = 7,
	radius = 1,
	target = true,
	type = COMBAT_EARTHDAMAGE,
	shootEffect = CONST_ANI_POISON,
	effect = CONST_ME_GREENBUBBLE
}
}

monster.defenses = {
	defense = 22,
	armor = 22,
	{
			name = "combat",
			interval = 2 * 1000,
			chance = 50,
			type = COMBAT_HEALING,
			minDamage = 50,
			maxDamage = 100,
			effect = CONST_ME_MAGIC_BLUE
		},
	{
			name = "invisible",
			interval = 2 * 1000,
			chance = 20,
			effect = CONST_ME_MAGIC_BLUE
		},
}

monster.elements = {
{
	type = COMBAT_ENERGYDAMAGE,
	percent = 20
},
{
	type = COMBAT_ICEDAMAGE,
	percent = 20
},
{
	type = COMBAT_PHYSICALDAMAGE,
	percent = -10
},
{
	type = COMBAT_FIREDAMAGE,
	percent = -10
}
}

monster.immunities = {
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
