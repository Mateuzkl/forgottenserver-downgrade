local mType = Game.createMonsterType("Morguthis")
local monster = {}
monster.description = "Morguthis"
monster.experience = 3000
monster.outfit = {lookType = 90}

monster.health = 4800
monster.maxHealth = monster.health
monster.race = "undead"
monster.corpse = 6025
monster.speed = 320
monster.maxSummons = 3

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
	staticAttackChance = 90,
	canwalkonenergy = false,
	canwalkonfire = false,
	canwalkonpoison = false
}

monster.summons = {
{
	name = "Hero",
	chance = 100,
	interval = 2 * 1000
}
}

monster.voices = {
	interval = 5000,
	chance = 10,
	{text = "Vengeance!", yell = false},
	{text = "You will make a fine trophy.", yell = false},
	{text = "Come and fight me, cowards!", yell = false},
	{text = "I am the supreme warrior!", yell = false},
	{text = "Let me hear the music of battle.", yell = false},
	{text = "Anotherone to bite the dust!", yell = false},
}

monster.loot = {
{
	id = "sword hilt",
	chance = 100000
},
{
	id = "gold coin",
	chance = 30000,
	maxCount = 100
},
{
	id = "gold coin",
	chance = 30000,
	maxCount = 100
},
{
	id = "gold coin",
	chance = 30000,
	maxCount = 21
},
{
	id = "black pearl",
	chance = 10000
},
{
	id = "assassin star",
	chance = 9700,
	maxCount = 3
},
{
	id = "great health potion",
	chance = 9500
},
{
	id = "knight axe",
	chance = 6000
},
{
	id = "stone skin amulet",
	chance = 5000
},
{
	id = "mini mummy",
	chance = 140
},
{
	id = "ravager's axe",
	chance = 150
},
{
	id = "steel boots",
	chance = 150
},
{
	id = 2136,
	chance = 140
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
	minDamage = -55,
	maxDamage = -550,
	range = 1,
	type = COMBAT_LIFEDRAIN
},
{
	name = "speed",
	interval = 1 * 1000,
	chance = 25,
	range = 7,
	speed = -650,
	duration = 50 * 1000,
	effect = CONST_ME_MAGIC_RED
},
{
	name = "combat",
	interval = 1 * 1000,
	chance = 20,
	minDamage = -40,
	maxDamage = -400,
	radius = 3,
	target = false,
	type = COMBAT_PHYSICALDAMAGE,
	effect = CONST_ME_BLACKSPARK
},
{
	name = "combat",
	interval = 3 * 1000,
	chance = 7,
	minDamage = -50,
	maxDamage = -500,
	radius = 3,
	target = false,
	type = COMBAT_PHYSICALDAMAGE,
	effect = CONST_ME_MORTAREA
}
}

monster.defenses = {
	defense = 75,
	armor = 75,
	{
			name = "combat",
			interval = 1 * 1000,
			chance = 13,
			type = COMBAT_HEALING,
			minDamage = 200,
			maxDamage = 300,
			effect = CONST_ME_MAGIC_BLUE
		},
	{
			name = "speed",
			interval = 1 * 1000,
			chance = 7,
			speed = 600,
			duration = 5 * 1000,
			effect = CONST_ME_MAGIC_RED
		},
	{
			name = "invisible",
			interval = 2 * 1000,
			chance = 10,
			effect = CONST_ME_MAGIC_RED
		},
}

monster.elements = {
{
	type = COMBAT_ICEDAMAGE,
	percent = 20
},
{
	type = COMBAT_FIREDAMAGE,
	percent = 20
},
{
	type = COMBAT_ENERGYDAMAGE,
	percent = 20
},
{
	type = COMBAT_PHYSICALDAMAGE,
	percent = 20
},
{
	type = COMBAT_EARTHDAMAGE,
	percent = -10
},
{
	type = COMBAT_HOLYDAMAGE,
	percent = -20
}
}

monster.immunities = {
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
}
}

mType:register(monster)
