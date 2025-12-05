local mType = Game.createMonsterType("The Hag")
local monster = {}
monster.description = "The Hag"
monster.experience = 510
monster.outfit = {lookType = 264}

monster.health = 935
monster.maxHealth = monster.health
monster.race = "blood"
monster.corpse = 7349
monster.speed = 205
monster.maxSummons = 2

monster.flags = {
	summonable = false,
	attackable = true,
	hostile = true,
	illusionable = false,
	convinceable = false,
	pushable = false,
	canpushitems = true,
	targetDistance = 5,
	canwalkonenergy = false,
	canwalkonfire = false,
	canwalkonpoison = false
}

monster.summons = {
{
	name = "Ghost",
	chance = 26,
	interval = 2 * 1000
},
{
	name = "Crypt Shambler",
	chance = 26,
	interval = 2 * 1000
}
}

monster.voices = {
	interval = 2000,
	chance = 5,
	{text = "If you think I am to old to fight then you're wrong!", yell = false},
	{text = "I've forgotten more things then you have ever learned!", yell = false},
	{text = "Let me teach you a few things youngster!", yell = false},
	{text = "I'll teach you respect for the old!", yell = false},
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
	name = "drunk",
	interval = 3 * 1000,
	chance = 35,
	range = 5,
	radius = 1,
	target = true,
	duration = 15 * 1000
},
{
	name = "speed",
	interval = 4 * 1000,
	chance = 55,
	range = 5,
	radius = 1,
	target = true,
	speed = -400,
	duration = 12 * 1000,
	effect = CONST_ME_MAGIC_RED
}
}

monster.defenses = {
	defense = 25,
	armor = 24,
	{
			name = "combat",
			interval = 2 * 1000,
			chance = 35,
			type = COMBAT_HEALING,
			minDamage = 15,
			maxDamage = 75,
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
	percent = 30
},
{
	type = COMBAT_ICEDAMAGE,
	percent = 20
},
{
	type = COMBAT_ENERGYDAMAGE,
	percent = 10
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
