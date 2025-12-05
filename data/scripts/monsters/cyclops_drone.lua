local mType = Game.createMonsterType("Cyclops Drone")
local monster = {}
monster.description = "a cyclops drone"
monster.experience = 200
monster.outfit = {lookType = 280}

monster.health = 325
monster.maxHealth = monster.health
monster.race = "blood"
monster.corpse = 7847
monster.speed = 198

monster.changeTarget = {interval = 4 * 1000, chance = 10}

monster.flags = {
	summonable = false,
	attackable = true,
	hostile = true,
	illusionable = false,
	convinceable = true,
	pushable = false,
	canpushitems = true,
	canpushcreatures = true,
	targetDistance = 1,
	canwalkonenergy = false,
	canwalkonfire = false,
	canwalkonpoison = false
}

monster.voices = {
	interval = 5000,
	chance = 10,
	{text = "Fee! Fie! Foe! Fum!", yell = false},
	{text = "Luttl pest!", yell = false},
	{text = "Me makking you pulp!", yell = false},
	{text = "Humy tasy! Hum hum!", yell = false},
}

monster.loot = {
{
	id = "gold coin",
	chance = 82050,
	maxCount = 30
},
{
	id = "meat",
	chance = 50295
},
{
	id = "short sword",
	chance = 7867
},
{
	id = "cyclops toe",
	chance = 6895
},
{
	id = "plate shield",
	chance = 2026
},
{
	id = "battle shield",
	chance = 1580
},
{
	id = "halberd",
	chance = 679
},
{
	id = "strong health potion",
	chance = 517
},
{
	id = "dark helmet",
	chance = 198
},
{
	id = "cyclops trophy",
	chance = 124
},
{
	id = "club ring",
	chance = 73
}
}

monster.attacks = {
{
	name = "melee",
	interval = 2 * 1000,
	attack = 105,
	skill = 70,
	effect = CONST_ME_DRAWBLOOD
},
{
	name = "combat",
	interval = 2 * 1000,
	chance = 35,
	minDamage = 0,
	maxDamage = -80,
	range = 7,
	type = COMBAT_PHYSICALDAMAGE,
	shootEffect = CONST_ANI_LARGEROCK
}
}

monster.defenses = {
	defense = 20,
	armor = 20,
}

monster.elements = {
{
	type = COMBAT_ENERGYDAMAGE,
	percent = 10
},
{
	type = COMBAT_ICEDAMAGE,
	percent = 20
},
{
	type = COMBAT_HOLYDAMAGE,
	percent = 1
},
{
	type = COMBAT_EARTHDAMAGE,
	percent = -10
},
{
	type = COMBAT_DEATHDAMAGE,
	percent = -5
}
}

mType:register(monster)
