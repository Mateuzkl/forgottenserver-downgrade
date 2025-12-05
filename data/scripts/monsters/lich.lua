local mType = Game.createMonsterType("Lich")
local monster = {}
monster.description = "a lich"
monster.experience = 900
monster.outfit = {lookType = 99}

monster.health = 880
monster.maxHealth = monster.health
monster.race = "undead"
monster.corpse = 6028
monster.speed = 210
monster.maxSummons = 4

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
	staticAttackChance = 80,
	canwalkonfire = false
}

monster.summons = {
{
	name = "Bonebeast",
	chance = 10,
	interval = 2 * 1000
}
}

monster.voices = {
	interval = 5000,
	chance = 10,
	{text = "Doomed be the living!", yell = false},
	{text = "Death awaits all!", yell = false},
	{text = "Thy living flesh offends me!", yell = false},
	{text = "Death and Decay!", yell = false},
	{text = "You will endure agony beyond thy death!", yell = false},
	{text = "Pain sweet pain!", yell = false},
	{text = "Come to me my children!", yell = false},
}

monster.loot = {
{
	id = "gold coin",
	chance = 100000,
	maxCount = 139
},
{
	id = "platinum coin",
	chance = 19628
},
{
	id = "spellbook",
	chance = 10351
},
{
	id = "strong mana potion",
	chance = 7810
},
{
	id = "black pearl",
	chance = 5252,
	maxCount = 3
},
{
	id = "white pearl",
	chance = 4886
},
{
	id = "small topaz",
	chance = 2439,
	maxCount = 3
},
{
	id = "small emerald",
	chance = 2370,
	maxCount = 3
},
{
	id = "ancient shield",
	chance = 2072
},
{
	id = "ring of healing",
	chance = 1637
},
{
	id = "yellow gem",
	chance = 759
},
{
	id = "strange helmet",
	chance = 716
},
{
	id = "mind stone",
	chance = 418
},
{
	id = "platinum amulet",
	chance = 401
},
{
	id = "lightning boots",
	chance = 281
},
{
	id = "skull staff",
	chance = 273
},
{
	id = "castle shield",
	chance = 264
},
{
	id = "blue robe",
	chance = 205
}
}

monster.attacks = {
{
	name = "melee",
	interval = 2 * 1000,
	attack = 75,
	skill = 70,
	effect = CONST_ME_DRAWBLOOD
},
{
	name = "combat",
	interval = 2 * 1000,
	chance = 10,
	minDamage = -140,
	maxDamage = -190,
	length = 7,
	spread = 0,
	type = COMBAT_LIFEDRAIN,
	effect = CONST_ME_MAGIC_RED
},
{
	name = "combat",
	type = COMBAT_EARTHDAMAGE,
	conditionType = CONDITION_POISON,
	conditionMinDamage = -300,
	conditionMaxDamage = -400,
	conditionTickInterval = 2000,
	interval = 2 * 1000,
	chance = 10,
	length = 7,
	spread = 0,
	effect = CONST_ME_GREENSPARK
},
{
	name = "combat",
	interval = 2 * 1000,
	chance = 10,
	minDamage = -200,
	maxDamage = -245,
	range = 1,
	target = true,
	type = COMBAT_LIFEDRAIN,
	effect = CONST_ME_MAGIC_RED
},
{
	name = "speed",
	interval = 2 * 1000,
	chance = 15,
	range = 7,
	speed = -300,
	duration = 30 * 1000,
	effect = CONST_ME_MAGIC_RED
},
{
	name = "combat",
	interval = 2 * 1000,
	chance = 10,
	minDamage = -130,
	maxDamage = -195,
	radius = 3,
	target = false,
	type = COMBAT_LIFEDRAIN,
	effect = CONST_ME_MAGIC_RED
}
}

monster.defenses = {
	defense = 50,
	armor = 50,
	{
			name = "combat",
			interval = 2 * 1000,
			chance = 15,
			type = COMBAT_HEALING,
			minDamage = 80,
			maxDamage = 100,
			effect = CONST_ME_MAGIC_BLUE
		},
}

monster.elements = {
{
	type = COMBAT_ENERGYDAMAGE,
	percent = 80
},
{
	type = COMBAT_HOLYDAMAGE,
	percent = -20
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
}
}

mType:register(monster)
