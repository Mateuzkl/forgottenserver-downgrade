local mType = Game.createMonsterType("Phantasm")
local monster = {}
monster.description = "a phantasm"
monster.experience = 1
monster.outfit = {lookType = 241}

monster.health = 65
monster.maxHealth = monster.health
monster.race = "undead"
monster.corpse = 6344
monster.speed = 340

monster.changeTarget = {interval = 4 * 1000, chance = 10}

monster.flags = {
	attackable = true,
	hostile = true,
	pushable = false,
	canpushitems = true,
	canpushcreatures = true,
	targetDistance = 1,
	staticAttackChance = 90,
	canwalkonenergy = false,
	canwalkonfire = false,
	canwalkonpoison = false
}

monster.voices = {
	interval = 5000,
	chance = 10,
	{text = "Oh my, you forgot to put your pants on!", yell = false},
	{text = "Weeheeheeheehee!", yell = false},
	{text = "Its nothing but a dream!", yell = false},
	{text = "Give in!", yell = false},
}

monster.attacks = {
{
	name = "melee",
	interval = 2 * 1000,
	attack = 15,
	skill = 70,
	effect = CONST_ME_DRAWBLOOD
},
{
	name = "combat",
	interval = 2 * 1000,
	chance = 15,
	minDamage = -34,
	maxDamage = -59,
	range = 7,
	type = COMBAT_DEATHDAMAGE,
	shootEffect = CONST_ANI_SUDDENDEATH,
	effect = CONST_ME_MORTAREA
},
{
	name = "combat",
	interval = 2 * 1000,
	chance = 10,
	minDamage = -5,
	maxDamage = -7,
	radius = 3,
	target = false,
	type = COMBAT_MANADRAIN,
	effect = CONST_ME_YELLOWBUBBLE
},
{
	name = "drunk",
	interval = 2 * 1000,
	chance = 5,
	radius = 5,
	target = false,
	duration = 6 * 1000,
	effect = CONST_ME_MAGIC_RED
}
}

monster.defenses = {
	defense = 10,
	armor = 10,
	{
			name = "combat",
			interval = 2 * 1000,
			chance = 30,
			type = COMBAT_HEALING,
			minDamage = 40,
			maxDamage = 65,
			effect = CONST_ME_MAGIC_BLUE
		},
	{
			name = "speed",
			interval = 2 * 1000,
			chance = 10,
			speed = 500,
			duration = 6 * 1000,
			effect = CONST_ME_MAGIC_RED
		},
	{
			name = "invisible",
			interval = 2 * 1000,
			chance = 25,
			effect = CONST_ME_MAGIC_BLUE
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
	type = COMBAT_HOLYDAMAGE,
	percent = -10
},
{
	type = COMBAT_FIREDAMAGE,
	percent = -10
},
{
	type = COMBAT_ENERGYDAMAGE,
	percent = -10
}
}

monster.immunities = {
{
	type = "paralyze",
	condition = true
},
{
	type = "invisible",
	condition = true
},
{
	type = "death",
	combat = true,
	condition = true
},
{
	type = "lifedrain",
	combat = true
},
{
	type = "physical",
	combat = true,
	condition = true
}
}

mType:register(monster)
