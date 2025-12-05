local mType = Game.createMonsterType("Goblin Scavenger")
local monster = {}
monster.description = "a goblin scavenger"
monster.experience = 37
monster.outfit = {lookType = 297}

monster.health = 60
monster.maxHealth = monster.health
monster.race = "blood"
monster.corpse = 6002
monster.speed = 132

monster.changeTarget = {interval = 4 * 1000, chance = 10}

monster.flags = {
	attackable = true,
	hostile = true,
	illusionable = true,
	convinceable = true,
	pushable = true,
	canpushitems = false,
	canpushcreatures = false,
	targetDistance = 1,
	staticAttackChance = 90,
	canwalkonenergy = false,
	canwalkonfire = false,
	canwalkonpoison = false
}

monster.voices = {
	interval = 1000,
	chance = 5,
	{text = "Shiny, shiny!", yell = false},
	{text = "You mean!", yell = false},
	{text = "All mine!", yell = false},
	{text = "Uhh!", yell = false},
	{text = "Gimme gimme!", yell = false},
}

monster.loot = {
{
	id = "gold coin",
	chance = 50077,
	maxCount = 9
},
{
	id = "small stone",
	chance = 24937,
	maxCount = 2
},
{
	id = "dagger",
	chance = 18190
},
{
	id = "fish",
	chance = 12982
},
{
	id = "bone",
	chance = 12643
},
{
	id = "leather helmet",
	chance = 9855
},
{
	id = "small axe",
	chance = 9448
},
{
	id = "short sword",
	chance = 8993
},
{
	id = "leather armor",
	chance = 7696
},
{
	id = "mouldy cheese",
	chance = 7018
},
{
	id = "bone club",
	chance = 5044
}
}

monster.attacks = {
{
	name = "melee",
	interval = 2 * 1000,
	attack = 15,
	skill = 70,
	effect = CONST_ME_DRAWBLOOD
},
{
	name = "combat",
	interval = 2 * 1000,
	chance = 10,
	minDamage = 0,
	maxDamage = -30,
	range = 7,
	type = COMBAT_PHYSICALDAMAGE,
	shootEffect = CONST_ANI_SPEAR
},
{
	name = "combat",
	interval = 2 * 1000,
	chance = 5,
	minDamage = -22,
	maxDamage = -30,
	range = 7,
	type = COMBAT_LIFEDRAIN,
	effect = CONST_ME_MAGIC_RED
},
{
	name = "combat",
	interval = 2 * 1000,
	chance = 5,
	minDamage = -1,
	maxDamage = -30,
	range = 7,
	type = COMBAT_DEATHDAMAGE,
	shootEffect = CONST_ANI_SUDDENDEATH,
	effect = CONST_ME_SMALLCLOUDS
}
}

monster.defenses = {
	defense = 7,
	armor = 7,
	{
			name = "combat",
			interval = 2 * 1000,
			chance = 15,
			type = COMBAT_HEALING,
			minDamage = 10,
			maxDamage = 16,
			effect = CONST_ANI_ENERGY
		},
}

monster.elements = {
{
	type = COMBAT_ENERGYDAMAGE,
	percent = 20
},
{
	type = COMBAT_EARTHDAMAGE,
	percent = -10
},
{
	type = COMBAT_HOLYDAMAGE,
	percent = 20
},
{
	type = COMBAT_DEATHDAMAGE,
	percent = -10
}
}

mType:register(monster)
