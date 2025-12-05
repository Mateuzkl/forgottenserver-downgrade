local mType = Game.createMonsterType("Cyclops")
local monster = {}
monster.description = "a cyclops"
monster.experience = 150
monster.outfit = {lookType = 22}

monster.health = 260
monster.maxHealth = monster.health
monster.race = "blood"
monster.corpse = 5962
monster.speed = 190

monster.changeTarget = {interval = 4 * 1000, chance = 10}

monster.flags = {
	summonable = true,
	attackable = true,
	hostile = true,
	illusionable = true,
	convinceable = true,
	pushable = false,
	canpushitems = true,
	canpushcreatures = true,
	targetDistance = 1,
	staticAttackChance = 90,
	canwalkonenergy = false,
	canwalkonfire = false,
	canwalkonpoison = false
}

monster.voices = {
	interval = 5000,
	chance = 10,
	{text = "Il lorstok human!", yell = false},
	{text = "Toks utat.", yell = false},
	{text = "Human, uh whil dyh!", yell = false},
	{text = "Youh ah trak!", yell = false},
	{text = "Let da mashing begin!", yell = false},
}

monster.loot = {
{
	id = "gold coin",
	chance = 82276,
	maxCount = 47
},
{
	id = "meat",
	chance = 29087
},
{
	id = "short sword",
	chance = 7795
},
{
	id = "cyclops toe",
	chance = 5265
},
{
	id = "plate shield",
	chance = 2442
},
{
	id = "battle shield",
	chance = 1462
},
{
	id = "halberd",
	chance = 892
},
{
	id = "wolf tooth chain",
	chance = 322
},
{
	id = "dark helmet",
	chance = 234
},
{
	id = "health potion",
	chance = 146
},
{
	id = "cyclops trophy",
	chance = 117
},
{
	id = "club ring",
	chance = 44
}
}

monster.attacks = {
{
	name = "melee",
	interval = 2 * 1000,
	attack = 105,
	skill = 70,
	effect = CONST_ME_DRAWBLOOD
}
}

monster.defenses = {
	defense = 17,
	armor = 17,
}

monster.elements = {
{
	type = COMBAT_ENERGYDAMAGE,
	percent = 25
},
{
	type = COMBAT_HOLYDAMAGE,
	percent = 20
},
{
	type = COMBAT_EARTHDAMAGE,
	percent = -10
},
{
	type = COMBAT_DEATHDAMAGE,
	percent = -10
}
}

mType:register(monster)
