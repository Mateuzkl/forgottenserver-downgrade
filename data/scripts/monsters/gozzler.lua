local mType = Game.createMonsterType("Gozzler")
local monster = {}
monster.description = "a gozzler"
monster.experience = 180
monster.outfit = {lookType = 313}

monster.health = 240
monster.maxHealth = monster.health
monster.race = "undead"
monster.corpse = 9938
monster.speed = 190

monster.changeTarget = {interval = 4 * 1000, chance = 10}

monster.flags = {
	summonable = true,
	attackable = true,
	hostile = true,
	illusionable = true,
	convinceable = false,
	pushable = false,
	canpushitems = true,
	canpushcreatures = true,
	targetDistance = 1,
	staticAttackChance = 70,
	canwalkonenergy = false,
	canwalkonfire = false,
	canwalkonpoison = false
}

monster.voices = {
	interval = 5000,
	chance = 10,
	{text = "Huhuhuhuuu!", yell = false},
	{text = "Let the fun begin!", yell = false},
	{text = "Yihahaha!", yell = false},
	{text = "I'll bite you! Nyehehehehe!", yell = false},
}

monster.loot = {
{
	id = "brown flask",
	chance = 8750
},
{
	id = "small sapphire",
	chance = 360
},
{
	id = "gold coin",
	chance = 52500,
	maxCount = 70
},
{
	id = "dwarven ring",
	chance = 190
},
{
	id = "battle axe",
	chance = 3100
},
{
	id = "sabre",
	chance = 8250
},
{
	id = "morning star",
	chance = 5000
},
{
	id = "serpent sword",
	chance = 250
},
{
	id = "clerical mace",
	chance = 900
},
{
	id = "plate shield",
	chance = 10000
}
}

monster.attacks = {
{
	name = "melee",
	interval = 2 * 1000,
	attack = 110,
	skill = 70,
	effect = CONST_ME_DRAWBLOOD
},
{
	name = "combat",
	interval = 2 * 1000,
	chance = 15,
	minDamage = -32,
	maxDamage = -135,
	range = 1,
	type = COMBAT_LIFEDRAIN,
	effect = CONST_ME_REDSPARK
}
}

monster.defenses = {
	defense = 15,
	armor = 15,
	{
			name = "combat",
			interval = 2 * 1000,
			chance = 10,
			type = COMBAT_HEALING,
			minDamage = 30,
			maxDamage = 50,
			effect = CONST_ME_MAGIC_BLUE
		},
	{
			name = "speed",
			interval = 2 * 1000,
			chance = 15,
			speed = 210,
			duration = 5 * 1000,
			effect = CONST_ME_MAGIC_RED
		},
}

monster.elements = {
{
	type = COMBAT_DEATHDAMAGE,
	percent = 50
},
{
	type = COMBAT_HOLYDAMAGE,
	percent = 50
},
{
	type = COMBAT_PHYSICALDAMAGE,
	percent = -5
}
}

monster.immunities = {
{
	type = "invisible",
	condition = true
}
}

mType:register(monster)
