local mType = Game.createMonsterType("Troll Champion")
local monster = {}
monster.description = "a troll champion"
monster.experience = 40
monster.outfit = {lookType = 281}

monster.health = 75
monster.maxHealth = monster.health
monster.race = "blood"
monster.corpse = 7926
monster.speed = 190

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
	canwalkonenergy = false,
	canwalkonfire = false,
	canwalkonpoison = false
}

monster.voices = {
	interval = 5000,
	chance = 10,
	{text = "Meee maity!", yell = false},
	{text = "Grrrr", yell = false},
	{text = "Whaaaz up!?", yell = false},
	{text = "Gruntz!", yell = false},
	{text = "Groar", yell = false},
}

monster.loot = {
{
	id = "gold coin",
	chance = 64606,
	maxCount = 12
},
{
	id = "spear",
	chance = 25082
},
{
	id = "meat",
	chance = 9962
},
{
	id = "leather boots",
	chance = 9936
},
{
	id = "wooden shield",
	chance = 5322
},
{
	id = "arrow",
	chance = 5069,
	maxCount = 5
},
{
	id = "studded club",
	chance = 5069
},
{
	id = "bunch of troll hair",
	chance = 3075
},
{
	id = "trollroot",
	chance = 909
},
{
	id = "silver amulet",
	chance = 127
}
}

monster.attacks = {
{
	name = "melee",
	interval = 2 * 1000,
	attack = 35,
	skill = 70,
	effect = CONST_ME_DRAWBLOOD
}
}

monster.defenses = {
	defense = 10,
	armor = 10,
}

monster.elements = {
{
	type = COMBAT_ENERGYDAMAGE,
	percent = 15
},
{
	type = COMBAT_HOLYDAMAGE,
	percent = 10
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
