local mType = Game.createMonsterType("Seagull")
local monster = {}
monster.description = "a seagull"
monster.experience = 0
monster.outfit = {lookType = 223}

monster.health = 25
monster.maxHealth = monster.health
monster.race = "blood"
monster.corpse = 6076
monster.speed = 260

monster.flags = {
	summonable = true,
	attackable = true,
	hostile = true,
	illusionable = false,
	convinceable = false,
	pushable = true,
	canpushitems = false,
	canpushcreatures = false,
	staticAttackChance = 90,
	targetDistance = 11,
	canwalkonenergy = false,
	canwalkonfire = false,
	canwalkonpoison = false
}

monster.attacks = {
{
	name = "melee",
	interval = 2 * 1000,
	attack = 3,
	skill = 70,
	effect = CONST_ME_DRAWBLOOD
}
}

monster.defenses = {
	defense = 5,
	armor = 5,
}

mType:register(monster)
