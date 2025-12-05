local mType = Game.createMonsterType("Swamp Troll")
local monster = {}
monster.description = "a swamp troll"
monster.experience = 25
monster.outfit = {lookType = 76}

monster.health = 55
monster.maxHealth = monster.health
monster.race = "blood"
monster.corpse = 6018
monster.speed = 128

monster.flags = {
	summonable = true,
	attackable = true,
	hostile = true,
	illusionable = true,
	convinceable = false,
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
	{text = "Grrrr", yell = false},
	{text = "Groar!", yell = false},
	{text = "Me strong! Me ate spinach!", yell = false},
}

monster.loot = {
{
	id = 2667,
	chance = 60000
},
{
	id = "gold coin",
	chance = 50300,
	maxCount = 5
},
{
	id = 2050,
	chance = 15000
},
{
	id = "spear",
	chance = 13000
},
{
	id = "mouldy cheese",
	chance = 10000
},
{
	id = "leather boots",
	chance = 10000
},
{
	id = "swamp grass",
	chance = 3100
},
{
	id = 5901,
	chance = 2000
},
{
	id = "troll green",
	chance = 1000
},
{
	id = "fishing rod",
	chance = 80
}
}

monster.attacks = {
{
	name = "melee",
	interval = 2 * 1000,
	attack = 13,
	skill = 70,
	effect = CONST_ME_DRAWBLOOD
}
}

monster.defenses = {
	defense = 6,
	armor = 6,
}

monster.elements = {
{
	type = COMBAT_EARTHDAMAGE,
	percent = 15
},
{
	type = COMBAT_FIREDAMAGE,
	percent = -5
}
}

mType:register(monster)
