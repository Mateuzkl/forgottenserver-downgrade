local mType = Game.createMonsterType("Chicken")
local monster = {}
monster.description = "a chicken"
monster.experience = 0
monster.outfit = {lookType = 111}

monster.health = 15
monster.maxHealth = monster.health
monster.race = "blood"
monster.corpse = 6042
monster.speed = 128

monster.flags = {
	summonable = true,
	attackable = true,
	hostile = false,
	illusionable = true,
	convinceable = true,
	pushable = true,
	canpushitems = false,
	canpushcreatures = false,
	targetDistance = 1,
	staticAttackChance = 90,
	canwalkonenergy = false,
	canwalkonfire = false,
	canwalkonpoison = false
}

monster.voices = {
	interval = 5000,
	chance = 10,
	{text = "Gokgoooook", yell = false},
	{text = "Cluck Cluck", yell = false},
}

monster.loot = {
{
	id = "chicken feather",
	chance = 20000
},
{
	id = "worm",
	chance = 10000
},
{
	id = "meat",
	chance = 2120,
	maxCount = 2
},
{
	id = 2695,
	chance = 1000
}
}

monster.defenses = {
	defense = 1,
	armor = 1,
}

mType:register(monster)
