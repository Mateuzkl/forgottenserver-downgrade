local mType = Game.createMonsterType("Valkyrie")
local monster = {}
monster.description = "a valkyrie"
monster.experience = 85
monster.outfit = {lookType = 139}

monster.health = 190
monster.maxHealth = monster.health
monster.race = "blood"
monster.corpse = 20523
monster.speed = 176

monster.changeTarget = {interval = 4 * 1000, chance = 10}

monster.flags = {
	summonable = true,
	attackable = true,
	hostile = true,
	illusionable = true,
	convinceable = true,
	pushable = false,
	canpushitems = true,
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
	{text = "Another head for me!", yell = false},
	{text = "Head off!", yell = false},
	{text = "Your head will be mine!", yell = false},
	{text = "Stand still!", yell = false},
	{text = "One more head for me!", yell = false},
}

monster.loot = {
{
	id = "spear",
	chance = 55000,
	maxCount = 3
},
{
	id = "gold coin",
	chance = 32000,
	maxCount = 12
},
{
	id = "meat",
	chance = 30100
},
{
	id = "chain armor",
	chance = 10000
},
{
	id = "red apple",
	chance = 7500,
	maxCount = 2
},
{
	id = "girlish hair decoration",
	chance = 6000
},
{
	id = 3965,
	chance = 5155
},
{
	id = "protective charm",
	chance = 3200
},
{
	id = "protection amulet",
	chance = 1100
},
{
	id = "plate armor",
	chance = 820
},
{
	id = 2229,
	chance = 740
},
{
	id = "health potion",
	chance = 500
},
{
	id = "double axe",
	chance = 420
},
{
	id = "small diamond",
	chance = 200
}
}

monster.attacks = {
{
	name = "melee",
	interval = 2 * 1000,
	attack = 70,
	skill = 70,
	effect = CONST_ME_DRAWBLOOD
},
{
	name = "combat",
	interval = 2 * 1000,
	chance = 15,
	minDamage = 0,
	maxDamage = -50,
	range = 7,
	type = COMBAT_PHYSICALDAMAGE,
	shootEffect = CONST_ANI_SPEAR
}
}

monster.defenses = {
	defense = 12,
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
	percent = 5
},
{
	type = COMBAT_DEATHDAMAGE,
	percent = -5
},
{
	type = COMBAT_PHYSICALDAMAGE,
	percent = -10
}
}

mType:register(monster)
