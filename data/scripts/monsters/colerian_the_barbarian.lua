local mType = Game.createMonsterType("Colerian the Barbarian")
local monster = {}
monster.description = "Colerian the Barbarian"
monster.experience = 90
monster.outfit = {lookType = 253}

monster.health = 265
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
	{text = "Flee, coward!", yell = false},
	{text = "You will lose!", yell = false},
	{text = "Yeehaawh", yell = false},
}

monster.attacks = {
{
	name = "melee",
	interval = 2 * 1000,
	attack = 60,
	skill = 70,
	effect = CONST_ME_DRAWBLOOD
},
{
	name = "combat",
	interval = 1 * 1000,
	chance = 80,
	minDamage = 0,
	maxDamage = -40,
	range = 5,
	radius = 1,
	target = true,
	type = COMBAT_PHYSICALDAMAGE,
	shootEffect = CONST_ANI_PIERCINGBOLT
}
}

monster.defenses = {
	defense = 20,
	armor = 19,
}

monster.elements = {
{
	type = COMBAT_ENERGYDAMAGE,
	percent = 20
},
{
	type = COMBAT_EARTHDAMAGE,
	percent = -20
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
