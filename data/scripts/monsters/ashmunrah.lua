local mType = Game.createMonsterType("Ashmunrah")
local monster = {}
monster.description = "Ashmunrah"
monster.experience = 3100
monster.outfit = {lookType = 87}

monster.health = 5000
monster.maxHealth = monster.health
monster.race = "undead"
monster.corpse = 6031
monster.speed = 430
monster.maxSummons = 4

monster.changeTarget = {interval = 5 * 1000, chance = 8}

monster.flags = {
	pushable = false,
	canpushitems = true,
	canpushcreatures = true,
	targetDistance = 1,
	staticAttackChance = 90,
	canwalkonfire = false,
	canwalkonpoison = false
}

monster.summons = {
{
	name = "Ancient Scarab",
	chance = 100,
	interval = 1 * 1000
},
{
	name = "Green Djinn",
	chance = 100,
	interval = 1 * 1000
}
}

monster.voices = {
	interval = 5000,
	chance = 10,
	{text = "No mortal or undead will steal my secrets!", yell = false},
	{text = "Ahhhh all those long years.", yell = false},
	{text = "My traitorous son has thee.", yell = false},
	{text = "Come to me, my allys and underlings.", yell = false},
	{text = "I might be trapped but not without power.", yell = false},
	{text = "Ages come, ages go. Ashmunrah remains.", yell = false},
	{text = "You will be history soon.", yell = false},
}

monster.loot = {
{
	id = "gold coin",
	chance = 33000,
	maxCount = 100
},
{
	id = "gold coin",
	chance = 33000,
	maxCount = 100
},
{
	id = "gold coin",
	chance = 33000,
	maxCount = 100
},
{
	id = "gold coin",
	chance = 50000,
	maxCount = 4
},
{
	id = "great mana potion",
	chance = 12005
},
{
	id = "might ring",
	chance = 4662
},
{
	id = "silver brooch",
	chance = 4196
},
{
	id = "crown armor",
	chance = 466
},
{
	id = "mini mummy",
	chance = 175
},
{
	id = "hammer of wrath",
	chance = 117
},
{
	id = "holy scarab",
	chance = 117
}
}

monster.attacks = {
{
	name = "melee",
	interval = 2 * 1000,
	attack = 1000,
	skill = 70,
	effect = CONST_ME_DRAWBLOOD
},
{
	name = "combat",
	interval = 3 * 1000,
	chance = 7,
	minDamage = -100,
	maxDamage = -700,
	range = 1,
	type = COMBAT_LIFEDRAIN
},
{
	name = "combat",
	interval = 2 * 1000,
	chance = 12,
	minDamage = -100,
	maxDamage = -500,
	range = 7,
	type = COMBAT_EARTHDAMAGE,
	shootEffect = CONST_ANI_POISON,
	effect = CONST_ME_POISON
},
{
	name = "combat",
	interval = 3 * 1000,
	chance = 12,
	minDamage = -120,
	maxDamage = -750,
	range = 7,
	type = COMBAT_PHYSICALDAMAGE,
	shootEffect = CONST_ANI_ENERGY,
	effect = CONST_ME_MORTAREA
},
{
	name = "speed",
	interval = 3 * 1000,
	chance = 25,
	range = 7,
	speed = -650,
	duration = 50 * 1000,
	effect = CONST_ME_MAGIC_RED
},
{
	name = "combat",
	interval = 2 * 1000,
	chance = 18,
	minDamage = -50,
	maxDamage = -550,
	length = 8,
	spread = 3,
	type = COMBAT_LIFEDRAIN,
	effect = CONST_ME_YELLOWBUBBLE
}
}

monster.defenses = {
	defense = 30,
	armor = 25,
	{
			name = "combat",
			interval = 1 * 1000,
			chance = 20,
			type = COMBAT_HEALING,
			minDamage = 200,
			maxDamage = 400,
			effect = CONST_ME_MAGIC_BLUE
		},
	{
			name = "invisible",
			interval = 1 * 1000,
			chance = 7,
			effect = CONST_ME_MAGIC_BLUE
		},
	{
			name = "outfit",
			interval = 1 * 1000,
			chance = 3,
			effect = CONST_ME_MAGIC_BLUE
		},
}

monster.elements = {
{
	type = COMBAT_PHYSICALDAMAGE,
	percent = 10
},
{
	type = COMBAT_ENERGYDAMAGE,
	percent = 20
},
{
	type = COMBAT_EARTHDAMAGE,
	percent = 25
},
{
	type = COMBAT_FIREDAMAGE,
	percent = -5
},
{
	type = COMBAT_ICEDAMAGE,
	percent = 20
},
{
	type = COMBAT_HOLYDAMAGE,
	percent = -10
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
