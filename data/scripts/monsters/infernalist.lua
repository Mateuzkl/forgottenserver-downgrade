local mType = Game.createMonsterType("Infernalist")
local monster = {}
monster.description = "an infernalist"
monster.experience = 4000
monster.outfit = {lookType = 130}

monster.health = 3650
monster.maxHealth = monster.health
monster.race = "blood"
monster.corpse = 20427
monster.speed = 220
monster.maxSummons = 1

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
	targetDistance = 4,
	staticAttackChance = 95
}

monster.summons = {
{
	name = "fire elemental",
	chance = 20,
	interval = 2 * 1000
}
}

monster.voices = {
	interval = 5000,
	chance = 10,
	{text = "Nothing will remain but your scorched bones!", yell = false},
	{text = "Some like it hot!", yell = false},
	{text = "It's cooking time!", yell = false},
	{text = "Feel the heat of battle!", yell = false},
}

monster.loot = {
{
	id = "red tome",
	chance = 300
},
{
	id = "piggy bank",
	chance = 220
},
{
	id = "gold coin",
	chance = 56500,
	maxCount = 100
},
{
	id = "gold coin",
	chance = 40000,
	maxCount = 47
},
{
	id = "energy ring",
	chance = 1800
},
{
	id = "skull staff",
	chance = 6500
},
{
	id = "magic sulphur",
	chance = 600
},
{
	id = "red piece of cloth",
	chance = 1420
},
{
	id = "great mana potion",
	chance = 19700
},
{
	id = "great health potion",
	chance = 1900
},
{
	id = "small enchanted ruby",
	chance = 4250
},
{
	id = "magma boots",
	chance = 300
},
{
	id = "raspberry",
	chance = 8500,
	maxCount = 5
},
{
	id = "spellbook of mind control",
	chance = 370
},
{
	id = "royal tapestry",
	chance = 520
},
{
	id = "black skull",
	chance = 820
},
{
	id = "gold ingot",
	chance = 70
},
{
	id = "crystal of power",
	chance = 220
}
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
	name = "combat",
	interval = 2 * 1000,
	chance = 40,
	minDamage = -65,
	maxDamage = -180,
	range = 7,
	target = true,
	type = COMBAT_FIREDAMAGE,
	shootEffect = CONST_ANI_FIRE,
	effect = CONST_ANI_FIRE
},
{
	name = "combat",
	interval = 2 * 1000,
	chance = 20,
	minDamage = -90,
	maxDamage = -180,
	range = 7,
	radius = 3,
	target = true,
	type = COMBAT_FIREDAMAGE,
	shootEffect = CONST_ANI_FIRE,
	effect = CONST_ME_FIREAREA
},
{
	name = "combat",
	interval = 2 * 1000,
	chance = 20,
	minDamage = -53,
	maxDamage = -120,
	range = 7,
	radius = 3,
	target = true,
	type = COMBAT_MANADRAIN,
	effect = CONST_ME_TELEPORT,
	shootEffect = CONST_ANI_ENERGYBALL
},
{
	name = "firefield",
	interval = 2 * 1000,
	chance = 15,
	range = 7,
	radius = 3,
	target = true,
	shootEffect = CONST_ANI_FIRE
},
{
	name = "combat",
	interval = 2 * 1000,
	chance = 10,
	minDamage = -150,
	maxDamage = -250,
	length = 8,
	spread = 0,
	type = COMBAT_FIREDAMAGE,
	effect = CONST_ME_FIREATTACK
},
{
	name = "combat",
	interval = 2 * 1000,
	chance = 5,
	minDamage = -100,
	maxDamage = -150,
	radius = 2,
	target = false,
	type = COMBAT_PHYSICALDAMAGE,
	effect = CONST_ME_EXPLOSIONAREA
}
}

monster.defenses = {
	defense = 15,
	armor = 15,
	{
			name = "combat",
			interval = 2 * 1000,
			chance = 15,
			type = COMBAT_HEALING,
			minDamage = 60,
			maxDamage = 230,
			effect = CONST_ME_MAGIC_BLUE
		},
	{
			name = "invisible",
			interval = 2 * 1000,
			chance = 15,
			effect = CONST_ME_MAGIC_BLUE
		},
}

monster.elements = {
{
	type = COMBAT_EARTHDAMAGE,
	percent = 95
},
{
	type = COMBAT_PHYSICALDAMAGE,
	percent = -5
},
{
	type = COMBAT_ICEDAMAGE,
	percent = -5
},
{
	type = COMBAT_HOLYDAMAGE,
	percent = 20
},
{
	type = COMBAT_DEATHDAMAGE,
	percent = 5
}
}

monster.immunities = {
{
	type = "energy",
	combat = true,
	condition = true
},
{
	type = "fire",
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
