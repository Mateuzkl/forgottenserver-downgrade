local mType = Game.createMonsterType("Barbarian Skullhunter")
local monster = {}
monster.description = "a barbarian skullhunter"
monster.experience = 85
monster.outfit = {lookType = 254}

monster.health = 135
monster.maxHealth = monster.health
monster.race = "blood"
monster.corpse = 20347
monster.speed = 168

monster.flags = {
	summonable = false,
	attackable = true,
	hostile = true,
	illusionable = false,
	convinceable = true,
	pushable = false,
	canpushitems = true,
	staticAttackChance = 70,
	targetDistance = 1,
	canwalkonenergy = false,
	canwalkonfire = false,
	canwalkonpoison = false
}

monster.voices = {
	interval = 5000,
	chance = 10,
	{text = "You will become my trophy.", yell = false},
	{text = "Fight harder, coward.", yell = false},
	{text = "Show that you are a worthy opponent.", yell = false},
}

monster.loot = {
{
	id = "gold coin",
	chance = 74364,
	maxCount = 30
},
{
	id = "torch",
	chance = 60308
},
{
	id = "brass helmet",
	chance = 19950
},
{
	id = "knife",
	chance = 15045
},
{
	id = "viking helmet",
	chance = 7886
},
{
	id = "scale armor",
	chance = 4024
},
{
	id = "skull (item)",
	chance = 3002
},
{
	id = "health potion",
	chance = 914
},
{
	id = "brown piece of cloth",
	chance = 521
},
{
	id = "life ring",
	chance = 240
},
{
	id = "fur boots",
	chance = 99
},
{
	id = "ragnir helmet",
	chance = 95
},
{
	id = "crystal sword",
	chance = 87
}
}

monster.attacks = {
{
	name = "melee",
	interval = 2 * 1000,
	attack = 65,
	skill = 70,
	effect = CONST_ME_DRAWBLOOD
}
}

monster.defenses = {
	defense = 8,
	armor = 8,
}

monster.elements = {
{
	type = COMBAT_PHYSICALDAMAGE,
	percent = 10
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
	type = COMBAT_ICEDAMAGE,
	percent = 50
},
{
	type = COMBAT_HOLYDAMAGE,
	percent = 10
},
{
	type = COMBAT_DEATHDAMAGE,
	percent = -5
}
}

monster.immunities = {
{
	type = "paralyze",
	condition = true
}
}

mType:register(monster)
