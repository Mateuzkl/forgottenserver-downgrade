local mType = Game.createMonsterType("Ancient Scarab")
local monster = {}
monster.description = "an ancient scarab"
monster.experience = 720
monster.outfit = {lookType = 79}

monster.health = 1000
monster.maxHealth = monster.health
monster.race = "venom"
monster.corpse = 6021
monster.speed = 218
monster.maxSummons = 3

monster.changeTarget = {interval = 4 * 1000, chance = 10}

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
	staticAttackChance = 80,
	canwalkonenergy = false,
	canwalkonfire = false
}

monster.summons = {
{
	name = "Larva",
	chance = 10,
	interval = 2 * 1000
}
}

monster.loot = {
{
	id = "gold coin",
	chance = 50000,
	maxCount = 100
},
{
	id = "gold coin",
	chance = 50000,
	maxCount = 87
},
{
	id = 2162,
	chance = 10300
},
{
	id = "scarab coin",
	chance = 8100,
	maxCount = 2
},
{
	id = "scarab pincers",
	chance = 7140
},
{
	id = "small emerald",
	chance = 6000,
	maxCount = 3
},
{
	id = "small amethyst",
	chance = 6000,
	maxCount = 4
},
{
	id = "plate armor",
	chance = 5000
},
{
	id = "scarab amulet",
	chance = 3510
},
{
	id = 2142,
	chance = 2670
},
{
	id = "strong health potion",
	chance = 1660
},
{
	id = "springsprout rod",
	chance = 1000
},
{
	id = "scarab shield",
	chance = 500
},
{
	id = "terra hood",
	chance = 400
},
{
	id = "daramian waraxe",
	chance = 300
}
}

monster.attacks = {
{
	name = "melee",
	interval = 2 * 1000,
	attack = 210,
	skill = 70,
	effect = CONST_ME_DRAWBLOOD
},
{
	name = "combat",
	interval = 2 * 1000,
	chance = 20,
	minDamage = -15,
	maxDamage = -145,
	range = 7,
	type = COMBAT_EARTHDAMAGE,
	shootEffect = CONST_ANI_POISON,
	effect = CONST_ME_POISON
},
{
	name = "speed",
	interval = 2 * 1000,
	chance = 15,
	range = 7,
	speed = -700,
	duration = 25 * 1000,
	shootEffect = CONST_ANI_POISON,
	effect = CONST_ME_POISON
},
{
	name = "combat",
	type = COMBAT_EARTHDAMAGE,
	conditionType = CONDITION_POISON,
	conditionMinDamage = -440,
	conditionMaxDamage = -520,
	conditionTickInterval = 2000,
	interval = 2 * 1000,
	chance = 30,
	radius = 5,
	target = false,
	effect = CONST_ME_POISON
}
}

monster.defenses = {
	defense = 36,
	armor = 36,
	{
			name = "speed",
			interval = 2 * 1000,
			chance = 15,
			speed = 260,
			duration = 5 * 1000,
			effect = CONST_ME_MAGIC_RED
		},
}

monster.elements = {
{
	type = COMBAT_ENERGYDAMAGE,
	percent = 20
},
{
	type = COMBAT_PHYSICALDAMAGE,
	percent = 10
},
{
	type = COMBAT_FIREDAMAGE,
	percent = -20
},
{
	type = COMBAT_ICEDAMAGE,
	percent = -5
}
}

monster.immunities = {
{
	type = "earth",
	combat = true,
	condition = true
},
{
	type = "paralyze",
	condition = true
},
{
	type = "invisible",
	condition = true
}
}

mType:register(monster)
