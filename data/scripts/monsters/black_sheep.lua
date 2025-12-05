local mType = Game.createMonsterType("Black Sheep")
local monster = {}
monster.description = "a black sheep"
monster.experience = 0
monster.outfit = {lookType = 13}

monster.health = 20
monster.maxHealth = monster.health
monster.race = "blood"
monster.corpse = 5994
monster.speed = 116

monster.changeTarget = {interval = 4 * 1000, chance = 20}

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
	{text = "Maeh", yell = false},
}

monster.loot = {
{
	id = "meat",
	chance = 55380,
	maxCount = 5
},
{
	id = "black wool",
	chance = 620
}
}

monster.defenses = {
	defense = 1,
	armor = 1,
}

monster.elements = {
{
	type = COMBAT_FIREDAMAGE,
	percent = -5
}
}

mType:register(monster)
