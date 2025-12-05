local mType = Game.createMonsterType("Necropharus")
local monster = {}
monster.description = "Necropharus"
monster.experience = 1050
monster.outfit = {lookType = 209}

monster.health = 750
monster.maxHealth = monster.health
monster.race = "blood"
monster.corpse = 20574
monster.speed = 240
monster.maxSummons = 4

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
	name = "ghoul",
	chance = 20,
	interval = 1 * 1000
},
{
	name = "ghost",
	chance = 17,
	interval = 1 * 1000
},
{
	name = "mummy",
	chance = 15,
	interval = 1 * 1000
}
}

monster.voices = {
	interval = 5000,
	chance = 10,
	{text = "You will rise as my servant!", yell = false},
	{text = "Praise to my master Urgith!", yell = false},
}

monster.loot = {
{
	id = "gold coin",
	chance = 100000,
	maxCount = 100
},
{
	id = "book of necromantic rituals",
	chance = 100000
},
{
	id = "necromantic robe",
	chance = 100000
},
{
	id = "soul stone",
	chance = 100000
},
{
	id = "clerical mace",
	chance = 55000
},
{
	id = "skull staff",
	chance = 44000
},
{
	id = "bone club",
	chance = 36000
},
{
	id = "green mushroom",
	chance = 25000
},
{
	id = 2229,
	chance = 13000
},
{
	id = "mystic turban",
	chance = 11000
},
{
	id = "moonlight rod",
	chance = 8300
},
{
	id = 2231,
	chance = 5500
},
{
	id = "bone shield",
	chance = 5500
},
{
	id = "boots of haste",
	chance = 2700
},
{
	id = "strong mana potion",
	chance = 2700
}
}

monster.attacks = {
{
	name = "melee",
	interval = 2 * 1000,
	attack = 102,
	skill = 70,
	effect = CONST_ME_DRAWBLOOD
},
{
	name = "combat",
	interval = 1 * 1000,
	chance = 20,
	minDamage = -80,
	maxDamage = -120,
	range = 1,
	type = COMBAT_LIFEDRAIN,
	effect = CONST_ME_REDSPARK
},
{
	name = "combat",
	interval = 1 * 1000,
	chance = 17,
	minDamage = -50,
	maxDamage = -140,
	range = 7,
	type = COMBAT_EARTHDAMAGE,
	shootEffect = CONST_ANI_POISON,
	effect = CONST_ME_POISON
}
}

monster.defenses = {
	defense = 25,
	armor = 25,
	{
			name = "combat",
			interval = 1 * 1000,
			chance = 25,
			type = COMBAT_HEALING,
			minDamage = 60,
			maxDamage = 90,
			effect = CONST_ME_MAGIC_BLUE
		},
}

monster.immunities = {
{
	type = "earth",
	combat = true,
	condition = true
},
{
	type = "lifedrain",
	combat = true
},
{
	type = "outfit",
	condition = true
},
{
	type = "drunk",
	condition = true
},
{
	type = "invisible",
	condition = true
}
}

mType:register(monster)
