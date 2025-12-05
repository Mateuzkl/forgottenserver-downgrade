local mType = Game.createMonsterType("Drasilla")
local monster = {}
monster.description = "Drasilla"
monster.experience = 700
monster.outfit = {lookType = 34}

monster.health = 1260
monster.maxHealth = monster.health
monster.race = "blood"
monster.corpse = 7349
monster.speed = 170

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
	canwalkonpoison = false
}

monster.voices = {
	interval = 2000,
	chance = 5,
	{text = "FCHHHHHHHH!", yell = false},
	{text = "GROOOOAAAAAAAAR!", yell = false},
	{text = "DIRTY LITTLE HUMANS", yell = false},
	{text = "YOU CAN'T KEEP ME HERE FOREVER", yell = false},
}

monster.attacks = {
{
	name = "melee",
	interval = 2 * 1000,
	attack = 120,
	skill = 70,
	effect = CONST_ME_DRAWBLOOD
},
{
	name = "combat",
	interval = 6 * 1000,
	chance = 60,
	minDamage = -100,
	maxDamage = -180,
	length = 8,
	spread = 3,
	type = COMBAT_FIREDAMAGE,
	effect = CONST_ME_FIREAREA
},
{
	name = "combat",
	interval = 3 * 1000,
	chance = 50,
	minDamage = -70,
	maxDamage = -115,
	range = 10,
	radius = 5,
	target = true,
	type = COMBAT_FIREDAMAGE,
	effect = CONST_ME_FIREAREA
}
}

monster.defenses = {
	defense = 33,
	armor = 32,
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
	type = COMBAT_ENERGYDAMAGE,
	percent = 20
},
{
	type = COMBAT_ICEDAMAGE,
	percent = -10
}
}

monster.immunities = {
{
	type = "fire",
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
