local mType = Game.createMonsterType("The Pit Lord")
local monster = {}
monster.description = "The Pit Lord"
monster.experience = 2500
monster.outfit = {lookType = 55}

monster.health = 5270
monster.maxHealth = monster.health
monster.race = "blood"
monster.corpse = 7349
monster.speed = 270

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
	{text = "I'LL GET YOU ALL!", yell = true},
	{text = "I won't let you escape!", yell = false},
	{text = "I'll crush you beneath my feet!", yell = false},
}

monster.attacks = {
{
	name = "melee",
	interval = 2 * 1000,
	attack = 380,
	skill = 70,
	effect = CONST_ME_DRAWBLOOD
},
{
	name = "combat",
	interval = 7 * 1000,
	chance = 100,
	minDamage = -100,
	maxDamage = -250,
	type = COMBAT_PHYSICALDAMAGE,
	shootEffect = CONST_ANI_LARGEROCK
}
}

monster.defenses = {
	defense = 44,
	armor = 46,
	{
			name = "speed",
			interval = 5 * 1000,
			chance = 100,
			speed = 500,
			duration = 2 * 1000,
			effect = CONST_ME_MAGIC_RED
		},
	{
			name = "combat",
			interval = 6 * 1000,
			chance = 65,
			type = COMBAT_HEALING,
			minDamage = 20,
			maxDamage = 50,
			effect = CONST_ME_MAGIC_BLUE
		},
}

monster.elements = {
{
	type = COMBAT_EARTHDAMAGE,
	percent = 35
},
{
	type = COMBAT_ICEDAMAGE,
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
