local mType = Game.createMonsterType("Undead Dragon")
local monster = {}
monster.description = "an undead dragon"
monster.experience = 7200
monster.outfit = {lookType = 231}

monster.health = 8350
monster.maxHealth = monster.health
monster.race = "undead"
monster.corpse = 6306
monster.speed = 330

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
	canwalkonenergy = false
}

monster.voices = {
	interval = 5000,
	chance = 10,
	{text = "FEEEED MY ETERNAL HUNGER!", yell = true},
	{text = "I SENSE LIFE", yell = true},
}

monster.loot = {
{
	id = "gold coin",
	chance = 100000,
	maxCount = 200
},
{
	id = "platinum coin",
	chance = 49699,
	maxCount = 5
},
{
	id = "unholy bone",
	chance = 33778
},
{
	id = "small sapphire",
	chance = 27571,
	maxCount = 2
},
{
	id = "assassin star",
	chance = 25090,
	maxCount = 5
},
{
	id = "great mana potion",
	chance = 24723,
	maxCount = 3
},
{
	id = "great health potion",
	chance = 24647,
	maxCount = 3
},
{
	id = "black pearl",
	chance = 22363,
	maxCount = 2
},
{
	id = "demonic essence",
	chance = 15402
},
{
	id = "hardened bone",
	chance = 15320
},
{
	id = "power bolt",
	chance = 14573,
	maxCount = 15
},
{
	id = "golden mug",
	chance = 5126
},
{
	id = "knight armor",
	chance = 4904
},
{
	id = "dragonbone staff",
	chance = 4138
},
{
	id = "stealth ring",
	chance = 1822
},
{
	id = "life crystal",
	chance = 1588
},
{
	id = "war axe",
	chance = 1329
},
{
	id = "royal helmet",
	chance = 1120
},
{
	id = "blue gem",
	chance = 1095
},
{
	id = "gold ingot",
	chance = 1031
},
{
	id = "dragon slayer",
	chance = 993
},
{
	id = "spellweaver's robe",
	chance = 924
},
{
	id = "golden armor",
	chance = 658
},
{
	id = "divine plate",
	chance = 437
},
{
	id = "skullcracker armor",
	chance = 304
}
}

monster.attacks = {
{
	name = "melee",
	interval = 2 * 1000,
	attack = 480,
	skill = 70,
	effect = CONST_ME_DRAWBLOOD
},
{
	name = "combat",
	interval = 2 * 1000,
	chance = 5,
	minDamage = -300,
	maxDamage = -400,
	range = 7,
	radius = 4,
	target = true,
	type = COMBAT_PHYSICALDAMAGE,
	effect = CONST_ME_REDSPARK
},
{
	name = "combat",
	interval = 2 * 1000,
	chance = 10,
	minDamage = -125,
	maxDamage = -600,
	range = 7,
	type = COMBAT_DEATHDAMAGE,
	shootEffect = CONST_ANI_SUDDENDEATH,
	effect = CONST_ME_SMALLCLOUDS
},
{
	name = "combat",
	interval = 2 * 1000,
	chance = 5,
	minDamage = -100,
	maxDamage = -390,
	range = 7,
	radius = 4,
	target = true,
	type = COMBAT_EARTHDAMAGE,
	shootEffect = CONST_ANI_POISON,
	effect = CONST_ME_POISON
},
{
	name = "combat",
	interval = 2 * 1000,
	chance = 15,
	minDamage = 0,
	maxDamage = -180,
	range = 7,
	target = true,
	type = COMBAT_EARTHDAMAGE,
	shootEffect = CONST_ANI_POISON,
	effect = CONST_ME_POISON
},
{
	name = "combat",
	interval = 2 * 1000,
	chance = 10,
	minDamage = -150,
	maxDamage = -690,
	length = 8,
	spread = 3,
	type = COMBAT_EARTHDAMAGE,
	effect = CONST_ME_POISON
},
{
	name = "combat",
	interval = 2 * 1000,
	chance = 10,
	minDamage = -300,
	maxDamage = -700,
	length = 8,
	spread = 3,
	type = COMBAT_LIFEDRAIN,
	effect = CONST_ME_MAGIC_RED
},
{
	name = "combat",
	interval = 2 * 1000,
	chance = 10,
	minDamage = -100,
	maxDamage = -200,
	radius = 3,
	type = COMBAT_LIFEDRAIN,
	effect = CONST_ME_MAGIC_RED
}
}

monster.defenses = {
	defense = 40,
	armor = 40,
	{
			name = "combat",
			interval = 2 * 1000,
			chance = 15,
			type = COMBAT_HEALING,
			minDamage = 200,
			maxDamage = 250,
			effect = CONST_ME_MAGIC_BLUE
		},
}

monster.elements = {
{
	type = COMBAT_PHYSICALDAMAGE,
	percent = 5
},
{
	type = COMBAT_ICEDAMAGE,
	percent = 50
},
{
	type = COMBAT_HOLYDAMAGE,
	percent = -25
}
}

monster.immunities = {
{
	type = "fire",
	combat = true,
	condition = true
},
{
	type = "earth",
	combat = true,
	condition = true
},
{
	type = "death",
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
},
{
	type = "drown",
	condition = true
}
}

mType:register(monster)
