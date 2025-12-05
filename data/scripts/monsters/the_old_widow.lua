local mType = Game.createMonsterType("The Old Widow")
local monster = {}
monster.description = "The Old Widow"
monster.experience = 4200
monster.outfit = {lookType = 208}

monster.health = 3200
monster.maxHealth = monster.health
monster.race = "venom"
monster.corpse = 5977
monster.speed = 240
monster.maxSummons = 2

monster.changeTarget = {interval = 5 * 1000, chance = 8}

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
	canwalkonfire = false,
	isboss = true
}

monster.summons = {
{
	name = "giant spider",
	chance = 13,
	interval = 1 * 1000
}
}

monster.loot = {
{
	id = "gold coin",
	chance = 99500,
	maxCount = 100
},
{
	id = "platinum coin",
	chance = 98888,
	maxCount = 10
},
{
	id = "spider silk",
	chance = 87000,
	maxCount = 3
},
{
	id = "steel helmet",
	chance = 77000
},
{
	id = "great health potion",
	chance = 67000,
	maxCount = 4
},
{
	id = "knight armor",
	chance = 42000
},
{
	id = "energy ring",
	chance = 33333
},
{
	id = "stealth ring",
	chance = 33333
},
{
	id = 2169,
	chance = 33333
},
{
	id = "knight legs",
	chance = 26000
},
{
	id = "platinum amulet",
	chance = 21000
},
{
	id = "spool of yarn",
	chance = 10000
},
{
	id = "dreaded cleaver",
	chance = 2800
},
{
	id = "bloody edge",
	chance = 1120
}
}

monster.attacks = {
{
	name = "melee",
	interval = 2 * 1000,
	attack = 700,
	skill = 70,
	effect = CONST_ME_DRAWBLOOD
},
{
	name = "combat",
	interval = 1 * 1000,
	chance = 15,
	minDamage = -200,
	maxDamage = -350,
	range = 7,
	type = COMBAT_EARTHDAMAGE,
	shootEffect = CONST_ANI_POISON,
	effect = CONST_ME_POISON
},
{
	name = "speed",
	interval = 1 * 1000,
	chance = 20,
	range = 7,
	speed = -850,
	duration = 25 * 1000,
	shootEffect = CONST_ANI_POISON,
	effect = CONST_ME_POISON
},
{
	name = "poisonfield",
	interval = 1 * 1000,
	chance = 10,
	range = 7,
	radius = 4,
	target = true,
	shootEffect = CONST_ANI_POISON
}
}

monster.defenses = {
	defense = 45,
	armor = 45,
	{
			name = "combat",
			interval = 1 * 1000,
			chance = 17,
			type = COMBAT_HEALING,
			minDamage = 225,
			maxDamage = 275,
			effect = CONST_ME_MAGIC_BLUE
		},
	{
			name = "speed",
			interval = 1 * 1000,
			chance = 8,
			speed = 345,
			duration = 6 * 1000,
			effect = CONST_ME_MAGIC_RED
		},
}

monster.elements = {
{
	type = COMBAT_ENERGYDAMAGE,
	percent = 10
},
{
	type = COMBAT_PHYSICALDAMAGE,
	percent = 20
},
{
	type = COMBAT_FIREDAMAGE,
	percent = 20
}
}

monster.immunities = {
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
	type = "outfit",
	condition = true
},
{
	type = "drunk",
	condition = true
},
{
	type = "invisible",
	condition = true
}
}

mType:register(monster)
