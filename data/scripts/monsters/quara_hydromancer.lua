local mType = Game.createMonsterType("Quara Hydromancer")
local monster = {}
monster.description = "a quara hydromancer"
monster.experience = 800
monster.outfit = {lookType = 47}

monster.health = 1100
monster.maxHealth = monster.health
monster.race = "blood"
monster.corpse = 6066
monster.speed = 490

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
	staticAttackChance = 90,
	targetDistance = 1,
	canwalkonenergy = false,
	canwalkonpoison = false
}

monster.voices = {
	interval = 5000,
	chance = 10,
	{text = "Qua hah tsh!", yell = false},
	{text = "Teech tsha tshul!", yell = false},
	{text = "Quara tsha Fach!", yell = false},
	{text = "Tssssha Quara!", yell = false},
	{text = "Blubber.", yell = false},
	{text = "Blup.", yell = false},
}

monster.loot = {
{
	id = "gold coin",
	chance = 90418,
	maxCount = 110
},
{
	id = "quara eye",
	chance = 15606
},
{
	id = "white pearl",
	chance = 5083
},
{
	id = "small emerald",
	chance = 4960,
	maxCount = 2
},
{
	id = "shrimp",
	chance = 4716
},
{
	id = "black pearl",
	chance = 3125
},
{
	id = "great mana potion",
	chance = 2861
},
{
	id = "fish fin",
	chance = 1459
},
{
	id = "ring of healing",
	chance = 1233
},
{
	id = "wand of cosmic energy",
	chance = 979
},
{
	id = "knight armor",
	chance = 226
}
}

monster.attacks = {
{
	name = "melee",
	interval = 2 * 1000,
	attack = 80,
	skill = 70,
	effect = CONST_ME_DRAWBLOOD
},
{
	name = "combat",
	interval = 2 * 1000,
	chance = 10,
	minDamage = -100,
	maxDamage = -180,
	length = 8,
	spread = 0,
	type = COMBAT_ICEDAMAGE,
	effect = CONST_ME_BUBBLES
},
{
	name = "combat",
	interval = 2 * 1000,
	chance = 10,
	minDamage = -90,
	maxDamage = -150,
	radius = 3,
	target = false,
	type = COMBAT_ICEDAMAGE,
	effect = CONST_ME_BUBBLES
},
{
	name = "combat",
	interval = 2 * 1000,
	chance = 10,
	minDamage = -170,
	maxDamage = -240,
	length = 8,
	spread = 0,
	type = COMBAT_LIFEDRAIN,
	effect = CONST_ME_GREENSPARK
},
{
	name = "combat",
	interval = 2 * 1000,
	chance = 15,
	minDamage = 0,
	maxDamage = -170,
	range = 7,
	target = true,
	type = COMBAT_LIFEDRAIN,
	effect = CONST_ME_MAGIC_RED
},
{
	name = "speed",
	interval = 2 * 1000,
	chance = 15,
	range = 7,
	speed = -600,
	duration = 15 * 1000,
	effect = CONST_ME_MAGIC_RED
}
}

monster.defenses = {
	defense = 30,
	armor = 30,
	{
			name = "combat",
			interval = 2 * 1000,
			chance = 15,
			type = COMBAT_HEALING,
			minDamage = 100,
			maxDamage = 120,
			effect = CONST_ME_MAGIC_BLUE
		},
}

monster.elements = {
{
	type = COMBAT_EARTHDAMAGE,
	percent = -10
},
{
	type = COMBAT_ENERGYDAMAGE,
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
	type = "drown",
	condition = true
},
{
	type = "fire",
	combat = true,
	condition = true
},
{
	type = "ice",
	combat = true,
	condition = true
}
}

mType:register(monster)
