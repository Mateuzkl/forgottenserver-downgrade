local mType = Game.createMonsterType("Xenia")
local monster = {}
monster.description = "Xenia"
monster.experience = 255
monster.outfit = {lookType = 137}

monster.health = 200
monster.maxHealth = monster.health
monster.race = "blood"
monster.corpse = 20542
monster.speed = 176

monster.changeTarget = {interval = 5 * 1000, chance = 8}

monster.flags = {
	summonable = false,
	attackable = true,
	hostile = true,
	illusionable = false,
	convinceable = false,
	pushable = false,
	canpushitems = true,
	canpushcreatures = false,
	targetDistance = 1,
	staticAttackChance = 90,
	isboss = true
}

monster.voices = {
	interval = 5000,
	chance = 10,
	{text = "Stand still!", yell = false},
	{text = "One more head for me!", yell = false},
	{text = "Head off!", yell = false},
}

monster.loot = {
{
	id = "crystal necklace",
	chance = 2500
},
{
	id = "small diamond",
	chance = 2500,
	maxCount = 2
},
{
	id = "small ruby",
	chance = 2500,
	maxCount = 2
},
{
	id = "gold coin",
	chance = 100000,
	maxCount = 45
},
{
	id = "protection amulet",
	chance = 1000
},
{
	id = "double axe",
	chance = 3333
},
{
	id = "machete",
	chance = 10000
},
{
	id = "chain helmet",
	chance = 5000
},
{
	id = "plate armor",
	chance = 1333
},
{
	id = "chain armor",
	chance = 6666
},
{
	id = "meat",
	chance = 20000,
	maxCount = 3
},
{
	id = "red apple",
	chance = 10000,
	maxCount = 4
},
{
	id = "worm",
	chance = 50000,
	maxCount = 10
}
}

monster.attacks = {
{
	name = "melee",
	interval = 2 * 1000,
	attack = 50,
	skill = 70,
	effect = CONST_ME_DRAWBLOOD
},
{
	name = "combat",
	interval = 1 * 1000,
	chance = 15,
	minDamage = -28,
	maxDamage = -42,
	range = 7,
	type = COMBAT_PHYSICALDAMAGE,
	shootEffect = CONST_ANI_SPEAR
}
}

monster.defenses = {
	defense = 14,
	armor = 12,
}

monster.elements = {
{
	type = COMBAT_ICEDAMAGE,
	percent = 10
},
{
	type = COMBAT_FIREDAMAGE,
	percent = 10
},
{
	type = COMBAT_HOLYDAMAGE,
	percent = 7
},
{
	type = COMBAT_DEATHDAMAGE,
	percent = -7
},
{
	type = COMBAT_PHYSICALDAMAGE,
	percent = -6
}
}

mType:register(monster)
