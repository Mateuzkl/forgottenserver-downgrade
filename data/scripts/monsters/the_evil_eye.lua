local mType = Game.createMonsterType("The Evil Eye")
local monster = {}
monster.description = "The Evil Eye"
monster.experience = 750
monster.outfit = {lookType = 210}

monster.health = 1200
monster.maxHealth = monster.health
monster.race = "blood"
monster.corpse = 6037
monster.speed = 240
monster.maxSummons = 5

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
	chance = 13,
	interval = 1 * 1000
},
{
	name = "ghost",
	chance = 12,
	interval = 1 * 1000
}
}

monster.voices = {
	interval = 5000,
	chance = 10,
	{text = "Inferior creatures, bow before my power!", yell = false},
	{text = "653768764!", yell = false},
}

monster.loot = {
{
	id = "bonelord eye",
	chance = 100000
},
{
	id = "gold coin",
	chance = 33000,
	maxCount = 29
},
{
	id = "gold coin",
	chance = 33000,
	maxCount = 100
},
{
	id = "gold coin",
	chance = 33000,
	maxCount = 100
},
{
	id = "small flask of eyedrops",
	chance = 100000
},
{
	id = "morning star",
	chance = 50000
},
{
	id = "steel shield",
	chance = 50000
},
{
	id = "two handed sword",
	chance = 34000
},
{
	id = "longsword",
	chance = 23000
},
{
	id = 2175,
	chance = 23000
},
{
	id = "great mana potion",
	chance = 15000
},
{
	id = "bonelord shield",
	chance = 11000
},
{
	id = "terra mantle",
	chance = 11000
},
{
	id = "terra rod",
	chance = 500
},
{
	id = "bonelord helmet",
	chance = 100
}
}

monster.attacks = {
{
	name = "melee",
	interval = 2 * 1000,
	attack = 90,
	skill = 70,
	effect = CONST_ME_DRAWBLOOD
},
{
	name = "combat",
	interval = 1 * 1000,
	chance = 15,
	minDamage = -60,
	maxDamage = -130,
	range = 7,
	type = COMBAT_ENERGYDAMAGE,
	shootEffect = CONST_ANI_ENERGY
},
{
	name = "combat",
	interval = 1 * 1000,
	chance = 13,
	minDamage = -85,
	maxDamage = -115,
	range = 7,
	type = COMBAT_FIREDAMAGE,
	shootEffect = CONST_ANI_FIRE
},
{
	name = "combat",
	interval = 1 * 1000,
	chance = 17,
	minDamage = -135,
	maxDamage = -175,
	range = 7,
	type = COMBAT_PHYSICALDAMAGE,
	shootEffect = CONST_ANI_SUDDENDEATH,
	effect = CONST_ME_MORTAREA
},
{
	name = "combat",
	interval = 1 * 1000,
	chance = 15,
	minDamage = -40,
	maxDamage = -120,
	range = 7,
	type = COMBAT_EARTHDAMAGE,
	shootEffect = CONST_ANI_POISON
},
{
	name = "combat",
	interval = 1 * 1000,
	chance = 12,
	minDamage = -110,
	maxDamage = -130,
	range = 7,
	type = COMBAT_LIFEDRAIN,
	effect = CONST_ME_MAGIC_RED
},
{
	name = "speed",
	interval = 1 * 1000,
	chance = 10,
	range = 7,
	speed = -850,
	duration = 20 * 1000,
	effect = CONST_ME_MAGIC_RED
},
{
	name = "combat",
	interval = 1 * 1000,
	chance = 8,
	minDamage = -35,
	maxDamage = -85,
	length = 8,
	spread = 3,
	type = COMBAT_EARTHDAMAGE,
	effect = CONST_ME_GREENBUBBLE
},
{
	name = "combat",
	interval = 1 * 1000,
	chance = 6,
	minDamage = -75,
	maxDamage = -85,
	length = 8,
	spread = 3,
	type = COMBAT_LIFEDRAIN,
	effect = CONST_ME_MAGIC_RED
},
{
	name = "combat",
	interval = 1 * 1000,
	chance = 9,
	minDamage = -150,
	maxDamage = -250,
	length = 8,
	spread = 3,
	type = COMBAT_MANADRAIN,
	effect = CONST_ME_BLUEBUBBLE
}
}

monster.defenses = {
	defense = 23,
	armor = 19,
	{
			name = "combat",
			interval = 1 * 1000,
			chance = 9,
			type = COMBAT_HEALING,
			minDamage = 1,
			maxDamage = 219,
			effect = CONST_ME_MAGIC_BLUE
		},
}

monster.elements = {
{
	type = COMBAT_HOLYDAMAGE,
	percent = -20
}
}

monster.immunities = {
{
	type = "earth",
	combat = true,
	condition = true
},
{
	type = "invisible",
	condition = true
}
}

mType:register(monster)
