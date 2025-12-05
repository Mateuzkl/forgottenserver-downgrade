local mType = Game.createMonsterType("Husky")
local monster = {}
monster.description = "a husky"
monster.experience = 0
monster.outfit = {lookType = 258}

monster.health = 140
monster.maxHealth = monster.health
monster.race = "blood"
monster.corpse = 7316
monster.speed = 250

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
	{text = "Yoooohuuuu!", yell = false},
	{text = "Grrrrrrr", yell = false},
	{text = "Ruff, ruff!", yell = false},
}

monster.defenses = {
	defense = 5,
	armor = 5,
}

mType:register(monster)
