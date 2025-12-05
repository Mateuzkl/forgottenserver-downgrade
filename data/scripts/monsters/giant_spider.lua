local mType = Game.createMonsterType("Giant Spider")
local monster = {}
monster.description = "a giant spider"
monster.experience = 900
monster.outfit = {lookType = 38}

monster.health = 1300
monster.maxHealth = monster.health
monster.race = "venom"
monster.corpse = 5977
monster.speed = 230
monster.maxSummons = 2

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
	staticAttackChance = 70,
	canwalkonfire = false
}

monster.summons = {
{
	name = "Poison Spider",
	chance = 10,
	interval = 2 * 1000
}
}

monster.loot = {
{
	id = "gold coin",
	chance = 50000,
	maxCount = 100
},
{
	id = "gold coin",
	chance = 50000,
	maxCount = 95
},
{
	id = "poison arrow",
	chance = 12500,
	maxCount = 12
},
{
	id = "plate armor",
	chance = 10000
},
{
	id = "plate legs",
	chance = 8000
},
{
	id = "two handed sword",
	chance = 5000
},
{
	id = "steel helmet",
	chance = 5000
},
{
	id = "strong health potion",
	chance = 3571
},
{
	id = "spider silk",
	chance = 2000
},
{
	id = "knight legs",
	chance = 870
},
{
	id = 2169,
	chance = 710
},
{
	id = "knight armor",
	chance = 500
},
{
	id = "platinum amulet",
	chance = 280
},
{
	id = "lightning headband",
	chance = 270
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
	name = "poisonfield",
	interval = 2 * 1000,
	chance = 10,
	range = 7,
	radius = 1,
	target = true,
	shootEffect = CONST_ANI_POISON
},
{
	name = "combat",
	interval = 2 * 1000,
	chance = 10,
	minDamage = -40,
	maxDamage = -70,
	range = 7,
	radius = 1,
	target = true,
	type = COMBAT_EARTHDAMAGE,
	shootEffect = CONST_ANI_POISON
}
}

monster.defenses = {
	defense = 30,
	armor = 30,
	{
			name = "speed",
			interval = 2 * 1000,
			chance = 15,
			speed = 390,
			duration = 5 * 1000,
			effect = CONST_ME_MAGIC_RED
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
	type = COMBAT_FIREDAMAGE,
	percent = -10
}
}

monster.immunities = {
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
},
{
	type = "earth",
	combat = true,
	condition = true
}
}

mType:register(monster)
