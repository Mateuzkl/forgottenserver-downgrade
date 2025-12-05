local mType = Game.createMonsterType("Pirate Marauder")
local monster = {}
monster.description = "a pirate marauder"
monster.experience = 125
monster.outfit = {lookType = 93}

monster.health = 210
monster.maxHealth = monster.health
monster.race = "blood"
monster.corpse = 20483
monster.speed = 200

monster.changeTarget = {interval = 4 * 1000, chance = 15}

monster.flags = {
	summonable = false,
	attackable = true,
	hostile = true,
	illusionable = false,
	convinceable = true,
	pushable = false,
	canpushitems = true,
	canpushcreatures = false,
	staticAttackChance = 90,
	targetDistance = 1,
	canwalkonenergy = false,
	canwalkonfire = false,
	canwalkonpoison = false
}

monster.voices = {
	interval = 5000,
	chance = 10,
	{text = "Plundeeeeer!", yell = false},
	{text = "Give up!", yell = false},
	{text = "Hiyaa!", yell = false},
}

monster.loot = {
{
	id = 2050,
	chance = 9880
},
{
	id = "gold coin",
	chance = 77670,
	maxCount = 40
},
{
	id = "spear",
	chance = 5140,
	maxCount = 2
},
{
	id = "chain armor",
	chance = 3000
},
{
	id = "plate shield",
	chance = 5000
},
{
	id = 5091,
	chance = 910
},
{
	id = "rum flask",
	chance = 110
},
{
	id = 5792,
	chance = 90
},
{
	id = "bandana",
	chance = 880
},
{
	id = "pirate bag",
	chance = 430
},
{
	id = "empty goldfish bowl",
	chance = 80
},
{
	id = "hook",
	chance = 520
},
{
	id = "eye patch",
	chance = 530
},
{
	id = "peg leg",
	chance = 520
},
{
	id = "compass",
	chance = 9720
}
}

monster.attacks = {
{
	name = "melee",
	interval = 2 * 1000,
	attack = 140,
	skill = 70,
	effect = CONST_ME_DRAWBLOOD
},
{
	name = "combat",
	interval = 2 * 1000,
	chance = 15,
	minDamage = 0,
	maxDamage = -40,
	range = 7,
	type = COMBAT_PHYSICALDAMAGE,
	shootEffect = CONST_ANI_SPEAR
}
}

monster.defenses = {
	defense = 15,
	armor = 15,
}

monster.elements = {
{
	type = COMBAT_EARTHDAMAGE,
	percent = 10
},
{
	type = COMBAT_HOLYDAMAGE,
	percent = 20
},
{
	type = COMBAT_DEATHDAMAGE,
	percent = -5
},
{
	type = COMBAT_FIREDAMAGE,
	percent = -10
},
{
	type = COMBAT_ENERGYDAMAGE,
	percent = -5
}
}

monster.immunities = {
{
	type = "invisible",
	condition = true
}
}

mType:register(monster)
