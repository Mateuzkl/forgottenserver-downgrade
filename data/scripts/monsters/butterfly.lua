local mType = Game.createMonsterType("Butterfly")
local monster = {}
monster.description = "a butterfly"
monster.experience = 0
monster.outfit = {lookType = 228}

monster.health = 2
monster.maxHealth = monster.health
monster.race = "venom"
monster.corpse = 4992
monster.speed = 320

monster.changeTarget = {interval = 5 * 1000, chance = 20}

monster.flags = {
	summonable = false,
	attackable = true,
	hostile = false,
	illusionable = false,
	convinceable = false,
	pushable = false,
	canpushitems = false,
	canpushcreatures = false,
	staticAttackChance = 90,
	targetDistance = 6,
	canwalkonenergy = false,
	canwalkonfire = false,
	canwalkonpoison = false
}

mType:register(monster)
