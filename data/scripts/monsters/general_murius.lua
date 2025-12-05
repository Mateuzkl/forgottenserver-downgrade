local mType = Game.createMonsterType("General Murius")
local monster = {}
monster.description = "General Murius"
monster.experience = 450
monster.outfit = {lookType = 611}

monster.health = 550
monster.maxHealth = monster.health
monster.race = "blood"
monster.corpse = 23462
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
	targetDistance = 1,
	staticAttackChance = 90,
	isboss = true
}

monster.summons = {
{
	name = "Minotaur Archer",
	chance = 15,
	interval = 1 * 1000
},
{
	name = "Minotaur Guard",
	chance = 12,
	interval = 1 * 1000
}
}

monster.voices = {
	interval = 5000,
	chance = 10,
	{text = "Feel the power of the Mooh'Tah!", yell = false},
	{text = "You will get what you deserve!", yell = false},
	{text = "For the king!", yell = false},
	{text = "Guards!", yell = false},
}

monster.loot = {
{
	id = "minotaur horn",
	chance = 100000,
	maxCount = 2
},
{
	id = "minotaur leather",
	chance = 100000
},
{
	id = "gold coin",
	chance = 93333,
	maxCount = 97
},
{
	id = "platinum coin",
	chance = 93333,
	maxCount = 3
},
{
	id = "double axe",
	chance = 80000
},
{
	id = "brass armor",
	chance = 66667
},
{
	id = "battle shield",
	chance = 33333
},
{
	id = "piercing bolt",
	chance = 33333,
	maxCount = 11
},
{
	id = "meat",
	chance = 26667
},
{
	id = "chain legs",
	chance = 20000
},
{
	id = "minotaur trophy",
	chance = 20000
},
{
	id = "power bolt",
	chance = 20000,
	maxCount = 7
},
{
	id = "fishing rod",
	chance = 6667
},
{
	id = "strong health potion",
	chance = 6667
}
}

monster.attacks = {
{
	name = "melee",
	interval = 2 * 1000,
	attack = 220,
	skill = 70,
	effect = CONST_ME_DRAWBLOOD
},
{
	name = "combat",
	interval = 1 * 1000,
	chance = 12,
	minDamage = -50,
	maxDamage = -120,
	range = 7,
	type = COMBAT_PHYSICALDAMAGE,
	shootEffect = CONST_ANI_BOLT
},
{
	name = "combat",
	interval = 1 * 1000,
	chance = 10,
	minDamage = -50,
	maxDamage = -80,
	radius = 3,
	target = false,
	type = COMBAT_PHYSICALDAMAGE,
	effect = CONST_ME_BLACKSPARK
}
}

monster.defenses = {
	defense = 22,
	armor = 16,
	{
			name = "combat",
			interval = 1 * 1000,
			chance = 15,
			type = COMBAT_HEALING,
			minDamage = 50,
			maxDamage = 100,
			effect = CONST_ME_MAGIC_RED
		},
}

monster.immunities = {
{
	type = "invisible",
	condition = true
}
}

mType:register(monster)
