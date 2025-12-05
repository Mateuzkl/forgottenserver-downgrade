local mType = Game.createMonsterType("Pirate Cutthroat")
local monster = {}
monster.description = "a pirate cutthroat"
monster.experience = 175
monster.outfit = {lookType = 96}

monster.health = 325
monster.maxHealth = monster.health
monster.race = "blood"
monster.corpse = 20479
monster.speed = 214

monster.changeTarget = {interval = 4 * 1000, chance = 15}

monster.flags = {
	summonable = false,
	attackable = true,
	hostile = true,
	illusionable = false,
	convinceable = true,
	pushable = true,
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
	{text = "Give up!", yell = false},
	{text = "Hiyaa!", yell = false},
	{text = "Plundeeeeer!", yell = false},
}

monster.loot = {
{
	id = "gold coin",
	chance = 77548,
	maxCount = 50
},
{
	id = "compass",
	chance = 10074
},
{
	id = "scale armor",
	chance = 3070
},
{
	id = "steel shield",
	chance = 2884
},
{
	id = "light shovel",
	chance = 1960
},
{
	id = "pirate knee breeches",
	chance = 1019
},
{
	id = "pirate bag",
	chance = 987
},
{
	id = "hook",
	chance = 534
},
{
	id = "peg leg",
	chance = 514
},
{
	id = "eye patch",
	chance = 468
},
{
	id = "die",
	chance = 93
},
{
	id = "rum flask",
	chance = 89
}
}

monster.attacks = {
{
	name = "melee",
	interval = 2 * 1000,
	attack = 170,
	skill = 70,
	effect = CONST_ME_DRAWBLOOD
},
{
	name = "combat",
	interval = 2 * 1000,
	chance = 20,
	minDamage = 0,
	maxDamage = -95,
	range = 7,
	radius = 1,
	target = true,
	type = COMBAT_PHYSICALDAMAGE,
	shootEffect = CONST_ANI_EXPLOSION,
	effect = CONST_ME_EXPLOSIONAREA
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
	type = COMBAT_ICEDAMAGE,
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
