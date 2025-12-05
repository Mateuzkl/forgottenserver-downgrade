local mType = Game.createMonsterType("Hyaena")
local monster = {}
monster.description = "a hyaena"
monster.experience = 20
monster.outfit = {lookType = 94}

monster.health = 60
monster.maxHealth = monster.health
monster.race = "blood"
monster.corpse = 6026
monster.speed = 196

monster.flags = {
	summonable = true,
	attackable = true,
	hostile = true,
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
	{text = "Grrrrrr", yell = false},
	{text = "Hou hou hou!", yell = false},
}

monster.loot = {
{
	id = "worm",
	chance = 50130,
	maxCount = 3
},
{
	id = "meat",
	chance = 30860,
	maxCount = 2
}
}

monster.attacks = {
{
	name = "melee",
	interval = 2 * 1000,
	attack = 20,
	skill = 70,
	effect = CONST_ME_DRAWBLOOD
}
}

monster.defenses = {
	defense = 1,
	armor = 1,
}

mType:register(monster)
