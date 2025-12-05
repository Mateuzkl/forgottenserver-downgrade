local mType = Game.createMonsterType("Rabbit")
local monster = {}
monster.description = "a rabbit"
monster.experience = 0
monster.outfit = {lookType = 74}

monster.health = 15
monster.maxHealth = monster.health
monster.race = "blood"
monster.corpse = 6017
monster.speed = 180

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

monster.loot = {
{
	id = "meat",
	chance = 82000,
	maxCount = 2
},
{
	id = 2684,
	chance = 10000,
	maxCount = 2
}
}

monster.defenses = {
	defense = 1,
	armor = 1,
}

mType:register(monster)
