local mType = Game.createMonsterType("Mimic")
local monster = {}
monster.description = "a mimic"
monster.experience = 0
monster.outfit = {lookType = 92}

monster.health = 30
monster.maxHealth = monster.health
monster.race = "blood"
monster.corpse = 1740
monster.speed = 170

monster.changeTarget = {interval = 5 * 1000, chance = 8}

monster.flags = {
	summonable = false,
	attackable = true,
	hostile = true,
	illusionable = false,
	convinceable = false,
	pushable = true,
	canpushitems = false,
	canpushcreatures = false,
	targetDistance = 5,
	staticAttackChance = 0
}

monster.defenses = {
	defense = 3,
	armor = 2,
}

mType:register(monster)
