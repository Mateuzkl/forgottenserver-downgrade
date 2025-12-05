local mType = Game.createMonsterType("Quara Pincher")
local monster = {}
monster.description = "a quara pincher"
monster.experience = 1200
monster.outfit = {lookType = 77}

monster.health = 1800
monster.maxHealth = monster.health
monster.race = "blood"
monster.corpse = 6063
monster.speed = 396

monster.changeTarget = {interval = 4 * 1000, chance = 10}

monster.flags = {
	summonable = false,
	attackable = true,
	hostile = true,
	illusionable = false,
	convinceable = false,
	pushable = false,
	canpushitems = true,
	canpushcreatures = false,
	staticAttackChance = 90,
	targetDistance = 1,
	canwalkonenergy = false,
	canwalkonpoison = false
}

monster.voices = {
	interval = 5000,
	chance = 10,
	{text = "Clank clank!", yell = false},
	{text = "Clap!", yell = false},
	{text = "Crrrk! Crrrk!", yell = false},
}

monster.loot = {
{
	id = "gold coin",
	chance = 100000,
	maxCount = 150
},
{
	id = "platinum coin",
	chance = 40655
},
{
	id = "quara pincers",
	chance = 14711
},
{
	id = "great health potion",
	chance = 10371
},
{
	id = "small ruby",
	chance = 7539,
	maxCount = 2
},
{
	id = "halberd",
	chance = 6979
},
{
	id = "shrimp",
	chance = 4919
},
{
	id = "fish fin",
	chance = 1616
},
{
	id = "warrior helmet",
	chance = 1481
},
{
	id = "crown armor",
	chance = 270
},
{
	id = "glacier robe",
	chance = 116
}
}

monster.attacks = {
{
	name = "melee",
	interval = 2 * 1000,
	attack = 340,
	skill = 70,
	effect = CONST_ME_DRAWBLOOD
},
{
	name = "speed",
	interval = 2 * 1000,
	chance = 20,
	range = 1,
	speed = -600,
	duration = 3 * 1000,
	effect = CONST_ME_MAGIC_RED
}
}

monster.defenses = {
	defense = 85,
	armor = 85,
}

monster.elements = {
{
	type = COMBAT_EARTHDAMAGE,
	percent = -10
},
{
	type = COMBAT_ENERGYDAMAGE,
	percent = -25
},
{
	type = COMBAT_PHYSICALDAMAGE,
	percent = 10
}
}

monster.immunities = {
{
	type = "lifedrain",
	combat = true
},
{
	type = "invisible",
	condition = true
},
{
	type = "drown",
	condition = true
},
{
	type = "fire",
	combat = true,
	condition = true
},
{
	type = "ice",
	combat = true,
	condition = true
}
}

mType:register(monster)
