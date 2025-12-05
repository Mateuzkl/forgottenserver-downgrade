local mType = Game.createMonsterType("Pig")
local monster = {}
monster.description = "a pig"
monster.experience = 0
monster.outfit = {lookType = 60}

monster.health = 25
monster.maxHealth = monster.health
monster.race = "blood"
monster.corpse = 6000
monster.speed = 114

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
	{text = "Oink oink", yell = false},
	{text = "Oink", yell = false},
}

monster.loot = {
{
	id = "meat",
	chance = 65000,
	maxCount = 4
},
{
	id = "pig foot",
	chance = 1200
}
}

monster.defenses = {
	defense = 2,
	armor = 2,
}

mType:register(monster)
