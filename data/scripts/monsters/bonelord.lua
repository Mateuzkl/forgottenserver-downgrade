local mType = Game.createMonsterType("Bonelord")
local monster = {}
monster.description = "a bonelord"
monster.experience = 170
monster.outfit = {lookType = 17}

monster.health = 260
monster.maxHealth = monster.health
monster.race = "venom"
monster.corpse = 5992
monster.speed = 150
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
	name = "Skeleton",
	chance = 20,
	interval = 2 * 1000
}
}

monster.voices = {
	interval = 5000,
	chance = 10,
	{text = "Eye for eye!", yell = false},
	{text = "Here's looking at you!", yell = false},
	{text = "Let me take a look at you!", yell = false},
	{text = "You've got the look!", yell = false},
	{text = "I've got to look!", yell = false},
}

monster.loot = {
{
	id = "gold coin",
	chance = 99000,
	maxCount = 48
},
{
	id = "longsword",
	chance = 9000
},
{
	id = "morning star",
	chance = 7000
},
{
	id = "small flask of eyedrops",
	chance = 5000
},
{
	id = 2175,
	chance = 5000
},
{
	id = "steel shield",
	chance = 4000
},
{
	id = "two handed sword",
	chance = 3950
},
{
	id = "bonelord eye",
	chance = 1000
},
{
	id = "terra rod",
	chance = 510
},
{
	id = "mana potion",
	chance = 300
},
{
	id = "bonelord shield",
	chance = 110
}
}

monster.attacks = {
{
	name = "melee",
	interval = 2 * 1000,
	attack = 5,
	skill = 70,
	effect = CONST_ME_DRAWBLOOD
},
{
	name = "combat",
	interval = 2 * 1000,
	chance = 5,
	minDamage = -15,
	maxDamage = -45,
	range = 7,
	type = COMBAT_ENERGYDAMAGE,
	shootEffect = CONST_ANI_ENERGY
},
{
	name = "combat",
	interval = 2 * 1000,
	chance = 5,
	minDamage = -25,
	maxDamage = -45,
	range = 7,
	type = COMBAT_FIREDAMAGE,
	shootEffect = CONST_ANI_FIRE
},
{
	name = "combat",
	interval = 2 * 1000,
	chance = 5,
	minDamage = -30,
	maxDamage = -50,
	range = 7,
	type = COMBAT_DEATHDAMAGE,
	shootEffect = CONST_ANI_SUDDENDEATH,
	effect = CONST_ME_SMALLCLOUDS
},
{
	name = "combat",
	interval = 2 * 1000,
	chance = 5,
	minDamage = -5,
	maxDamage = -45,
	range = 7,
	type = COMBAT_EARTHDAMAGE,
	shootEffect = CONST_ANI_POISON
},
{
	name = "combat",
	interval = 2 * 1000,
	chance = 5,
	minDamage = -5,
	maxDamage = -50,
	range = 7,
	type = COMBAT_DEATHDAMAGE,
	shootEffect = CONST_ANI_DEATH
},
{
	name = "combat",
	interval = 2 * 1000,
	chance = 5,
	minDamage = 0,
	maxDamage = -45,
	range = 7,
	type = COMBAT_LIFEDRAIN,
	effect = CONST_ME_MAGIC_RED
},
{
	name = "combat",
	interval = 2 * 1000,
	chance = 5,
	minDamage = -5,
	maxDamage = -35,
	range = 7,
	type = COMBAT_MANADRAIN
}
}

monster.defenses = {
	defense = 5,
	armor = 5,
}

monster.elements = {
{
	type = COMBAT_ICEDAMAGE,
	percent = 20
},
{
	type = COMBAT_FIREDAMAGE,
	percent = -10
}
}

monster.immunities = {
{
	type = "invisible",
	condition = true
},
{
	type = "earth",
	combat = true,
	condition = true
},
{
	type = "lifedrain",
	combat = true
}
}

mType:register(monster)
