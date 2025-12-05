local mType = Game.createMonsterType("Silver Rabbit")
local monster = {}
monster.description = "a silver rabbit"
monster.experience = 0
monster.outfit = {lookType = 262}

monster.health = 15
monster.maxHealth = monster.health
monster.race = "blood"
monster.corpse = 7338
monster.speed = 184

monster.flags = {
	summonable = true,
	attackable = true,
	hostile = true,
	illusionable = true,
	convinceable = true,
	pushable = false,
	canpushitems = false,
	staticAttackChance = 70,
	targetDistance = 1,
	canwalkonenergy = false,
	canwalkonfire = false,
	canwalkonpoison = false
}

monster.loot = {
{
	id = "meat",
	chance = 85000,
	maxCount = 2
},
{
	id = "silky fur",
	chance = 30000
},
{
	id = 2684,
	chance = 10000
}
}

monster.defenses = {
	defense = 1,
	armor = 1,
}

mType:register(monster)
