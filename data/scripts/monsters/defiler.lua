local mType = Game.createMonsterType("Defiler")
local monster = {}
monster.description = "a defiler"
monster.experience = 3700
monster.outfit = {lookType = 238}

monster.health = 3650
monster.maxHealth = monster.health
monster.race = "venom"
monster.corpse = 6532
monster.speed = 160

monster.changeTarget = {interval = 4 * 1000, chance = 10}

monster.flags = {
	summonable = false,
	attackable = true,
	hostile = true,
	illusionable = true,
	convinceable = false,
	pushable = false,
	canpushitems = true,
	canpushcreatures = true,
	targetDistance = 1,
	staticAttackChance = 80,
	canwalkonenergy = false,
	canwalkonfire = false
}

monster.voices = {
	interval = 5000,
	chance = 10,
	{text = "Blubb", yell = false},
	{text = "Blubb Blubb", yell = false},
}

monster.loot = {
{
	id = "gold coin",
	chance = 100000,
	maxCount = 272
},
{
	id = "platinum coin",
	chance = 96687,
	maxCount = 6
},
{
	id = "soul orb",
	chance = 19478
},
{
	id = "demonic essence",
	chance = 19157
},
{
	id = "glob of acid slime",
	chance = 11586
},
{
	id = "glob of tar",
	chance = 11245
},
{
	id = "small emerald",
	chance = 5723,
	maxCount = 3
},
{
	id = "talon",
	chance = 4357
},
{
	id = "small ruby",
	chance = 3695,
	maxCount = 2
},
{
	id = "death ring",
	chance = 2831
},
{
	id = "small diamond",
	chance = 2490,
	maxCount = 2
},
{
	id = "yellow gem",
	chance = 1787
},
{
	id = "red gem",
	chance = 1165
},
{
	id = "blue gem",
	chance = 843
},
{
	id = "green gem",
	chance = 723
}
}

monster.attacks = {
{
	name = "melee",
	interval = 2 * 1000,
	attack = 240,
	skill = 70,
	effect = CONST_ME_DRAWBLOOD
},
{
	name = "combat",
	interval = 2 * 1000,
	chance = 20,
	minDamage = -160,
	maxDamage = -270,
	range = 7,
	type = COMBAT_EARTHDAMAGE,
	shootEffect = CONST_ANI_POISON
},
{
	name = "combat",
	type = COMBAT_EARTHDAMAGE,
	conditionType = CONDITION_POISON,
	conditionMinDamage = -400,
	conditionMaxDamage = -640,
	conditionTickInterval = 2000,
	interval = 2 * 1000,
	chance = 15,
	range = 7,
	radius = 7,
	target = false,
	effect = CONST_ME_GREENSPARK
},
{
	name = "combat",
	interval = 2 * 1000,
	chance = 20,
	minDamage = -120,
	maxDamage = -170,
	radius = 3,
	target = false,
	type = COMBAT_EARTHDAMAGE,
	effect = CONST_ME_POISON
},
{
	name = "combat",
	type = COMBAT_EARTHDAMAGE,
	conditionType = CONDITION_POISON,
	conditionMinDamage = -500,
	conditionMaxDamage = -1000,
	conditionTickInterval = 2000,
	interval = 2 * 1000,
	chance = 10,
	length = 8,
	spread = 3,
	effect = CONST_ME_SMALLPLANTS
},
{
	name = "speed",
	interval = 2 * 1000,
	chance = 15,
	length = 8,
	spread = 3,
	speed = -700,
	duration = 15 * 1000,
	effect = CONST_ME_SMALLCLOUDS
}
}

monster.defenses = {
	defense = 20,
	armor = 20,
	{
			name = "combat",
			interval = 2 * 1000,
			chance = 10,
			type = COMBAT_HEALING,
			minDamage = 280,
			maxDamage = 350,
			effect = CONST_ME_MAGIC_BLUE
		},
}

monster.elements = {
{
	type = COMBAT_ENERGYDAMAGE,
	percent = 10
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
},
{
	type = "paralyze",
	condition = true
},
{
	type = "invisible",
	condition = true
}
}

mType:register(monster)
