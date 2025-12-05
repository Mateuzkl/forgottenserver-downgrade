local mType = Game.createMonsterType("Dracola")
local monster = {}
monster.description = "Dracola"
monster.experience = 11000
monster.outfit = {lookType = 231}

monster.health = 16200
monster.maxHealth = monster.health
monster.race = "undead"
monster.corpse = 6307
monster.speed = 410

monster.changeTarget = {interval = 2 * 1000, chance = 5}

monster.flags = {
	summonable = false,
	attackable = true,
	hostile = true,
	illusionable = false,
	convinceable = false,
	pushable = true,
	canpushitems = true,
	canpushcreatures = true,
	targetDistance = 1,
	isboss = true
}

monster.voices = {
	interval = 2000,
	chance = 5,
	{text = "DEATH CAN'T STOP MY HUNGER!", yell = true},
}

monster.loot = {
{
	id = "platinum coin",
	chance = 20000,
	maxCount = 8
},
{
	id = "demonic essence",
	chance = 1000,
	maxCount = 4
},
{
	id = "Dracola's eye",
	chance = 100000
}
}

monster.attacks = {
{
	name = "melee",
	interval = 2 * 1000,
	attack = 404,
	skill = 70,
	effect = CONST_ME_DRAWBLOOD
},
{
	name = "melee",
	interval = 2 * 1000,
	chance = 20,
	range = 7,
	radius = 4,
	target = true,
	attack = 395,
	skill = 70,
	effect = CONST_ME_REDSPARK,
	shootEffect = CONST_ANI_FIRE
},
{
	name = "combat",
	interval = 3 * 1000,
	chance = 10,
	minDamage = 0,
	maxDamage = -800,
	range = 7,
	type = COMBAT_PHYSICALDAMAGE,
	shootEffect = CONST_ANI_SUDDENDEATH,
	effect = CONST_ME_MORTAREA
},
{
	name = "combat",
	interval = 2 * 1000,
	chance = 20,
	minDamage = -120,
	maxDamage = -390,
	range = 7,
	radius = 4,
	target = true,
	type = COMBAT_EARTHDAMAGE,
	shootEffect = CONST_ANI_POISON,
	effect = CONST_ME_POISON
},
{
	name = "combat",
	interval = 1 * 1000,
	chance = 23,
	minDamage = -50,
	maxDamage = -180,
	range = 7,
	type = COMBAT_EARTHDAMAGE,
	shootEffect = CONST_ANI_POISON,
	effect = CONST_ME_POISON
},
{
	name = "combat",
	interval = 4 * 1000,
	chance = 20,
	minDamage = -500,
	maxDamage = -600,
	length = 8,
	spread = 3,
	type = COMBAT_FIREDAMAGE,
	effect = CONST_ME_FIREAREA
},
{
	name = "combat",
	interval = 2 * 1000,
	chance = 20,
	minDamage = -200,
	maxDamage = -685,
	length = 8,
	spread = 3,
	type = COMBAT_EARTHDAMAGE,
	effect = CONST_ME_POISON
},
{
	name = "combat",
	interval = 3 * 1000,
	chance = 20,
	minDamage = -300,
	maxDamage = -600,
	length = 8,
	spread = 3,
	type = COMBAT_LIFEDRAIN,
	effect = CONST_ME_MAGIC_GREEN
},
{
	name = "combat",
	type = COMBAT_DROWNDAMAGE,
	conditionType = CONDITION_DROWN,
	conditionTickInterval = 2000,
	interval = 1 * 1000,
	chance = 20,
	length = 8,
	spread = 3,
	effect = CONST_ME_POFF
}
}

monster.defenses = {
	defense = 39,
	armor = 40,
}

monster.immunities = {
{
	type = "earth",
	combat = true,
	condition = true
},
{
	type = "paralyze",
	condition = true
},
{
	type = "invisible",
	condition = true
}
}

mType:register(monster)
