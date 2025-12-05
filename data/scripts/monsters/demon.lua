local mType = Game.createMonsterType("Demon")
local monster = {}
monster.description = "a demon"
monster.experience = 6000
monster.outfit = {lookType = 35}

monster.health = 8200
monster.maxHealth = monster.health
monster.race = "fire"
monster.corpse = 5995
monster.speed = 256
monster.maxSummons = 1

monster.changeTarget = {interval = 4 * 1000, chance = 20}

monster.flags = {
	summonable = false,
	attackable = true,
	hostile = true,
	illusionable = false,
	convinceable = false,
	pushable = false,
	canpushitems = true,
	canpushcreatures = true,
	targetDistance = 1,
	staticAttackChance = 70
}

monster.summons = {
{
	name = "fire elemental",
	chance = 10,
	interval = 2 * 1000
}
}

monster.voices = {
	interval = 5000,
	chance = 10,
	{text = "Your soul will be mine!", yell = true},
	{text = "MUHAHAHAHA!", yell = true},
	{text = "CHAMEK ATH UTHUL ARAK!", yell = true},
	{text = "I SMELL FEEEEAAAAAR!", yell = true},
	{text = "Your resistance is futile!", yell = false},
}

monster.loot = {
{
	id = "gold coin",
	chance = 99518,
	maxCount = 200
},
{
	id = "platinum coin",
	chance = 99513,
	maxCount = 8
},
{
	id = "great mana potion",
	chance = 25108,
	maxCount = 3
},
{
	id = "great spirit potion",
	chance = 24763,
	maxCount = 3
},
{
	id = "demon horn",
	chance = 20187
},
{
	id = "ultimate health potion",
	chance = 19831,
	maxCount = 3
},
{
	id = "fire mushroom",
	chance = 19782,
	maxCount = 6
},
{
	id = "demonic essence",
	chance = 19738
},
{
	id = "assassin star",
	chance = 15452,
	maxCount = 10
},
{
	id = "small topaz",
	chance = 10167,
	maxCount = 5
},
{
	id = "small ruby",
	chance = 10006,
	maxCount = 5
},
{
	id = "small emerald",
	chance = 9802,
	maxCount = 5
},
{
	id = "small amethyst",
	chance = 9789,
	maxCount = 5
},
{
	id = "fire axe",
	chance = 4037
},
{
	id = "talon",
	chance = 3420
},
{
	id = "red gem",
	chance = 2959
},
{
	id = "orb",
	chance = 2852
},
{
	id = "ring of healing",
	chance = 2658
},
{
	id = "might ring",
	chance = 2492
},
{
	id = "stealth ring",
	chance = 2391
},
{
	id = "giant sword",
	chance = 1950
},
{
	id = "ice rapier",
	chance = 1906
},
{
	id = "golden sickle",
	chance = 1367
},
{
	id = "purple tome",
	chance = 1232
},
{
	id = "devil helmet",
	chance = 1227
},
{
	id = "gold ring",
	chance = 1035
},
{
	id = "demon shield",
	chance = 755
},
{
	id = "platinum amulet",
	chance = 705
},
{
	id = "mastermind shield",
	chance = 475
},
{
	id = "golden legs",
	chance = 397
},
{
	id = "demon trophy",
	chance = 88
},
{
	id = "magic plate armor",
	chance = 88
},
{
	id = "demonrage sword",
	chance = 54
}
}

monster.attacks = {
{
	name = "melee",
	interval = 2 * 1000,
	attack = 500,
	skill = 70,
	effect = CONST_ME_DRAWBLOOD
},
{
	name = "combat",
	interval = 2 * 1000,
	chance = 10,
	minDamage = -30,
	maxDamage = -120,
	range = 7,
	type = COMBAT_MANADRAIN
},
{
	name = "combat",
	interval = 2 * 1000,
	chance = 20,
	minDamage = -150,
	maxDamage = -250,
	range = 7,
	radius = 7,
	target = false,
	type = COMBAT_FIREDAMAGE,
	shootEffect = CONST_ANI_FIRE,
	effect = CONST_ME_FIREAREA
},
{
	name = "firefield",
	interval = 2 * 1000,
	chance = 10,
	range = 7,
	radius = 1,
	target = true,
	shootEffect = CONST_ANI_FIRE
},
{
	name = "combat",
	interval = 2 * 1000,
	chance = 10,
	minDamage = -300,
	maxDamage = -480,
	length = 8,
	spread = 0,
	type = COMBAT_LIFEDRAIN,
	effect = CONST_ME_PURPLEENERGY
},
{
	name = "combat",
	interval = 2 * 1000,
	chance = 10,
	minDamage = -210,
	maxDamage = -300,
	range = 1,
	type = COMBAT_ENERGYDAMAGE,
	shootEffect = CONST_ANI_ENERGY
},
{
	name = "speed",
	interval = 2 * 1000,
	chance = 15,
	range = 7,
	radius = 1,
	target = true,
	speed = -700,
	duration = 30 * 1000,
	effect = CONST_ME_MAGIC_RED
}
}

monster.defenses = {
	defense = 44,
	armor = 44,
	{
			name = "combat",
			interval = 2 * 1000,
			chance = 15,
			type = COMBAT_HEALING,
			minDamage = 80,
			maxDamage = 250,
			effect = CONST_ME_MAGIC_BLUE
		},
	{
			name = "speed",
			interval = 2 * 1000,
			chance = 15,
			speed = 320,
			duration = 5 * 1000,
			effect = CONST_ME_MAGIC_RED
		},
}

monster.elements = {
{
	type = COMBAT_PHYSICALDAMAGE,
	percent = 25
},
{
	type = COMBAT_DEATHDAMAGE,
	percent = 20
},
{
	type = COMBAT_ENERGYDAMAGE,
	percent = 50
},
{
	type = COMBAT_EARTHDAMAGE,
	percent = 40
},
{
	type = COMBAT_ICEDAMAGE,
	percent = -12
},
{
	type = COMBAT_HOLYDAMAGE,
	percent = -12
}
}

monster.immunities = {
{
	type = "fire",
	combat = true,
	condition = true
},
{
	type = "drown",
	condition = true
},
{
	type = "lifedrain",
	combat = true
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
