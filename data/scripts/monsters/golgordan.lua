local mType = Game.createMonsterType("Golgordan")
local monster = {}
monster.description = "Golgordan"
monster.experience = 10000
monster.outfit = {lookType = 12}

monster.health = 40000
monster.maxHealth = monster.health
monster.race = "fire"
monster.corpse = 8721
monster.speed = 350

monster.changeTarget = {interval = 7 * 1000, chance = 10}

monster.flags = {
	summonable = false,
	attackable = true,
	hostile = true,
	illusionable = false,
	convinceable = false,
	pushable = false,
	canpushitems = true,
	canpushcreatures = true,
	targetDistance = 1,
	staticAttackChance = 90,
	isboss = true
}

monster.voices = {
	interval = 5000,
	chance = 10,
	{text = "Latrivan your fool", yell = true},
}

monster.attacks = {
{
	name = "melee",
	interval = 2 * 1000,
	attack = 575,
	skill = 70,
	effect = CONST_ME_DRAWBLOOD
},
{
	name = "combat",
	interval = 3 * 1000,
	chance = 15,
	minDamage = -250,
	maxDamage = -850,
	length = 8,
	spread = 0,
	type = COMBAT_DEATHDAMAGE,
	effect = CONST_ME_MORTAREA
},
{
	name = "combat",
	type = COMBAT_EARTHDAMAGE,
	conditionType = CONDITION_POISON,
	conditionMinDamage = -300,
	conditionMaxDamage = -350,
	conditionTickInterval = 2000,
	interval = 1 * 1000,
	chance = 11,
	length = 5,
	spread = 2,
	effect = CONST_ME_POISON
},
{
	name = "combat",
	interval = 1 * 1000,
	chance = 8,
	minDamage = -50,
	maxDamage = -955,
	radius = 6,
	target = false,
	type = COMBAT_PHYSICALDAMAGE,
	effect = CONST_ME_GROUNDSHAKER
},
{
	name = "combat",
	interval = 2 * 1000,
	chance = 15,
	minDamage = -50,
	maxDamage = -200,
	radius = 7,
	target = true,
	type = COMBAT_FIREDAMAGE,
	effect = CONST_ME_FIREAREA
}
}

monster.defenses = {
	defense = 54,
	armor = 48,
}

monster.elements = {
{
	type = COMBAT_ICEDAMAGE,
	percent = -10
},
{
	type = COMBAT_HOLYDAMAGE,
	percent = 15
},
{
	type = COMBAT_PHYSICALDAMAGE,
	percent = 20
},
{
	type = COMBAT_FIREDAMAGE,
	percent = -5
}
}

monster.immunities = {
{
	type = "death",
	combat = true,
	condition = true
}
}

mType:register(monster)
