local mType = Game.createMonsterType("Webster")
local monster = {}
monster.description = "Webster"
monster.experience = 1200
monster.outfit = {lookType = 263}

monster.health = 2950
monster.maxHealth = monster.health
monster.race = "undead"
monster.corpse = 7349
monster.speed = 290

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
	interval = 2000,
	chance = 5,
	{text = "You are lost!", yell = false},
	{text = "Come my little morsel.", yell = false},
}

monster.attacks = {
{
	name = "melee",
	interval = 2 * 1000,
	attack = 250,
	skill = 70,
	effect = CONST_ME_DRAWBLOOD
},
{
	name = "speed",
	interval = 3 * 1000,
	chance = 65,
	range = 1,
	radius = 1,
	target = true,
	speed = -500,
	duration = 0 * 1000,
	effect = CONST_ME_MAGIC_RED
},
{
	name = "combat",
	interval = 3 * 1000,
	chance = 75,
	minDamage = -13,
	maxDamage = -80,
	range = 7,
	type = COMBAT_ENERGYDAMAGE,
	shootEffect = CONST_ANI_ENERGY
}
}

monster.defenses = {
	defense = 34,
	armor = 29,
	{
			name = "speed",
			interval = 5 * 1000,
			chance = 100,
			speed = 500,
			duration = 2 * 1000,
			effect = CONST_ME_MAGIC_RED
		},
}

monster.elements = {
{
	type = COMBAT_ENERGYDAMAGE,
	percent = -20
}
}

monster.immunities = {
{
	type = "ice",
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
