local mType = Game.createMonsterType("Ushuriel")
local monster = {}
monster.description = "Ushuriel"
monster.experience = 10000
monster.outfit = {lookType = 12}

monster.health = 31500
monster.maxHealth = monster.health
monster.race = "fire"
monster.corpse = 6068
monster.speed = 440

monster.changeTarget = {interval = 5 * 1000, chance = 8}

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
	staticAttackChance = 85,
	isboss = true
}

monster.voices = {
	interval = 5000,
	chance = 10,
	{text = "You can't run or hide forever!", yell = false},
	{text = "I'm the executioner of the Seven!", yell = false},
	{text = "The final punishment awaits you!", yell = false},
	{text = "The judgement is guilty! The sentence is death!", yell = false},
}

monster.loot = {
{
	id = "demonic essence",
	chance = 100000
},
{
	id = "brown mushroom",
	chance = 96863,
	maxCount = 30
},
{
	id = "gold coin",
	chance = 96863,
	maxCount = 190
},
{
	id = "iron ore",
	chance = 43922
},
{
	id = "hardened bone",
	chance = 28235,
	maxCount = 20
},
{
	id = "ultimate health potion",
	chance = 26667
},
{
	id = "great health potion",
	chance = 25490
},
{
	id = "royal helmet",
	chance = 25294
},
{
	id = "great spirit potion",
	chance = 23725
},
{
	id = "life crystal",
	chance = 21176
},
{
	id = "great mana potion",
	chance = 20980
},
{
	id = "skull helmet",
	chance = 20980
},
{
	id = "platinum coin",
	chance = 20784,
	maxCount = 30
},
{
	id = "gold ingot",
	chance = 20196
},
{
	id = "mind stone",
	chance = 20196
},
{
	id = "mysterious voodoo skull",
	chance = 20000
},
{
	id = "warrior helmet",
	chance = 19412
},
{
	id = "thaian sword",
	chance = 19216
},
{
	id = "fire sword",
	chance = 18824
},
{
	id = "orb",
	chance = 17647
},
{
	id = "slightly rusted armor",
	chance = 16471
},
{
	id = "huge chunk of crude iron",
	chance = 14510
},
{
	id = "giant sword",
	chance = 11961
},
{
	id = "scimitar",
	chance = 10980
},
{
	id = "demon horn",
	chance = 10784,
	maxCount = 2
},
{
	id = "spike sword",
	chance = 10196
},
{
	id = "dragon slayer",
	chance = 10000
},
{
	id = "crimson sword",
	chance = 9216
},
{
	id = "crown helmet",
	chance = 9020
},
{
	id = "strange helmet",
	chance = 9020
},
{
	id = "runed sword",
	chance = 8431
},
{
	id = "enchanted chicken wing",
	chance = 5686
},
{
	id = "spirit container",
	chance = 5098
},
{
	id = "unholy book",
	chance = 4118
},
{
	id = "flask of warrior's sweat",
	chance = 3725
}
}

monster.attacks = {
{
	name = "melee",
	interval = 2 * 1000,
	attack = 1088,
	skill = 70,
	effect = CONST_ME_DRAWBLOOD
},
{
	name = "combat",
	interval = 1 * 1000,
	chance = 10,
	minDamage = -250,
	maxDamage = -500,
	length = 10,
	spread = 0,
	type = COMBAT_PHYSICALDAMAGE,
	effect = CONST_ME_MORTAREA
},
{
	name = "combat",
	interval = 1 * 1000,
	chance = 8,
	minDamage = -30,
	maxDamage = -760,
	radius = 5,
	target = false,
	type = COMBAT_DEATHDAMAGE,
	effect = CONST_ME_MORTAREA,
	shootEffect = CONST_ANI_DEATH
},
{
	name = "combat",
	interval = 2 * 1000,
	chance = 9,
	minDamage = -200,
	maxDamage = -585,
	length = 8,
	spread = 0,
	type = COMBAT_EARTHDAMAGE,
	effect = CONST_ME_SMALLPLANTS
},
{
	name = "combat",
	interval = 1 * 1000,
	chance = 8,
	minDamage = 0,
	maxDamage = -430,
	radius = 6,
	target = false,
	type = COMBAT_ICEDAMAGE,
	effect = CONST_ME_ICETORNADO
},
{
	name = "drunk",
	interval = 3 * 1000,
	chance = 11,
	radius = 6,
	target = false,
	effect = CONST_ME_PURPLENOTE
},
{
	name = "combat",
	type = COMBAT_ENERGYDAMAGE,
	conditionType = CONDITION_ENERGY,
	conditionMinDamage = -250,
	conditionMaxDamage = -250,
	conditionTickInterval = 2000,
	interval = 2 * 1000,
	chance = 15,
	radius = 4,
	target = false,
	effect = CONST_ANI_ENERGY
}
}

monster.defenses = {
	defense = 45,
	armor = 50,
	{
			name = "combat",
			interval = 1 * 1000,
			chance = 12,
			type = COMBAT_HEALING,
			minDamage = 400,
			maxDamage = 600,
			effect = CONST_ME_MAGIC_GREEN
		},
	{
			name = "speed",
			interval = 1 * 1000,
			chance = 4,
			speed = 400,
			duration = 7 * 1000,
			effect = CONST_ME_MAGIC_BLUE
		},
}

monster.elements = {
{
	type = COMBAT_PHYSICALDAMAGE,
	percent = 50
},
{
	type = COMBAT_FIREDAMAGE,
	percent = 30
},
{
	type = COMBAT_ENERGYDAMAGE,
	percent = 30
},
{
	type = COMBAT_ICEDAMAGE,
	percent = 30
},
{
	type = COMBAT_EARTHDAMAGE,
	percent = 30
},
{
	type = COMBAT_HOLYDAMAGE,
	percent = 25
}
}

monster.immunities = {
{
	type = "death",
	combat = true,
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
