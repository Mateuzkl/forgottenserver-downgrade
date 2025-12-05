local mType = Game.createMonsterType("The Horned Fox")
local monster = {}
monster.description = "The Horned Fox"
monster.experience = 300
monster.outfit = {lookType = 202}

monster.health = 265
monster.maxHealth = monster.health
monster.race = "blood"
monster.corpse = 5983
monster.speed = 210
monster.maxSummons = 6

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
	isboss = true
}

monster.summons = {
{
	name = "minotaur archer",
	chance = 13,
	interval = 1 * 1000
},
{
	name = "minotaur guard",
	chance = 13,
	interval = 1 * 1000
},
{
	name = "minotaur mage",
	chance = 13,
	interval = 1 * 1000
}
}

monster.voices = {
	interval = 5000,
	chance = 10,
	{text = "You will never get me!", yell = false},
	{text = "I'll be back!", yell = false},
	{text = "Catch me, if you can!", yell = false},
	{text = "Help me, boys!", yell = false},
}

monster.loot = {
{
	id = "nose ring",
	chance = 100000
},
{
	id = "gold coin",
	chance = 96875,
	maxCount = 99
},
{
	id = "minotaur leather",
	chance = 96875
},
{
	id = "minotaur horn",
	chance = 93750,
	maxCount = 2
},
{
	id = "piece of warrior armor",
	chance = 81250
},
{
	id = "piercing bolt",
	chance = 46875,
	maxCount = 14
},
{
	id = "brass armor",
	chance = 28125
},
{
	id = "meat",
	chance = 15625
},
{
	id = "battle shield",
	chance = 12500
},
{
	id = "dwarven helmet",
	chance = 9375
},
{
	id = "strong health potion",
	chance = 9375
},
{
	id = "fishing rod",
	chance = 6250
},
{
	id = "double axe",
	chance = 3125
}
}

monster.attacks = {
{
	name = "melee",
	interval = 2 * 1000,
	attack = 122,
	skill = 70,
	effect = CONST_ME_DRAWBLOOD
},
{
	name = "combat",
	interval = 1 * 1000,
	chance = 25,
	minDamage = -50,
	maxDamage = -120,
	range = 7,
	type = COMBAT_PHYSICALDAMAGE,
	shootEffect = CONST_ANI_BOLT
},
{
	name = "combat",
	type = COMBAT_EARTHDAMAGE,
	conditionType = CONDITION_POISON,
	conditionMinDamage = -50,
	conditionMaxDamage = -120,
	conditionTickInterval = 2000,
	interval = 1 * 1000,
	chance = 17,
	range = 7,
	shootEffect = CONST_ANI_BOLT
}
}

monster.defenses = {
	defense = 16,
	armor = 16,
	{
			name = "combat",
			interval = 1 * 1000,
			chance = 15,
			type = COMBAT_HEALING,
			minDamage = 25,
			maxDamage = 75,
			effect = CONST_ME_MAGIC_RED
		},
	{
			name = "invisible",
			interval = 1 * 1000,
			chance = 10,
			effect = CONST_ME_MAGIC_BLUE
		},
}

monster.elements = {
{
	type = COMBAT_DEATHDAMAGE,
	percent = -1
},
{
	type = COMBAT_ICEDAMAGE,
	percent = -1
}
}

monster.immunities = {
{
	type = "invisible",
	condition = true
}
}

mType:register(monster)
