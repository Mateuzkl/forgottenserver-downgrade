local mType = Game.createMonsterType("Dragon Hatchling")
local monster = {}
monster.description = "a dragon hatchling"
monster.experience = 185
monster.outfit = {lookType = 271}

monster.health = 380
monster.maxHealth = monster.health
monster.race = "blood"
monster.corpse = 7621
monster.speed = 170

monster.changeTarget = {interval = 4 * 1000, chance = 10}

monster.flags = {
	summonable = false,
	attackable = true,
	hostile = true,
	illusionable = true,
	convinceable = false,
	pushable = false,
	canpushitems = true,
	canpushcreatures = true,
	targetDistance = 1,
	staticAttackChance = 90,
	canwalkonenergy = false,
	canwalkonpoison = false
}

monster.voices = {
	interval = 5000,
	chance = 10,
	{text = "Fchu?", yell = false},
	{text = "Rooawwrr", yell = false},
}

monster.loot = {
{
	id = "gold coin",
	chance = 67500,
	maxCount = 55
},
{
	id = "dragon ham",
	chance = 61000
},
{
	id = "health potion",
	chance = 400
},
{
	id = "dragon's tail",
	chance = 4300
}
}

monster.attacks = {
{
	name = "melee",
	interval = 2 * 1000,
	attack = 55,
	skill = 70,
	effect = CONST_ME_DRAWBLOOD
},
{
	name = "combat",
	interval = 2 * 1000,
	chance = 10,
	minDamage = -60,
	maxDamage = -90,
	length = 5,
	spread = 2,
	type = COMBAT_FIREDAMAGE,
	effect = CONST_ME_FIREAREA
},
{
	name = "combat",
	interval = 2 * 1000,
	chance = 15,
	minDamage = -30,
	maxDamage = -55,
	range = 7,
	radius = 4,
	target = true,
	type = COMBAT_FIREDAMAGE,
	shootEffect = CONST_ANI_FIRE,
	effect = CONST_ME_FIREAREA
}
}

monster.defenses = {
	defense = 10,
	armor = 10,
	{
			name = "combat",
			interval = 2 * 1000,
			chance = 15,
			type = COMBAT_HEALING,
			minDamage = 8,
			maxDamage = 33,
			effect = CONST_ME_MAGIC_BLUE
		},
}

monster.elements = {
{
	type = COMBAT_EARTHDAMAGE,
	percent = 75
},
{
	type = COMBAT_ICEDAMAGE,
	percent = -10
},
{
	type = COMBAT_ENERGYDAMAGE,
	percent = -5
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
	type = "fire",
	combat = true,
	condition = true
}
}

mType:register(monster)
