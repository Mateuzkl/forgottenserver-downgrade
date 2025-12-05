local mType = Game.createMonsterType("Cat")
local monster = {}
monster.description = "a cat"
monster.experience = 0
monster.outfit = {lookType = 276}

monster.health = 20
monster.maxHealth = monster.health
monster.race = "blood"
monster.corpse = 7637
monster.speed = 190

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
	canwalkonenergy = false,
	canwalkonfire = false,
	canwalkonpoison = false
}

monster.voices = {
	interval = 5000,
	chance = 10,
	{text = "Mew!", yell = false},
	{text = "Meow!", yell = false},
	{text = "Meow meow!", yell = false},
}

monster.attacks = {
{
	name = "melee",
	interval = 2 * 1000,
	attack = 0,
	skill = 70,
	effect = CONST_ME_DRAWBLOOD
}
}

monster.defenses = {
	defense = 5,
	armor = 5,
}

mType:register(monster)
