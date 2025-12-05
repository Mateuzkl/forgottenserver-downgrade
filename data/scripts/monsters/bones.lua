local mType = Game.createMonsterType("Bones")
local monster = {}
monster.description = "Bones"
monster.experience = 3750
monster.outfit = {lookType = 231}

monster.health = 9500
monster.maxHealth = monster.health
monster.race = "undead"
monster.corpse = 6306
monster.speed = 300

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
	staticAttackChance = 90,
	targetDistance = 1,
	isboss = true
}

monster.voices = {
	interval = 5000,
	chance = 10,
	{text = "Your new name is breakfast.", yell = false},
	{text = "Keep that dog away!", yell = false},
	{text = "Out Fluffy! Out! Bad dog!", yell = false},
}

monster.loot = {
{
	id = "gold coin",
	chance = 100000,
	maxCount = 100
},
{
	id = "gold coin",
	chance = 50000,
	maxCount = 90
},
{
	id = "sword ring",
	chance = 10000
},
{
	id = "broadsword",
	chance = 4000
},
{
	id = "magic plate armor",
	chance = 2000
},
{
	id = "spectral stone",
	chance = 800
},
{
	id = "skull helmet",
	chance = 50000
},
{
	id = "soul orb",
	chance = 10000
},
{
	id = 6300,
	chance = 4000
},
{
	id = "demonic essence",
	chance = 1538
},
{
	id = 6570,
	chance = 5538,
	maxCount = 3
},
{
	id = 6571,
	chance = 1538
},
{
	id = "dragonbone staff",
	chance = 50000
}
}

monster.attacks = {
{
	name = "melee",
	interval = 2 * 1000,
	attack = 845,
	skill = 70,
	effect = CONST_ME_DRAWBLOOD
},
{
	name = "combat",
	interval = 1 * 1000,
	chance = 13,
	minDamage = -400,
	maxDamage = -600,
	radius = 1,
	target = true,
	type = COMBAT_LIFEDRAIN
},
{
	name = "combat",
	interval = 3 * 1000,
	chance = 34,
	minDamage = -180,
	maxDamage = -500,
	range = 1,
	radius = 1,
	target = true,
	type = COMBAT_DEATHDAMAGE,
	shootEffect = CONST_ANI_DEATH
}
}

monster.defenses = {
	defense = 55,
	armor = 50,
	{
			name = "combat",
			interval = 5 * 1000,
			chance = 25,
			type = COMBAT_HEALING,
			minDamage = 60,
			maxDamage = 100,
			effect = CONST_ME_MAGIC_BLUE
		},
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
