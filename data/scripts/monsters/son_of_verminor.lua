local mType = Game.createMonsterType("Son of Verminor")
local monster = {}
monster.description = "Son of Verminor"
monster.experience = 5900
monster.outfit = {lookType = 19}

monster.health = 8500
monster.maxHealth = monster.health
monster.race = "venom"
monster.corpse = 1490
monster.speed = 240

monster.changeTarget = {interval = 4 * 1000, chance = 10}

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
	staticAttackChance = 70,
	canwalkonfire = false
}

monster.voices = {
	interval = 5000,
	chance = 10,
	{text = "Blubb", yell = false},
}

monster.attacks = {
{
	name = "melee",
	interval = 2 * 1000,
	attack = 473,
	skill = 70,
	effect = CONST_ME_DRAWBLOOD
},
{
	name = "combat",
	interval = 2 * 1000,
	chance = 20,
	minDamage = -150,
	maxDamage = -200,
	range = 7,
	target = true,
	type = COMBAT_EARTHDAMAGE,
	shootEffect = CONST_ANI_POISON
},
{
	name = "combat",
	interval = 2 * 1000,
	chance = 15,
	minDamage = -350,
	maxDamage = -390,
	radius = 3,
	target = false,
	type = COMBAT_EARTHDAMAGE,
	effect = CONST_ME_POISON
},
{
	name = "combat",
	interval = 2 * 1000,
	chance = 15,
	minDamage = -220,
	maxDamage = -270,
	radius = 3,
	target = false,
	type = COMBAT_DEATHDAMAGE,
	effect = CONST_ME_SMALLCLOUDS
}
}

monster.defenses = {
	defense = 20,
	armor = 20,
	{
			name = "combat",
			interval = 2 * 1000,
			chance = 20,
			type = COMBAT_HEALING,
			minDamage = 250,
			maxDamage = 350,
			effect = CONST_ME_MAGIC_BLUE
		},
	{
			name = "outfit",
			interval = 5 * 1000,
			chance = 10,
			effect = CONST_ME_MAGIC_BLUE
		},
	{
			name = "outfit",
			interval = 5 * 1000,
			chance = 10,
			effect = CONST_ME_MAGIC_BLUE
		},
	{
			name = "outfit",
			interval = 5 * 1000,
			chance = 10,
			effect = CONST_ME_MAGIC_BLUE
		},
	{
			name = "outfit",
			interval = 5 * 1000,
			chance = 10,
			effect = CONST_ME_MAGIC_BLUE
		},
}

monster.elements = {
{
	type = COMBAT_FIREDAMAGE,
	percent = 10
},
{
	type = COMBAT_ENERGYDAMAGE,
	percent = 20
}
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
