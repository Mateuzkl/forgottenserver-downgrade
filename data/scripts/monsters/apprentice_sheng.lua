local mType = Game.createMonsterType("Apprentice Sheng")
local monster = {}
monster.description = "Apprentice Sheng"
monster.experience = 150
monster.outfit = {lookType = 23}

monster.health = 95
monster.maxHealth = monster.health
monster.race = "blood"
monster.corpse = 5981
monster.speed = 170
monster.maxSummons = 2

monster.changeTarget = {interval = 5 * 1000, chance = 8}

monster.flags = {
	isboss = true,
	pushable = false,
	canpushitems = true,
	canpushcreatures = true,
	staticAttackChance = 90,
	targetDistance = 4,
	canwalkonenergy = false,
	canwalkonfire = false,
	canwalkonpoison = false
}

monster.summons = {
{
	name = "Hyaena",
	chance = 100,
	interval = 1 * 1000
}
}

monster.voices = {
	interval = 1000,
	chance = 5,
	{text = "I will protect the secrets of my master!", yell = false},
	{text = "Kaplar!", yell = false},
	{text = "This isle will become ours alone", yell = false},
	{text = "You already know too much.", yell = false},
}

monster.loot = {
{
	id = "minotaur leather",
	chance = 100000
},
{
	id = "magic light wand",
	chance = 82222
},
{
	id = "gold coin",
	chance = 71111,
	maxCount = 10
},
{
	id = "torch",
	chance = 24444,
	maxCount = 2
},
{
	id = "leather legs",
	chance = 13333
},
{
	id = "knife",
	chance = 11111
},
{
	id = "carrot",
	chance = 6667,
	maxCount = 7
},
{
	id = "leather helmet",
	chance = 6667
}
}

monster.attacks = {
{
	name = "melee",
	interval = 2 * 1000,
	attack = 10,
	skill = 70,
	effect = CONST_ME_DRAWBLOOD
},
{
	name = "combat",
	interval = 1 * 1000,
	chance = 14,
	minDamage = -15,
	maxDamage = -25,
	range = 7,
	type = COMBAT_ENERGYDAMAGE,
	shootEffect = CONST_ANI_ENERGYBALL,
	effect = CONST_ME_ENERGYAREA
},
{
	name = "combat",
	interval = 2 * 1000,
	chance = 10,
	minDamage = -15,
	maxDamage = -45,
	range = 7,
	radius = 1,
	target = true,
	type = COMBAT_FIREDAMAGE,
	shootEffect = CONST_ANI_FIRE,
	effect = CONST_ME_FIREAREA
},
{
	name = "energyfield",
	interval = 1 * 1000,
	chance = 8,
	range = 7,
	radius = 1,
	target = true,
	shootEffect = CONST_ANI_ENERGY
},
{
	name = "effect",
	interval = 1 * 1000,
	chance = 100,
	radius = 3,
	target = false,
	effect = CONST_ME_MAGIC_RED
}
}

monster.defenses = {
	defense = 18,
	armor = 18,
}

monster.immunities = {
{
	type = "energy",
	combat = true,
	condition = true
}
}

mType:register(monster)
