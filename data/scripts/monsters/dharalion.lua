local mType = Game.createMonsterType("Dharalion")
local monster = {}
monster.description = "Dharalion"
monster.experience = 570
monster.outfit = {lookType = 203}

monster.health = 380
monster.maxHealth = monster.health
monster.race = "blood"
monster.corpse = 6011
monster.speed = 240
monster.maxSummons = 2

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
	targetDistance = 4,
	staticAttackChance = 90,
	isboss = true
}

monster.summons = {
{
	name = "demon skeleton",
	chance = 6,
	interval = 1 * 1000
}
}

monster.voices = {
	interval = 5000,
	chance = 10,
	{text = "Feel my wrath!", yell = false},
	{text = "Noone will stop my ascension!", yell = false},
	{text = "My powers are divine!", yell = false},
	{text = "You desecrated this temple!", yell = false},
	{text = "Muahahaha!", yell = false},
}

monster.loot = {
{
	id = "gold coin",
	chance = 100000,
	maxCount = 100
},
{
	id = "holy orchid",
	chance = 100000
},
{
	id = "elvish talisman",
	chance = 87671
},
{
	id = "elven astral observer",
	chance = 83562
},
{
	id = "yellow gem",
	chance = 41096
},
{
	id = "melon",
	chance = 24658
},
{
	id = "blank rune",
	chance = 23288
},
{
	id = "elven amulet",
	chance = 16438
},
{
	id = "bread",
	chance = 15068
},
{
	id = "great mana potion",
	chance = 13699
},
{
	id = "life crystal",
	chance = 12329
},
{
	id = "sling herb",
	chance = 10959
},
{
	id = "cornucopia",
	chance = 9589
},
{
	id = "green tunic",
	chance = 5479
},
{
	id = "royal spear",
	chance = 1370,
	maxCount = 2
}
}

monster.attacks = {
{
	name = "melee",
	interval = 2 * 1000,
	attack = 30,
	skill = 70,
	effect = CONST_ME_DRAWBLOOD
},
{
	name = "combat",
	interval = 1 * 1000,
	chance = 15,
	minDamage = 0,
	maxDamage = -100,
	range = 7,
	type = COMBAT_MANADRAIN
},
{
	name = "combat",
	interval = 1 * 1000,
	chance = 13,
	minDamage = -80,
	maxDamage = -100,
	range = 7,
	type = COMBAT_ENERGYDAMAGE,
	shootEffect = CONST_ANI_ENERGY,
	effect = CONST_ANI_ENERGY
},
{
	name = "combat",
	interval = 1 * 1000,
	chance = 10,
	minDamage = -80,
	maxDamage = -151,
	range = 7,
	type = COMBAT_DEATHDAMAGE,
	shootEffect = CONST_ANI_SUDDENDEATH
}
}

monster.defenses = {
	defense = 25,
	armor = 15,
	{
			name = "combat",
			interval = 1 * 1000,
			chance = 20,
			type = COMBAT_HEALING,
			minDamage = 90,
			maxDamage = 150,
			effect = CONST_ME_MAGIC_BLUE
		},
	{
			name = "speed",
			interval = 1 * 1000,
			chance = 7,
			speed = 300,
			duration = 10 * 1000,
			effect = CONST_ME_MAGIC_RED
		},
}

monster.elements = {
{
	type = COMBAT_HOLYDAMAGE,
	percent = -10
}
}

monster.immunities = {
{
	type = "invisible",
	condition = true
}
}

mType:register(monster)
