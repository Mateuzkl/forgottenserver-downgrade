local mType = Game.createMonsterType("Cockroach")
local monster = {}
monster.description = "a cockroach"
monster.experience = 0
monster.outfit = {lookType = 284}

monster.health = 1
monster.maxHealth = monster.health
monster.race = "venom"
monster.corpse = 8593
monster.speed = 180

monster.flags = {
	summonable = false,
	attackable = true,
	hostile = false,
	illusionable = false,
	convinceable = false,
	pushable = true,
	canpushitems = false,
	staticAttackChance = 50,
	targetDistance = 1,
	canwalkonenergy = false,
	canwalkonfire = false,
	canwalkonpoison = false
}

monster.loot = {
{
	id = "cockroach leg",
	chance = 100000
}
}

mType:register(monster)
