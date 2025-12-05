local mType = Game.createMonsterType("Crazed Beggar")
local monster = {}
monster.description = "a crazed beggar"
monster.experience = 35
monster.outfit = {lookType = 153}

monster.health = 100
monster.maxHealth = monster.health
monster.race = "blood"
monster.corpse = 20351
monster.speed = 154

monster.flags = {
	summonable = true,
	attackable = true,
	hostile = true,
	illusionable = true,
	convinceable = true,
	pushable = true,
	canpushitems = false,
	canpushcreatures = false,
	staticAttackChance = 80,
	targetDistance = 1,
	canwalkonenergy = false,
	canwalkonfire = false,
	canwalkonpoison = false
}

monster.voices = {
	interval = 1000,
	chance = 5,
	{text = "Hehehe!", yell = false},
	{text = "Raahhh!", yell = false},
	{text = "You are one of THEM! Die!", yell = false},
	{text = "Wanna buy roses??", yell = false},
	{text = "Make it stop!", yell = false},
	{text = "They're coming! They're coming!", yell = false},
	{text = "Gimme money!", yell = false},
}

monster.loot = {
{
	id = "gold coin",
	chance = 99393,
	maxCount = 9
},
{
	id = "dirty cape",
	chance = 60572
},
{
	id = "roll",
	chance = 19237
},
{
	id = "meat",
	chance = 9850
},
{
	id = "wooden spoon",
	chance = 9474
},
{
	id = "wooden hammer",
	chance = 6672
},
{
	id = "red rose",
	chance = 5055
},
{
	id = "rolling pin",
	chance = 4708
},
{
	id = "sling herb",
	chance = 607
},
{
	id = "small blue pillow",
	chance = 607
},
{
	id = "rum flask",
	chance = 520
},
{
	id = "very noble-looking watch",
	chance = 380
},
{
	id = "lute",
	chance = 376
},
{
	id = "plate armor",
	chance = 289
},
{
	id = "dwarven ring",
	chance = 144
}
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
	defense = 4,
	armor = 4,
}

monster.elements = {
{
	type = COMBAT_PHYSICALDAMAGE,
	percent = 5
},
{
	type = COMBAT_ENERGYDAMAGE,
	percent = 20
},
{
	type = COMBAT_EARTHDAMAGE,
	percent = -10
},
{
	type = COMBAT_HOLYDAMAGE,
	percent = 10
},
{
	type = COMBAT_DEATHDAMAGE,
	percent = -10
}
}

mType:register(monster)
