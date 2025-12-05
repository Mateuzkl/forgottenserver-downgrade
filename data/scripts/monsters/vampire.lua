local mType = Game.createMonsterType("Vampire")
local monster = {}
monster.description = "a vampire"
monster.experience = 305
monster.outfit = {lookType = 68}

monster.health = 475
monster.maxHealth = monster.health
monster.race = "undead"
monster.corpse = 6006
monster.speed = 238

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
	canwalkonfire = false
}

monster.voices = {
	interval = 5000,
	chance = 10,
	{text = "BLOOD!", yell = false},
	{text = "Let me kiss your neck", yell = false},
	{text = "I smell warm blood!", yell = false},
	{text = "I call you, my bats! Come!", yell = false},
}

monster.loot = {
{
	id = "gold coin",
	chance = 90230,
	maxCount = 60
},
{
	id = "vampire teeth",
	chance = 7600
},
{
	id = "blood preservation",
	chance = 5100
},
{
	id = 2747,
	chance = 1910
},
{
	id = "black pearl",
	chance = 1800
},
{
	id = "strong health potion",
	chance = 1500
},
{
	id = "katana",
	chance = 1560
},
{
	id = "spike sword",
	chance = 1000
},
{
	id = 2229,
	chance = 1000
},
{
	id = "ice rapier",
	chance = 470
},
{
	id = "strange helmet",
	chance = 420
},
{
	id = "bronze amulet",
	chance = 230
},
{
	id = "emerald bangle",
	chance = 210
},
{
	id = "vampire shield",
	chance = 200
}
}

monster.attacks = {
{
	name = "melee",
	interval = 2 * 1000,
	attack = 150,
	skill = 70,
	effect = CONST_ME_DRAWBLOOD
},
{
	name = "combat",
	interval = 2 * 1000,
	chance = 20,
	minDamage = -50,
	maxDamage = -200,
	range = 1,
	target = true,
	type = COMBAT_LIFEDRAIN,
	effect = CONST_ME_SMALLCLOUDS
},
{
	name = "speed",
	interval = 2 * 1000,
	chance = 15,
	range = 1,
	target = true,
	speed = -400,
	duration = 60 * 1000,
	effect = CONST_ME_MAGIC_RED
}
}

monster.defenses = {
	defense = 30,
	armor = 30,
	{
			name = "outfit",
			interval = 4 * 1000,
			chance = 10,
			effect = CONST_ME_GROUNDSHAKER
		},
	{
			name = "speed",
			interval = 2 * 1000,
			chance = 15,
			speed = 300,
			duration = 3 * 1000,
			effect = CONST_ME_MAGIC_RED
		},
	{
			name = "combat",
			interval = 2 * 1000,
			chance = 15,
			type = COMBAT_HEALING,
			minDamage = 15,
			maxDamage = 25
		},
}

monster.elements = {
{
	type = COMBAT_PHYSICALDAMAGE,
	percent = 25
},
{
	type = COMBAT_FIREDAMAGE,
	percent = -10
},
{
	type = COMBAT_HOLYDAMAGE,
	percent = -25
}
}

monster.immunities = {
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
	type = "drown",
	condition = true
},
{
	type = "drunk",
	condition = true
}
}

mType:register(monster)
