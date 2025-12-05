local mType = Game.createMonsterType("Warlock")
local monster = {}
monster.description = "a warlock"
monster.experience = 4000
monster.outfit = {lookType = 130}

monster.health = 3500
monster.maxHealth = monster.health
monster.race = "blood"
monster.corpse = 20527
monster.speed = 230
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
	staticAttackChance = 90
}

monster.summons = {
{
	name = "stone golem",
	chance = 10,
	interval = 2 * 1000
}
}

monster.voices = {
	interval = 5000,
	chance = 10,
	{text = "Learn the secret of our magic! YOUR death!", yell = false},
	{text = "Even a rat is a better mage than you.", yell = false},
	{text = "We don't like intruders!", yell = false},
}

monster.loot = {
{
	id = "gold coin",
	chance = 30006,
	maxCount = 80
},
{
	id = "cherry",
	chance = 19630,
	maxCount = 4
},
{
	id = "bread",
	chance = 8925
},
{
	id = "poison dagger",
	chance = 7693
},
{
	id = "skull staff",
	chance = 6088
},
{
	id = "great health potion",
	chance = 5094
},
{
	id = "great mana potion",
	chance = 5017
},
{
	id = "assassin star",
	chance = 3289,
	maxCount = 4
},
{
	id = "dark mushroom",
	chance = 2934
},
{
	id = "mind stone",
	chance = 2128
},
{
	id = "energy ring",
	chance = 1967
},
{
	id = "candlestick",
	chance = 1573
},
{
	id = "blue robe",
	chance = 1561
},
{
	id = "small sapphire",
	chance = 1283
},
{
	id = "talon",
	chance = 1051
},
{
	id = "lightning robe",
	chance = 1006
},
{
	id = "inkwell",
	chance = 935
},
{
	id = "crystal ring",
	chance = 742
},
{
	id = "luminous orb",
	chance = 477
},
{
	id = "ring of the sky",
	chance = 406
},
{
	id = "stone skin amulet",
	chance = 355
},
{
	id = "red tome",
	chance = 239
},
{
	id = "golden armor",
	chance = 206
},
{
	id = "piggy bank",
	chance = 77
}
}

monster.attacks = {
{
	name = "melee",
	interval = 2 * 1000,
	attack = 130,
	skill = 70,
	effect = CONST_ME_DRAWBLOOD
},
{
	name = "combat",
	interval = 2 * 1000,
	chance = 25,
	minDamage = -90,
	maxDamage = -180,
	range = 7,
	type = COMBAT_ENERGYDAMAGE,
	shootEffect = CONST_ANI_ENERGY
},
{
	name = "combat",
	interval = 2 * 1000,
	chance = 10,
	minDamage = 0,
	maxDamage = -120,
	range = 7,
	type = COMBAT_MANADRAIN
},
{
	name = "combat",
	interval = 2 * 1000,
	chance = 20,
	minDamage = -50,
	maxDamage = -180,
	range = 7,
	radius = 3,
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
	radius = 2,
	target = true,
	shootEffect = CONST_ANI_FIRE
},
{
	name = "combat",
	interval = 2 * 1000,
	chance = 10,
	minDamage = -150,
	maxDamage = -230,
	length = 8,
	spread = 0,
	type = COMBAT_ENERGYDAMAGE,
	effect = CONST_ME_BIGCLOUDS
},
{
	name = "speed",
	interval = 2 * 1000,
	chance = 15,
	range = 7,
	speed = -600,
	duration = 20 * 1000,
	effect = CONST_ME_MAGIC_RED
}
}

monster.defenses = {
	defense = 33,
	armor = 33,
	{
			name = "combat",
			interval = 2 * 1000,
			chance = 20,
			type = COMBAT_HEALING,
			minDamage = 100,
			maxDamage = 225,
			effect = CONST_ME_MAGIC_BLUE
		},
	{
			name = "invisible",
			interval = 2 * 1000,
			chance = 20,
			effect = CONST_ME_MAGIC_BLUE
		},
}

monster.elements = {
{
	type = COMBAT_EARTHDAMAGE,
	percent = 95
},
{
	type = COMBAT_HOLYDAMAGE,
	percent = -8
},
{
	type = COMBAT_PHYSICALDAMAGE,
	percent = -5
}
}

monster.immunities = {
{
	type = "fire",
	combat = true,
	condition = true
},
{
	type = "energy",
	combat = true,
	condition = true
},
{
	type = "ice",
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
