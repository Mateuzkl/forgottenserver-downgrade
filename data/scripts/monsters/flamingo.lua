local mType = Game.createMonsterType("Flamingo")
local monster = {}
monster.description = "a flamingo"
monster.experience = 0
monster.outfit = {lookType = 212}

monster.health = 25
monster.maxHealth = monster.health
monster.race = "blood"
monster.corpse = 6054
monster.speed = 210

monster.flags = {
	summonable = true,
	attackable = true,
	hostile = false,
	illusionable = true,
	convinceable = true,
	pushable = true,
	canpushitems = false,
	canpushcreatures = false,
	staticAttackChance = 90,
	canwalkonenergy = false,
	canwalkonfire = false,
	canwalkonpoison = false
}

monster.loot = {
{
	id = "downy feather",
	chance = 1000
}
}

monster.defenses = {
	defense = 1,
	armor = 1,
}

mType:register(monster)
