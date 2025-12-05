local mType = Game.createMonsterType("Dog")
local monster = {}
monster.description = "a dog"
monster.experience = 0
monster.outfit = {lookType = 32}

monster.health = 20
monster.maxHealth = monster.health
monster.race = "blood"
monster.corpse = 5971
monster.speed = 124

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
	{text = "Wuff wuff", yell = false},
}

monster.defenses = {
	defense = 1,
	armor = 1,
}

mType:register(monster)
