local mType = Game.createMonsterType("Deathbringer")
local monster = {}
monster.description = "Deathbringer"
monster.experience = 5100
monster.outfit = {lookType = 231}

monster.health = 8440
monster.maxHealth = monster.health
monster.race = "undead"
monster.corpse = 7349
monster.speed = 300

monster.flags = {
	summonable = false,
	attackable = true,
	hostile = true,
	illusionable = false,
	convinceable = false,
	pushable = false,
	canpushitems = true,
	targetDistance = 1,
	canwalkonenergy = false
}

monster.voices = {
	interval = 5000,
	chance = 10,
	{text = "YOU FOOLS WILL PAY!", yell = true},
	{text = "YOU ALL WILL DIE!!", yell = true},
	{text = "DEATH, DESTRUCTION!", yell = true},
	{text = "I will eat your soul!", yell = false},
}

monster.attacks = {
{
	name = "melee",
	interval = 2 * 1000,
	attack = 465,
	skill = 70,
	effect = CONST_ME_DRAWBLOOD
},
{
	name = "combat",
	interval = 1 * 1000,
	chance = 10,
	minDamage = -80,
	maxDamage = -120,
	range = 7,
	radius = 4,
	target = true,
	type = COMBAT_FIREDAMAGE,
	shootEffect = CONST_ANI_FIRE,
	effect = CONST_ME_REDSPARK
},
{
	name = "combat",
	interval = 3 * 1000,
	chance = 17,
	minDamage = -300,
	maxDamage = -450,
	length = 8,
	spread = 3,
	type = COMBAT_FIREDAMAGE,
	effect = CONST_ME_FIREAREA
},
{
	name = "combat",
	interval = 2 * 1000,
	chance = 12,
	minDamage = -300,
	maxDamage = -450,
	length = 8,
	spread = 3,
	type = COMBAT_EARTHDAMAGE,
	effect = CONST_ME_POISON
},
{
	name = "combat",
	interval = 2 * 1000,
	chance = 10,
	minDamage = -80,
	maxDamage = -100,
	radius = 6,
	target = false,
	type = COMBAT_LIFEDRAIN,
	effect = CONST_ME_POFF
},
{
	name = "combat",
	interval = 3 * 1000,
	chance = 25,
	minDamage = -80,
	maxDamage = -150,
	range = 7,
	type = COMBAT_LIFEDRAIN,
	effect = CONST_ME_MAGIC_RED
}
}

monster.defenses = {
	defense = 15,
	armor = 15,
}

monster.elements = {
{
	type = COMBAT_ENERGYDAMAGE,
	percent = 10
},
{
	type = COMBAT_HOLYDAMAGE,
	percent = -15
}
}

monster.immunities = {
{
	type = "death",
	combat = true,
	condition = true
},
{
	type = "fire",
	combat = true,
	condition = true
},
{
	type = "ice",
	combat = true,
	condition = true
},
{
	type = "earth",
	combat = true,
	condition = true
},
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
