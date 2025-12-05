local mType = Game.createMonsterType("Kreebosh the Exile")
local monster = {}
monster.description = "Kreebosh the Exile"
monster.experience = 350
monster.outfit = {lookType = 103}

monster.health = 705
monster.maxHealth = monster.health
monster.race = "blood"
monster.corpse = 7349
monster.speed = 270
monster.maxSummons = 2

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

monster.summons = {
{
	name = "Green Djinn",
	chance = 20,
	interval = 5 * 1000
}
}

monster.voices = {
	interval = 5000,
	chance = 5,
	{text = "I bet you wish you weren't here.", yell = false},
}

monster.attacks = {
{
	name = "melee",
	interval = 2 * 1000,
	attack = 100,
	skill = 70,
	effect = CONST_ME_DRAWBLOOD
},
{
	name = "combat",
	interval = 6 * 1000,
	chance = 80,
	minDamage = 0,
	maxDamage = -120,
	radius = 3,
	type = COMBAT_FIREDAMAGE,
	effect = CONST_ANI_ENERGY
},
{
	name = "speed",
	interval = 3 * 1000,
	chance = 35,
	range = 5,
	radius = 1,
	target = true,
	speed = -450,
	duration = 20 * 1000,
	effect = CONST_ME_MAGIC_RED
},
{
	name = "combat",
	interval = 6 * 1000,
	chance = 40,
	minDamage = -20,
	maxDamage = -100,
	range = 5,
	radius = 1,
	target = true,
	type = COMBAT_PHYSICALDAMAGE,
	effect = CONST_ME_MORTAREA,
	shootEffect = CONST_ANI_SUDDENDEATH
},
{
	name = "combat",
	interval = 5 * 1000,
	chance = 20,
	minDamage = -40,
	maxDamage = -200,
	range = 5,
	radius = 1,
	target = true,
	type = COMBAT_ENERGYDAMAGE,
	effect = CONST_ME_FIREAREA,
	shootEffect = CONST_ANI_ENERGY
},
{
	name = "drunk",
	interval = 1 * 1000,
	chance = 20,
	range = 5,
	radius = 1,
	target = true,
	duration = 30 * 1000
},
{
	name = "outfit",
	interval = 2 * 1000,
	chance = 50,
	range = 5,
	radius = 1,
	target = true,
	duration = 60 * 1000,
	effect = CONST_ME_MAGIC_GREEN
}
}

monster.defenses = {
	defense = 40,
	armor = 30,
}

monster.elements = {
{
	type = COMBAT_ENERGYDAMAGE,
	percent = 55
},
{
	type = COMBAT_DEATHDAMAGE,
	percent = -10
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
