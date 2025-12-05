local mType = Game.createMonsterType("Fallen Mooh'tah Master Ghar")
local monster = {}
monster.description = "Fallen Mooh'Tah Master Ghar"
monster.experience = 4400
monster.outfit = {lookType = 29}

monster.health = 7990
monster.maxHealth = monster.health
monster.race = "blood"
monster.corpse = 7349
monster.speed = 190

monster.flags = {
	summonable = false,
	attackable = true,
	hostile = true,
	illusionable = false,
	convinceable = false,
	pushable = false,
	canpushitems = true,
	targetDistance = 1,
	canwalkonenergy = false,
	canwalkonfire = false,
	canwalkonpoison = false
}

monster.voices = {
	interval = 2000,
	chance = 5,
	{text = "I will finish you!", yell = false},
	{text = "You are no match for a master of the Mooh'Tha!", yell = false},
	{text = "I might be fallen but you will fall before me!", yell = false},
}

monster.attacks = {
{
	name = "melee",
	interval = 2 * 1000,
	attack = 525,
	skill = 70,
	effect = CONST_ME_DRAWBLOOD
},
{
	name = "combat",
	interval = 6 * 1000,
	chance = 30,
	minDamage = -80,
	maxDamage = -300,
	length = 8,
	spread = 3,
	type = COMBAT_FIREDAMAGE,
	effect = CONST_ME_FIREAREA
},
{
	name = "combat",
	interval = 3 * 1000,
	chance = 45,
	minDamage = -80,
	maxDamage = -400,
	radius = 5,
	target = true,
	type = COMBAT_FIREDAMAGE,
	shootEffect = CONST_ANI_FIRE
},
{
	name = "combat",
	interval = 4 * 1000,
	chance = 30,
	minDamage = -80,
	maxDamage = -270,
	type = COMBAT_DEATHDAMAGE,
	shootEffect = CONST_ANI_DEATH,
	effect = CONST_ME_MORTAREA
},
{
	name = "combat",
	type = COMBAT_EARTHDAMAGE,
	conditionType = CONDITION_POISON,
	conditionMinDamage = -10,
	conditionMaxDamage = -200,
	conditionTickInterval = 2000,
	interval = 4 * 1000,
	chance = 40,
	range = 10,
	shootEffect = CONST_ANI_POISON
},
{
	name = "combat",
	interval = 5 * 1000,
	chance = 30,
	minDamage = -60,
	maxDamage = -300,
	length = 8,
	spread = 3,
	type = COMBAT_EARTHDAMAGE,
	effect = CONST_ME_POISON
}
}

monster.defenses = {
	defense = 33,
	armor = 30,
}

monster.elements = {
{
	type = COMBAT_FIREDAMAGE,
	percent = 60
}
}

monster.immunities = {
{
	type = "outfit",
	condition = true
},
{
	type = "drunk",
	condition = true
},
{
	type = "invisible",
	condition = true
}
}

mType:register(monster)
