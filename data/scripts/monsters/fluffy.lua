local mType = Game.createMonsterType("Fluffy")
local monster = {}
monster.description = "Fluffy"
monster.experience = 3550
monster.outfit = {lookType = 240}

monster.health = 4500
monster.maxHealth = monster.health
monster.race = "blood"
monster.corpse = 6332
monster.speed = 310

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
	interval = 5000,
	chance = 10,
	{text = "Wooof!", yell = false},
}

monster.loot = {
{
	id = "gold coin",
	chance = 100000,
	maxCount = 100
},
{
	id = "gold coin",
	chance = 100000,
	maxCount = 20
},
{
	id = "bone",
	chance = 25000
},
{
	id = "spike sword",
	chance = 2500
},
{
	id = "knight axe",
	chance = 2857
},
{
	id = "ham",
	chance = 50000,
	maxCount = 8
},
{
	id = "soul orb",
	chance = 5555
},
{
	id = "demonic essence",
	chance = 7200
},
{
	id = "flask of demonic blood",
	chance = 8888
},
{
	id = "blue surprise bag",
	chance = 5538,
	maxCount = 4
},
{
	id = "red surprise bag",
	chance = 1538
}
}

monster.attacks = {
{
	name = "melee",
	interval = 2 * 1000,
	attack = 648,
	skill = 70,
	effect = CONST_ME_DRAWBLOOD
},
{
	name = "combat",
	interval = 1 * 1000,
	chance = 30,
	minDamage = -100,
	maxDamage = -200,
	length = 8,
	spread = 3,
	type = COMBAT_ENERGYDAMAGE,
	effect = CONST_ME_BLUEBUBBLE
},
{
	name = "combat",
	interval = 1 * 1000,
	chance = 15,
	minDamage = -120,
	maxDamage = -300,
	length = 8,
	spread = 3,
	type = COMBAT_EARTHDAMAGE,
	effect = CONST_ME_POISON
},
{
	name = "combat",
	interval = 1 * 1000,
	chance = 25,
	minDamage = -105,
	maxDamage = -235,
	range = 7,
	type = COMBAT_PHYSICALDAMAGE,
	shootEffect = CONST_ANI_SUDDENDEATH
},
{
	name = "combat",
	interval = 1 * 1000,
	chance = 20,
	minDamage = -135,
	maxDamage = -255,
	range = 7,
	radius = 6,
	target = false,
	type = COMBAT_EARTHDAMAGE,
	effect = CONST_ME_BLUEBUBBLE
}
}

monster.defenses = {
	defense = 35,
	armor = 25,
}

monster.immunities = {
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
