local mType = Game.createMonsterType("Green Frog")
local monster = {}
monster.description = "a green frog"
monster.experience = 0
monster.outfit = {lookType = 224}

monster.health = 25
monster.maxHealth = monster.health
monster.race = "blood"
monster.corpse = 6079
monster.speed = 200

monster.flags = {
	summonable = true,
	attackable = true,
	hostile = true,
	illusionable = true,
	convinceable = true,
	pushable = true,
	canpushitems = false,
	canpushcreatures = false,
	staticAttackChance = 90,
	targetDistance = 6,
	canwalkonenergy = false,
	canwalkonfire = false,
	canwalkonpoison = false
}

monster.voices = {
	interval = 5000,
	chance = 10,
	{text = "Ribbit!", yell = false},
	{text = "Ribbit! Ribbit!", yell = false},
}

monster.attacks = {
{
	name = "melee",
	interval = 2 * 1000,
	attack = 25,
	skill = 70,
	effect = CONST_ME_DRAWBLOOD
}
}

monster.defenses = {
	defense = 5,
	armor = 5,
}

mType:register(monster)
