local mType = Game.createMonsterType("Fury")
local monster = {}
monster.description = "a fury"
monster.experience = 4500
monster.outfit = {lookType = 149}

monster.health = 4100
monster.maxHealth = monster.health
monster.race = "blood"
monster.corpse = 20399
monster.speed = 250

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
	canwalkonenergy = false,
	canwalkonpoison = false
}

monster.voices = {
	interval = 5000,
	chance = 10,
	{text = "Ahhhhrrrr!", yell = false},
	{text = "Waaaaah!", yell = false},
	{text = "Carnage!", yell = false},
	{text = "Dieee!", yell = false},
}

monster.loot = {
{
	id = 2120,
	chance = 8000,
	maxCount = 3
},
{
	id = 2124,
	chance = 410
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
	chance = 38000,
	maxCount = 69
},
{
	id = "platinum coin",
	chance = 2800,
	maxCount = 4
},
{
	id = "terra rod",
	chance = 20000
},
{
	id = "golden legs",
	chance = 130
},
{
	id = "steel boots",
	chance = 790
},
{
	id = "meat",
	chance = 25000
},
{
	id = "orichalcum pearl",
	chance = 1500,
	maxCount = 4
},
{
	id = "red piece of cloth",
	chance = 4000
},
{
	id = "soul orb",
	chance = 21500
},
{
	id = "soul orb",
	chance = 50
},
{
	id = 6301,
	chance = 60
},
{
	id = "demonic essence",
	chance = 22500
},
{
	id = "flask of demonic blood",
	chance = 35000,
	maxCount = 3
},
{
	id = "assassin dagger",
	chance = 660
},
{
	id = "noble axe",
	chance = 2000
},
{
	id = "great health potion",
	chance = 10500
},
{
	id = "jalapeno pepper",
	chance = 29280,
	maxCount = 4
},
{
	id = 9813,
	chance = 1920
}
}

monster.attacks = {
{
	name = "melee",
	interval = 2 * 1000,
	attack = 510,
	skill = 70,
	effect = CONST_ME_DRAWBLOOD
},
{
	name = "combat",
	interval = 2 * 1000,
	chance = 10,
	minDamage = -200,
	maxDamage = -300,
	length = 8,
	spread = 3,
	type = COMBAT_FIREDAMAGE,
	effect = CONST_ME_EXPLOSIONAREA
},
{
	name = "combat",
	interval = 2 * 1000,
	chance = 5,
	minDamage = -120,
	maxDamage = -700,
	length = 8,
	spread = 0,
	type = COMBAT_DEATHDAMAGE,
	effect = CONST_ME_REDSPARK
},
{
	name = "combat",
	interval = 2 * 1000,
	chance = 10,
	minDamage = -120,
	maxDamage = -300,
	radius = 4,
	target = false,
	type = COMBAT_DEATHDAMAGE,
	effect = CONST_ME_REDSPARK
},
{
	name = "combat",
	interval = 2 * 1000,
	chance = 10,
	minDamage = -120,
	maxDamage = -300,
	radius = 3,
	target = false,
	type = COMBAT_LIFEDRAIN,
	effect = CONST_ME_BLACKSPARK
},
{
	name = "combat",
	interval = 2 * 1000,
	chance = 10,
	minDamage = -125,
	maxDamage = -250,
	range = 7,
	type = COMBAT_DEATHDAMAGE,
	shootEffect = CONST_ANI_SUDDENDEATH,
	effect = CONST_ME_SMALLCLOUDS
},
{
	name = "speed",
	interval = 2 * 1000,
	chance = 15,
	range = 7,
	speed = -800,
	duration = 30 * 1000,
	shootEffect = CONST_ANI_SUDDENDEATH,
	effect = CONST_ME_SMALLCLOUDS
}
}

monster.defenses = {
	defense = 20,
	armor = 20,
	{
			name = "speed",
			interval = 2 * 1000,
			chance = 15,
			speed = 800,
			duration = 5 * 1000,
			effect = CONST_ME_MAGIC_RED
		},
}

monster.elements = {
{
	type = COMBAT_ICEDAMAGE,
	percent = 30
},
{
	type = COMBAT_HOLYDAMAGE,
	percent = 30
},
{
	type = COMBAT_DEATHDAMAGE,
	percent = -10
},
{
	type = COMBAT_ENERGYDAMAGE,
	percent = -10
},
{
	type = COMBAT_EARTHDAMAGE,
	percent = -10
},
{
	type = COMBAT_PHYSICALDAMAGE,
	percent = -10
}
}

monster.immunities = {
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
}
}

mType:register(monster)
