local mType = Game.createMonsterType("Darakan the Executioner")
local monster = {}
monster.description = "Darakan the Executioner"
monster.experience = 1600
monster.outfit = {lookType = 255}

monster.health = 3480
monster.maxHealth = monster.health
monster.race = "blood"
monster.corpse = 7349
monster.speed = 205

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
	{text = "FIGHT LIKE A BARBARIAN!", yell = true},
	{text = "VICTORY IS MINE!", yell = true},
	{text = "I AM your father!", yell = false},
	{text = "To be the man you have to beat the man!", yell = false},
}

monster.attacks = {
{
	name = "melee",
	interval = 2 * 1000,
	attack = 210,
	skill = 70,
	effect = CONST_ME_DRAWBLOOD
},
{
	name = "combat",
	interval = 1 * 1000,
	chance = 100,
	minDamage = -72,
	maxDamage = -130,
	type = COMBAT_PHYSICALDAMAGE,
	shootEffect = CONST_ANI_SPEAR
}
}

monster.defenses = {
	defense = 31,
	armor = 30,
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
	type = COMBAT_ICEDAMAGE,
	percent = 15
},
{
	type = COMBAT_FIREDAMAGE,
	percent = -15
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
