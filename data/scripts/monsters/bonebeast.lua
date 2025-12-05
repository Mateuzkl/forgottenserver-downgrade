local mType = Game.createMonsterType("Bonebeast")
local monster = {}
monster.description = "a bonebeast"
monster.experience = 580
monster.outfit = {lookType = 101}

monster.health = 515
monster.maxHealth = monster.health
monster.race = "undead"
monster.corpse = 6030
monster.speed = 218

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
	targetDistance = 1,
	staticAttackChance = 90,
	canwalkonenergy = false,
	canwalkonfire = false
}

monster.voices = {
	interval = 5000,
	chance = 10,
	{text = "Cccchhhhhhhhh!", yell = false},
	{text = "Knooorrrrr!", yell = false},
}

monster.loot = {
{
	id = 2230,
	chance = 49750
},
{
	id = "gold coin",
	chance = 30000,
	maxCount = 90
},
{
	id = 2229,
	chance = 20000
},
{
	id = "bony tail",
	chance = 9980
},
{
	id = "plate armor",
	chance = 8000
},
{
	id = "bone club",
	chance = 4950
},
{
	id = "bone shield",
	chance = 2000
},
{
	id = "green mushroom",
	chance = 1450
},
{
	id = "hardened bone",
	chance = 1000
},
{
	id = "health potion",
	chance = 540
},
{
	id = "bonebeast trophy",
	chance = 120
}
}

monster.attacks = {
{
	name = "melee",
	interval = 2 * 1000,
	attack = 200,
	skill = 70,
	effect = CONST_ME_DRAWBLOOD
},
{
	name = "combat",
	interval = 2 * 1000,
	chance = 15,
	minDamage = -50,
	maxDamage = -90,
	range = 7,
	type = COMBAT_EARTHDAMAGE,
	shootEffect = CONST_ANI_POISON,
	effect = CONST_ME_POISON
},
{
	name = "combat",
	interval = 2 * 1000,
	chance = 10,
	minDamage = -25,
	maxDamage = -47,
	radius = 3,
	target = false,
	type = COMBAT_LIFEDRAIN,
	effect = CONST_ME_MAGIC_RED
},
{
	name = "combat",
	type = COMBAT_EARTHDAMAGE,
	conditionType = CONDITION_POISON,
	conditionMinDamage = -50,
	conditionMaxDamage = -60,
	conditionTickInterval = 2000,
	interval = 2 * 1000,
	chance = 10,
	radius = 3,
	target = false,
	effect = CONST_ME_POISON
},
{
	name = "combat",
	type = COMBAT_EARTHDAMAGE,
	conditionType = CONDITION_POISON,
	conditionMinDamage = -70,
	conditionMaxDamage = -80,
	conditionTickInterval = 2000,
	interval = 2 * 1000,
	chance = 10,
	target = false,
	length = 6,
	spread = 0,
	effect = CONST_ME_POISON
},
{
	name = "speed",
	interval = 2 * 1000,
	chance = 15,
	target = true,
	speed = -600,
	duration = 13 * 1000
}
}

monster.defenses = {
	defense = 40,
	armor = 40,
	{
			name = "combat",
			interval = 2 * 1000,
			chance = 15,
			type = COMBAT_HEALING,
			minDamage = 50,
			maxDamage = 60,
			effect = CONST_ME_GREENSPARK
		},
}

monster.elements = {
{
	type = COMBAT_FIREDAMAGE,
	percent = -10
},
{
	type = COMBAT_HOLYDAMAGE,
	percent = -25
}
}

monster.immunities = {
{
	type = "death",
	combat = true,
	condition = true
},
{
	type = "earth",
	combat = true,
	condition = true
},
{
	type = "drown",
	condition = true
},
{
	type = "lifedrain",
	combat = true
},
{
	type = "paralyze",
	condition = true
},
{
	type = "invisible",
	condition = true
},
{
	type = "drunk",
	condition = true
}
}

mType:register(monster)
