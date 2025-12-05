local mType = Game.createMonsterType("Hellhound")
local monster = {}
monster.description = "a hellhound"
monster.experience = 5440
monster.outfit = {lookType = 240}

monster.health = 7500
monster.maxHealth = monster.health
monster.race = "blood"
monster.corpse = 6332
monster.speed = 360

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
	staticAttackChance = 70,
	canwalkonenergy = true,
	canwalkonfire = true,
	canwalkonpoison = true
}

monster.voices = {
	interval = 5000,
	chance = 10,
	{text = "GROOOWL!", yell = false},
	{text = "GRRRRR!", yell = false},
}

monster.loot = {
{
	id = "platinum coin",
	chance = 100000,
	maxCount = 7
},
{
	id = "ham",
	chance = 30654
},
{
	id = "great mana potion",
	chance = 29039,
	maxCount = 3
},
{
	id = "assassin star",
	chance = 24901,
	maxCount = 10
},
{
	id = "demonic essence",
	chance = 21552
},
{
	id = "hellhound slobber",
	chance = 20449
},
{
	id = "flask of demonic blood",
	chance = 20331
},
{
	id = "great spirit potion",
	chance = 19819
},
{
	id = "soul orb",
	chance = 19622
},
{
	id = "ultimate health potion",
	chance = 15288
},
{
	id = "small emerald",
	chance = 11072,
	maxCount = 3
},
{
	id = "hardened bone",
	chance = 10914
},
{
	id = "small topaz",
	chance = 10402,
	maxCount = 3
},
{
	id = "fiery heart",
	chance = 9890
},
{
	id = "small ruby",
	chance = 9614,
	maxCount = 3
},
{
	id = "black pearl",
	chance = 9456,
	maxCount = 4
},
{
	id = "wand of inferno",
	chance = 8353
},
{
	id = "knight axe",
	chance = 7486
},
{
	id = "fire sword",
	chance = 6422
},
{
	id = "yellow piece of cloth",
	chance = 5792
},
{
	id = "green piece of cloth",
	chance = 5280
},
{
	id = "red gem",
	chance = 4610
},
{
	id = "yellow gem",
	chance = 4452
},
{
	id = "red piece of cloth",
	chance = 3034
},
{
	id = "gold ingot",
	chance = 2955
},
{
	id = "magma amulet",
	chance = 2561
},
{
	id = "amber staff",
	chance = 2049
},
{
	id = "magma legs",
	chance = 1458
},
{
	id = "magma boots",
	chance = 1340
},
{
	id = "big bone",
	chance = 985
},
{
	id = "green gem",
	chance = 985
},
{
	id = "magma coat",
	chance = 985
},
{
	id = "magma monocle",
	chance = 985
},
{
	id = "onyx flail",
	chance = 867
},
{
	id = "giant sword",
	chance = 827
},
{
	id = "ruthless axe",
	chance = 788
},
{
	id = "explorer brooch",
	chance = 276
}
}

monster.attacks = {
{
	name = "melee",
	interval = 2 * 1000,
	attack = 520,
	skill = 70,
	effect = CONST_ME_DRAWBLOOD
},
{
	name = "combat",
	interval = 2 * 1000,
	chance = 5,
	minDamage = -300,
	maxDamage = -700,
	length = 8,
	spread = 3,
	type = COMBAT_EARTHDAMAGE,
	effect = CONST_ME_CARNIPHILA
},
{
	name = "combat",
	interval = 2 * 1000,
	chance = 10,
	minDamage = -395,
	maxDamage = -498,
	range = 7,
	type = COMBAT_DEATHDAMAGE,
	shootEffect = CONST_ANI_SUDDENDEATH,
	effect = CONST_ME_SMALLCLOUDS
},
{
	name = "combat",
	interval = 2 * 1000,
	chance = 10,
	minDamage = -350,
	maxDamage = -660,
	length = 8,
	spread = 3,
	type = COMBAT_FIREDAMAGE,
	effect = CONST_ME_FIREAREA
},
{
	name = "combat",
	interval = 2 * 1000,
	chance = 10,
	minDamage = -350,
	maxDamage = -976,
	length = 8,
	spread = 3,
	type = COMBAT_LIFEDRAIN,
	effect = CONST_ME_MAGIC_RED
},
{
	name = "combat",
	interval = 2 * 1000,
	chance = 10,
	minDamage = -200,
	maxDamage = -403,
	radius = 1,
	target = true,
	type = COMBAT_FIREDAMAGE,
	effect = CONST_ANI_FIRE
},
{
	name = "combat",
	interval = 2 * 1000,
	chance = 5,
	minDamage = -300,
	maxDamage = -549,
	range = 7,
	type = COMBAT_EARTHDAMAGE,
	shootEffect = CONST_ANI_POISON,
	effect = CONST_ME_POISON
}
}

monster.defenses = {
	defense = 60,
	armor = 60,
	{
			name = "speed",
			interval = 2 * 1000,
			chance = 15,
			speed = 320,
			duration = 5 * 1000,
			effect = CONST_ME_MAGIC_RED
		},
	{
			name = "combat",
			interval = 2 * 1000,
			chance = 20,
			type = COMBAT_HEALING,
			minDamage = 220,
			maxDamage = 425,
			effect = CONST_ME_MAGIC_BLUE
		},
}

monster.elements = {
{
	type = COMBAT_ENERGYDAMAGE,
	percent = 10
},
{
	type = COMBAT_EARTHDAMAGE,
	percent = 20
},
{
	type = COMBAT_ICEDAMAGE,
	percent = -5
},
{
	type = COMBAT_HOLYDAMAGE,
	percent = -5
}
}

monster.immunities = {
{
	type = "paralyze",
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
},
{
	type = "fire",
	combat = true,
	condition = true
}
}

mType:register(monster)
