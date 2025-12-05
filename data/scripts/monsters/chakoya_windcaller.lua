local mType = Game.createMonsterType("Chakoya Windcaller")
local monster = {}
monster.description = "a chakoya windcaller"
monster.experience = 48
monster.outfit = {lookType = 260}

monster.health = 84
monster.maxHealth = monster.health
monster.race = "blood"
monster.corpse = 7320
monster.speed = 200

monster.flags = {
	summonable = false,
	attackable = true,
	hostile = true,
	illusionable = false,
	convinceable = true,
	pushable = false,
	canpushitems = true,
	staticAttackChance = 90,
	targetDistance = 4,
	canwalkonenergy = false,
	canwalkonfire = false,
	canwalkonpoison = false
}

monster.voices = {
	interval = 5000,
	chance = 10,
	{text = "Mupi! Si siyoqua jinuma!", yell = false},
	{text = "Siqsiq ji jusipa!", yell = false},
	{text = "Jagura taluka taqua!", yell = false},
	{text = "Quatu nguraka!", yell = false},
}

monster.loot = {
{
	id = "gold coin",
	chance = 50000,
	maxCount = 26
},
{
	id = "brass helmet",
	chance = 3250
},
{
	id = "bone shield",
	chance = 950
},
{
	id = 2667,
	chance = 29000,
	maxCount = 3
},
{
	id = "northern pike",
	chance = 60
},
{
	id = "rainbow trout",
	chance = 60
},
{
	id = "green perch",
	chance = 60
}
}

monster.attacks = {
{
	name = "melee",
	interval = 2 * 1000,
	attack = 22,
	skill = 70,
	effect = CONST_ME_DRAWBLOOD
},
{
	name = "combat",
	interval = 2 * 1000,
	chance = 15,
	minDamage = -16,
	maxDamage = -32,
	range = 7,
	type = COMBAT_ICEDAMAGE,
	shootEffect = CONST_ANI_ICE
},
{
	name = "combat",
	type = COMBAT_ICEDAMAGE,
	conditionType = CONDITION_FREEZING,
	conditionMinDamage = -130,
	conditionMaxDamage = -160,
	conditionTickInterval = 2000,
	interval = 2 * 1000,
	chance = 10,
	radius = 3,
	target = false,
	effect = CONST_ME_ICEAREA
},
{
	name = "combat",
	interval = 2 * 1000,
	chance = 10,
	minDamage = -9,
	maxDamage = -30,
	target = false,
	length = 5,
	spread = 2,
	type = COMBAT_ICEDAMAGE,
	effect = CONST_ME_ICEAREA
}
}

monster.defenses = {
	defense = 10,
	armor = 10,
	{
			name = "invisible",
			interval = 2 * 1000,
			chance = 15,
			effect = CONST_ME_MAGIC_BLUE
		},
}

monster.elements = {
{
	type = COMBAT_FIREDAMAGE,
	percent = 50
},
{
	type = COMBAT_HOLYDAMAGE,
	percent = 20
},
{
	type = COMBAT_ENERGYDAMAGE,
	percent = -15
},
{
	type = COMBAT_DEATHDAMAGE,
	percent = -10
}
}

monster.immunities = {
{
	type = "ice",
	combat = true,
	condition = true
}
}

mType:register(monster)
