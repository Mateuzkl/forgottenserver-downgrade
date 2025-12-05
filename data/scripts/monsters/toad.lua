local mType = Game.createMonsterType("Toad")
local monster = {}
monster.description = "a toad"
monster.experience = 60
monster.outfit = {lookType = 222}

monster.health = 135
monster.maxHealth = monster.health
monster.race = "blood"
monster.corpse = 6077
monster.speed = 210

monster.changeTarget = {interval = 4 * 1000, chance = 10}

monster.flags = {
	summonable = true,
	attackable = true,
	hostile = true,
	illusionable = true,
	convinceable = false,
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
	{text = "Ribbit, ribbit!", yell = false},
	{text = "Ribbit!", yell = false},
}

monster.loot = {
{
	id = "gold coin",
	chance = 80000,
	maxCount = 20
},
{
	id = "war hammer",
	chance = 148
},
{
	id = "mace",
	chance = 2854
},
{
	id = 2667,
	chance = 20000
},
{
	id = "poisonous slime",
	chance = 4761
}
}

monster.attacks = {
{
	name = "melee",
	interval = 2 * 1000,
	attack = 30,
	skill = 70,
	effect = CONST_ME_DRAWBLOOD
},
{
	name = "combat",
	interval = 2 * 1000,
	chance = 20,
	minDamage = -8,
	maxDamage = -17,
	range = 7,
	type = COMBAT_PHYSICALDAMAGE,
	shootEffect = CONST_ANI_POISON,
	effect = CONST_ME_GREENBUBBLE
}
}

monster.defenses = {
	defense = 15,
	armor = 15,
	{
			name = "speed",
			interval = 2 * 1000,
			chance = 15,
			speed = 200,
			duration = 5 * 1000,
			effect = CONST_ME_MAGIC_RED
		},
}

monster.elements = {
{
	type = COMBAT_EARTHDAMAGE,
	percent = 20
},
{
	type = COMBAT_ICEDAMAGE,
	percent = 20
},
{
	type = COMBAT_FIREDAMAGE,
	percent = -10
}
}

mType:register(monster)
