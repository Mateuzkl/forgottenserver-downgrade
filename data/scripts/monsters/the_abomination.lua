local mType = Game.createMonsterType("The Abomination")
local monster = {}
monster.description = "The Abomination"
monster.experience = 8500
monster.outfit = {lookType = 238}

monster.health = 285000
monster.maxHealth = monster.health
monster.race = "venom"
monster.corpse = 6532
monster.speed = 340

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

monster.voices = {
	interval = 1000,
	chance = 2,
	{text = "DEATH IS INEVITABLE!", yell = false},
	{text = "I AM THE ESSENCE OF DEATH!", yell = false},
}

monster.loot = {
{
	id = "gold coin",
	chance = 100000,
	maxCount = 100
},
{
	id = "platinum coin",
	chance = 10000,
	maxCount = 3
},
{
	id = "soul orb",
	chance = 2500
},
{
	id = "demonic essence",
	chance = 2857
}
}

monster.attacks = {
{
	name = "melee",
	interval = 2 * 1000,
	attack = 600,
	skill = 70,
	effect = CONST_ME_DRAWBLOOD
},
{
	name = "speed",
	interval = 1 * 1000,
	chance = 12,
	radius = 6,
	target = false,
	speed = -800,
	duration = 10 * 1000,
	effect = CONST_ME_POISON
},
{
	name = "combat",
	interval = 1 * 1000,
	chance = 9,
	minDamage = -200,
	maxDamage = -650,
	radius = 4,
	target = false,
	type = COMBAT_EARTHDAMAGE,
	effect = CONST_ME_POISON
},
{
	name = "combat",
	interval = 1 * 1000,
	chance = 11,
	minDamage = -400,
	maxDamage = -900,
	radius = 4,
	target = true,
	type = COMBAT_LIFEDRAIN,
	effect = CONST_ME_GREENNOTE,
	shootEffect = CONST_ANI_POISON
},
{
	name = "combat",
	interval = 2 * 1000,
	chance = 19,
	minDamage = -350,
	maxDamage = -850,
	length = 7,
	type = COMBAT_PHYSICALDAMAGE,
	shootEffect = CONST_ANI_POISON
}
}

monster.defenses = {
	defense = 25,
	armor = 25,
	{
			name = "combat",
			interval = 1 * 1000,
			chance = 75,
			type = COMBAT_HEALING,
			minDamage = 505,
			maxDamage = 605,
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
