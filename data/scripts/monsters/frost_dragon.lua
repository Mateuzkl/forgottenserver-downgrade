local mType = Game.createMonsterType("Frost Dragon")
local monster = {}
monster.description = "a frost dragon"
monster.experience = 2100
monster.outfit = {lookType = 248}

monster.health = 1800
monster.maxHealth = monster.health
monster.race = "undead"
monster.corpse = 7091
monster.speed = 212

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
	{text = "YOU WILL FREEZE!", yell = true},
	{text = "ZCHHHHH!", yell = true},
	{text = "I am so cool.", yell = false},
	{text = "Chill out!", yell = false},
}

monster.loot = {
{
	id = "gold coin",
	chance = 95017,
	maxCount = 243
},
{
	id = "dragon ham",
	chance = 79868
},
{
	id = "green mushroom",
	chance = 12151
},
{
	id = "book (gemmed)",
	chance = 8835
},
{
	id = "power bolt",
	chance = 5895,
	maxCount = 6
},
{
	id = "small sapphire",
	chance = 5092
},
{
	id = "energy ring",
	chance = 4952
},
{
	id = "ice cube",
	chance = 4089
},
{
	id = "golden mug",
	chance = 3081
},
{
	id = "life crystal",
	chance = 608
},
{
	id = "shard",
	chance = 524
},
{
	id = "strange helmet",
	chance = 453
},
{
	id = "ice rapier",
	chance = 342
},
{
	id = "tower shield",
	chance = 291
},
{
	id = "royal helmet",
	chance = 206
},
{
	id = "dragon scale mail",
	chance = 111
},
{
	id = "dragon slayer",
	chance = 97
}
}

monster.attacks = {
{
	name = "melee",
	interval = 2 * 1000,
	attack = 225,
	skill = 70,
	effect = CONST_ME_DRAWBLOOD
},
{
	name = "combat",
	interval = 2 * 1000,
	chance = 10,
	minDamage = -175,
	maxDamage = -380,
	target = false,
	length = 8,
	spread = 3,
	type = COMBAT_LIFEDRAIN,
	effect = CONST_ME_POFF
},
{
	name = "speed",
	interval = 2 * 1000,
	chance = 5,
	radius = 3,
	target = false,
	speed = -700,
	duration = 12 * 1000,
	effect = CONST_ME_POFF
},
{
	name = "speed",
	interval = 2 * 1000,
	chance = 15,
	target = false,
	length = 7,
	spread = 3,
	speed = -850,
	duration = 18 * 1000,
	effect = CONST_ME_ICEATTACK
},
{
	name = "combat",
	interval = 2 * 1000,
	chance = 5,
	minDamage = -60,
	maxDamage = -120,
	radius = 3,
	target = false,
	type = COMBAT_ICEDAMAGE,
	effect = CONST_ME_ICETORNADO
},
{
	name = "combat",
	interval = 2 * 1000,
	chance = 10,
	minDamage = -100,
	maxDamage = -240,
	radius = 4,
	target = true,
	type = COMBAT_ICEDAMAGE,
	effect = CONST_ME_ICEAREA
},
{
	name = "combat",
	interval = 2 * 1000,
	chance = 5,
	minDamage = 0,
	maxDamage = -220,
	target = false,
	length = 1,
	spread = 0,
	type = COMBAT_PHYSICALDAMAGE,
	effect = CONST_ME_POFF
},
{
	name = "speed",
	interval = 2 * 1000,
	chance = 20,
	radius = 4,
	target = true,
	speed = -600,
	duration = 12 * 1000,
	effect = CONST_ME_ICEAREA
}
}

monster.defenses = {
	defense = 38,
	armor = 38,
	{
			name = "combat",
			interval = 2 * 1000,
			chance = 10,
			type = COMBAT_HEALING,
			minDamage = 150,
			maxDamage = 200,
			effect = CONST_ME_MAGIC_BLUE
		},
	{
			name = "speed",
			interval = 2 * 1000,
			chance = 15,
			speed = 290,
			duration = 5 * 1000,
			effect = CONST_ME_MAGIC_RED
		},
}

monster.elements = {
{
	type = COMBAT_PHYSICALDAMAGE,
	percent = 5
},
{
	type = COMBAT_DEATHDAMAGE,
	percent = 10
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
	type = "fire",
	combat = true,
	condition = true
},
{
	type = "ice",
	combat = true,
	condition = true
},
{
	type = "earth",
	combat = true,
	condition = true
}
}

mType:register(monster)
