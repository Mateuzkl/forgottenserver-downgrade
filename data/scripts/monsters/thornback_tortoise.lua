local mType = Game.createMonsterType("Thornback Tortoise")
local monster = {}
monster.description = "a thornback tortoise"
monster.experience = 150
monster.outfit = {lookType = 198}

monster.health = 300
monster.maxHealth = monster.health
monster.race = "blood"
monster.corpse = 6073
monster.speed = 200

monster.flags = {
	summonable = false,
	attackable = true,
	hostile = true,
	illusionable = false,
	convinceable = true,
	pushable = false,
	canpushitems = true,
	canpushcreatures = true,
	staticAttackChance = 90,
	targetDistance = 1,
	canwalkonenergy = false,
	canwalkonfire = false,
	canwalkonpoison = false
}

monster.loot = {
{
	id = "white pearl",
	chance = 1600
},
{
	id = "black pearl",
	chance = 800
},
{
	id = "gold coin",
	chance = 89500,
	maxCount = 48
},
{
	id = "war hammer",
	chance = 260
},
{
	id = 2667,
	chance = 10800,
	maxCount = 2
},
{
	id = "white mushroom",
	chance = 1200
},
{
	id = "brown mushroom",
	chance = 700
},
{
	id = "tortoise egg",
	chance = 790,
	maxCount = 3
},
{
	id = "turtle shell",
	chance = 800
},
{
	id = "health potion",
	chance = 1600
},
{
	id = "thorn",
	chance = 15980
}
}

monster.attacks = {
{
	name = "melee",
	interval = 2 * 1000,
	attack = 110,
	skill = 70,
	effect = CONST_ME_DRAWBLOOD
}
}

monster.defenses = {
	defense = 40,
	armor = 40,
}

monster.elements = {
{
	type = COMBAT_PHYSICALDAMAGE,
	percent = 45
},
{
	type = COMBAT_EARTHDAMAGE,
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

mType:register(monster)
