local mType = Game.createMonsterType("Dragon Lord Hatchling")
local monster = {}
monster.description = "a dragon lord hatchling"
monster.experience = 645
monster.outfit = {lookType = 272}

monster.health = 750
monster.maxHealth = monster.health
monster.race = "blood"
monster.corpse = 7622
monster.speed = 190

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
	chance = 33750,
	maxCount = 90
},
{
	id = "gold coin",
	chance = 33750,
	maxCount = 75
},
{
	id = "dragon ham",
	chance = 80000
},
{
	id = "green mushroom",
	chance = 560
},
{
	id = "mana potion",
	chance = 300
},
{
	id = "magma boots",
	chance = 100
}
}

monster.attacks = {
{
	name = "melee",
	interval = 2 * 1000,
	attack = 90,
	skill = 70,
	effect = CONST_ME_DRAWBLOOD
},
{
	name = "combat",
	interval = 2 * 1000,
	chance = 10,
	minDamage = -90,
	maxDamage = -125,
	length = 5,
	spread = 2,
	type = COMBAT_FIREDAMAGE,
	effect = CONST_ME_FIREAREA
},
{
	name = "combat",
	interval = 2 * 1000,
	chance = 15,
	minDamage = -55,
	maxDamage = -105,
	range = 7,
	radius = 4,
	target = true,
	type = COMBAT_FIREDAMAGE,
	shootEffect = CONST_ANI_FIRE,
	effect = CONST_ME_FIREAREA
},
{
	name = "firefield",
	interval = 2 * 1000,
	chance = 10,
	range = 7,
	radius = 3,
	target = true,
	shootEffect = CONST_ANI_FIRE
}
}

monster.defenses = {
	defense = 20,
	armor = 20,
	{
			name = "combat",
			interval = 2 * 1000,
			chance = 15,
			type = COMBAT_HEALING,
			minDamage = 26,
			maxDamage = 48,
			effect = CONST_ME_MAGIC_BLUE
		},
}

monster.elements = {
{
	type = COMBAT_EARTHDAMAGE,
	percent = 10
},
{
	type = COMBAT_ICEDAMAGE,
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
	type = "fire",
	combat = true,
	condition = true
}
}

mType:register(monster)
