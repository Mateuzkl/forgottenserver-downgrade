local mType = Game.createMonsterType("Energy Overlord")
local monster = {}
monster.description = "an Energy Overlord"
monster.experience = 2800
monster.outfit = {lookType = 290}

monster.health = 4000
monster.maxHealth = monster.health
monster.race = "undead"
monster.corpse = 8966
monster.speed = 290

monster.changeTarget = {interval = 20 * 1000, chance = 15}

monster.flags = {
	summonable = false,
	attackable = true,
	hostile = true,
	illusionable = false,
	convinceable = false,
	pushable = false,
	canpushitems = true,
	staticAttackChance = 85,
	targetDistance = 1
}

monster.loot = {
{
	id = "gold coin",
	chance = 100000,
	maxCount = 64
},
{
	id = "platinum coin",
	chance = 25000,
	maxCount = 2
},
{
	id = "pure energy",
	chance = 100000
}
}

monster.attacks = {
{
	name = "melee",
	interval = 2 * 1000,
	attack = 200,
	skill = 70,
	effect = CONST_ME_DRAWBLOOD
},
{
	name = "combat",
	interval = 2 * 1000,
	chance = 25,
	minDamage = 0,
	maxDamage = -800,
	length = 7,
	spread = 0,
	type = COMBAT_ENERGYDAMAGE,
	effect = CONST_ME_PURPLEENERGY
},
{
	name = "combat",
	interval = 1 * 1000,
	chance = 11,
	minDamage = 0,
	maxDamage = -200,
	range = 3,
	target = true,
	type = COMBAT_ENERGYDAMAGE,
	effect = CONST_ME_PURPLEENERGY
},
{
	name = "combat",
	interval = 1 * 1000,
	chance = 9,
	minDamage = -50,
	maxDamage = -200,
	radius = 5,
	target = false,
	type = COMBAT_EARTHDAMAGE,
	effect = CONST_ME_BIGPLANTS
}
}

monster.defenses = {
	defense = 40,
	armor = 40,
	{
			name = "combat",
			interval = 2 * 1000,
			chance = 15,
			type = COMBAT_HEALING,
			minDamage = 90,
			maxDamage = 150,
			effect = CONST_ME_MAGIC_BLUE
		},
}

monster.elements = {
{
	type = COMBAT_PHYSICALDAMAGE,
	percent = 50
},
{
	type = COMBAT_FIREDAMAGE,
	percent = -1
}
}

monster.immunities = {
{
	type = "ice",
	combat = true,
	condition = true
},
{
	type = "energy",
	combat = true,
	condition = true
}
}

mType:register(monster)
