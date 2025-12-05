local mType = Game.createMonsterType("The Dark Dancer")
local monster = {}
monster.description = "The Dark Dancer"
monster.experience = 435
monster.outfit = {lookType = 58}

monster.health = 805
monster.maxHealth = monster.health
monster.race = "blood"
monster.corpse = 7349
monster.speed = 170
monster.maxSummons = 3

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
	name = "Ghoul",
	chance = 20,
	interval = 2 * 1000
}
}

monster.voices = {
	interval = 5000,
	chance = 5,
	{text = "I hope you like my voice!", yell = false},
}

monster.attacks = {
{
	name = "melee",
	interval = 2 * 1000,
	attack = 45,
	skill = 70,
	effect = CONST_ME_DRAWBLOOD
},
{
	name = "combat",
	interval = 3 * 1000,
	chance = 70,
	minDamage = -60,
	maxDamage = -95,
	range = 5,
	radius = 1,
	target = true,
	type = COMBAT_PHYSICALDAMAGE,
	effect = CONST_ME_MORTAREA,
	shootEffect = CONST_ANI_SUDDENDEATH
},
{
	name = "combat",
	interval = 6 * 1000,
	chance = 90,
	minDamage = -60,
	maxDamage = -95,
	range = 5,
	radius = 1,
	target = true,
	type = COMBAT_PHYSICALDAMAGE,
	effect = CONST_ME_MORTAREA,
	shootEffect = CONST_ANI_SUDDENDEATH
},
{
	name = "speed",
	interval = 3 * 1000,
	chance = 35,
	range = 5,
	radius = 1,
	target = true,
	speed = -400,
	duration = 10 * 1000,
	effect = CONST_ME_MAGIC_RED
},
{
	name = "combat",
	interval = 4 * 1000,
	chance = 30,
	minDamage = -2,
	maxDamage = -110,
	range = 5,
	radius = 1,
	target = true,
	type = COMBAT_MANADRAIN,
	effect = CONST_ME_MAGIC_RED
}
}

monster.defenses = {
	defense = 12,
	armor = 11,
	{
			name = "combat",
			interval = 2 * 1000,
			chance = 45,
			type = COMBAT_HEALING,
			minDamage = 75,
			maxDamage = 135,
			effect = CONST_ME_MAGIC_BLUE
		},
	{
			name = "invisible",
			interval = 3 * 1000,
			chance = 50,
			effect = CONST_ME_MAGIC_BLUE
		},
}

monster.elements = {
{
	type = COMBAT_FIREDAMAGE,
	percent = 40
},
{
	type = COMBAT_DEATHDAMAGE,
	percent = 20
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
