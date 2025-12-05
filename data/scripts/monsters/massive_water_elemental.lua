local mType = Game.createMonsterType("Massive Water Elemental")
local monster = {}
monster.description = "a massive water elemental"
monster.experience = 1100
monster.outfit = {lookType = 11}

monster.health = 1250
monster.maxHealth = monster.health
monster.race = "undead"
monster.corpse = 10499
monster.speed = 280

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
	staticAttackChance = 90,
	targetDistance = 1,
	canwalkonenergy = false
}

monster.loot = {
{
	id = "small diamond",
	chance = 1900,
	maxCount = 2
},
{
	id = "gold coin",
	chance = 50000,
	maxCount = 100
},
{
	id = "small emerald",
	chance = 1000,
	maxCount = 2
},
{
	id = "platinum coin",
	chance = 20000,
	maxCount = 2
},
{
	id = "energy ring",
	chance = 910
},
{
	id = "life ring",
	chance = 1000
},
{
	id = 2667,
	chance = 40000,
	maxCount = 2
},
{
	id = "rainbow trout",
	chance = 1340
},
{
	id = "green perch",
	chance = 1590
},
{
	id = "great mana potion",
	chance = 10400
},
{
	id = "great health potion",
	chance = 10000
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
	interval = 2 * 1000,
	chance = 15,
	minDamage = -330,
	maxDamage = -450,
	range = 7,
	radius = 2,
	target = true,
	type = COMBAT_ICEDAMAGE,
	effect = CONST_ME_BLUEBUBBLE
},
{
	name = "combat",
	interval = 2 * 1000,
	chance = 20,
	minDamage = -170,
	maxDamage = -210,
	range = 7,
	type = COMBAT_ICEDAMAGE,
	shootEffect = CONST_ANI_SMALLICE
},
{
	name = "combat",
	type = COMBAT_EARTHDAMAGE,
	conditionType = CONDITION_POISON,
	conditionMinDamage = -355,
	conditionMaxDamage = -420,
	conditionTickInterval = 2000,
	interval = 2 * 1000,
	chance = 20,
	radius = 5,
	target = false,
	effect = CONST_ME_POISON
}
}

monster.defenses = {
	defense = 25,
	armor = 25,
	{
			name = "combat",
			interval = 2 * 1000,
			chance = 5,
			type = COMBAT_HEALING,
			minDamage = 120,
			maxDamage = 250,
			effect = CONST_ME_MAGIC_BLUE
		},
}

monster.elements = {
{
	type = COMBAT_PHYSICALDAMAGE,
	percent = 30
},
{
	type = COMBAT_HOLYDAMAGE,
	percent = 30
},
{
	type = COMBAT_DEATHDAMAGE,
	percent = 50
},
{
	type = COMBAT_ENERGYDAMAGE,
	percent = -25
}
}

monster.immunities = {
{
	type = "paralyze",
	condition = true
},
{
	type = "invisible",
	condition = true
},
{
	type = "drown",
	condition = true
},
{
	type = "fire",
	combat = true,
	condition = true
},
{
	type = "ice",
	combat = true,
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
