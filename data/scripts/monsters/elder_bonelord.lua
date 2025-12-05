local mType = Game.createMonsterType("Elder Bonelord")
local monster = {}
monster.description = "an elder bonelord"
monster.experience = 280
monster.outfit = {lookType = 108}

monster.health = 500
monster.maxHealth = monster.health
monster.race = "blood"
monster.corpse = 6037
monster.speed = 170
monster.maxSummons = 6

monster.changeTarget = {interval = 4 * 1000, chance = 10}

monster.flags = {
	summonable = false,
	attackable = true,
	hostile = true,
	illusionable = true,
	convinceable = false,
	pushable = false,
	canpushitems = true,
	canpushcreatures = false,
	targetDistance = 4,
	staticAttackChance = 90,
	canwalkonenergy = false,
	canwalkonfire = false
}

monster.summons = {
{
	name = "Gazer",
	chance = 10,
	interval = 2 * 1000
},
{
	name = "Crypt Shambler",
	chance = 15,
	interval = 2 * 1000
}
}

monster.voices = {
	interval = 5000,
	chance = 10,
	{text = "Let me take a look at you!", yell = false},
	{text = "Inferior creatures, bow before my power!", yell = false},
	{text = "659978 54764!", yell = false},
	{text = "653768764!", yell = false},
}

monster.loot = {
{
	id = "gold coin",
	chance = 99298,
	maxCount = 90
},
{
	id = "elder bonelord tentacle",
	chance = 20030
},
{
	id = "small flask of eyedrops",
	chance = 9698
},
{
	id = "sniper arrow",
	chance = 8785,
	maxCount = 4
},
{
	id = "two handed sword",
	chance = 2968
},
{
	id = "steel shield",
	chance = 2033
},
{
	id = "bonelord eye",
	chance = 1927
},
{
	id = "spellbook",
	chance = 1016
},
{
	id = "strong mana potion",
	chance = 836
},
{
	id = "giant eye",
	chance = 458
},
{
	id = "bonelord shield",
	chance = 86
},
{
	id = "bonelord helmet",
	chance = 84
}
}

monster.attacks = {
{
	name = "melee",
	interval = 2 * 1000,
	attack = 55,
	skill = 70,
	effect = CONST_ME_DRAWBLOOD
},
{
	name = "combat",
	interval = 2 * 1000,
	chance = 5,
	minDamage = -45,
	maxDamage = -60,
	range = 7,
	type = COMBAT_ENERGYDAMAGE,
	shootEffect = CONST_ANI_ENERGY
},
{
	name = "combat",
	interval = 2 * 1000,
	chance = 5,
	minDamage = -40,
	maxDamage = -80,
	range = 7,
	type = COMBAT_FIREDAMAGE,
	shootEffect = CONST_ANI_FIRE
},
{
	name = "combat",
	interval = 2 * 1000,
	chance = 10,
	minDamage = -45,
	maxDamage = -90,
	range = 7,
	type = COMBAT_DEATHDAMAGE,
	shootEffect = CONST_ANI_SUDDENDEATH,
	effect = CONST_ME_SMALLCLOUDS
},
{
	name = "combat",
	interval = 2 * 1000,
	chance = 10,
	minDamage = -20,
	maxDamage = -40,
	range = 7,
	type = COMBAT_EARTHDAMAGE,
	shootEffect = CONST_ANI_POISON
},
{
	name = "combat",
	interval = 2 * 1000,
	chance = 5,
	minDamage = -45,
	maxDamage = -85,
	range = 7,
	type = COMBAT_LIFEDRAIN,
	effect = CONST_ME_MAGIC_RED
},
{
	name = "combat",
	interval = 2 * 1000,
	chance = 5,
	minDamage = 0,
	maxDamage = -40,
	range = 7,
	type = COMBAT_MANADRAIN
},
{
	name = "speed",
	interval = 2 * 1000,
	chance = 10,
	range = 7,
	speed = -600,
	duration = 20 * 1000,
	effect = CONST_ME_MAGIC_RED
}
}

monster.defenses = {
	defense = 13,
	armor = 13,
}

monster.elements = {
{
	type = COMBAT_ENERGYDAMAGE,
	percent = 20
},
{
	type = COMBAT_ICEDAMAGE,
	percent = 30
},
{
	type = COMBAT_DEATHDAMAGE,
	percent = 30
},
{
	type = COMBAT_FIREDAMAGE,
	percent = -10
}
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
	type = "invisible",
	condition = true
}
}

mType:register(monster)
