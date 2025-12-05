local mType = Game.createMonsterType("Charged Energy Elemental")
local monster = {}
monster.description = "a charged energy elemental"
monster.experience = 450
monster.outfit = {lookType = 293}

monster.health = 500
monster.maxHealth = monster.health
monster.race = "energy"
monster.corpse = 8966
monster.speed = 270

monster.changeTarget = {interval = 20 * 1000, chance = 15}

monster.flags = {
	summonable = false,
	attackable = true,
	hostile = true,
	illusionable = false,
	convinceable = false,
	pushable = false,
	canpushitems = true,
	staticAttackChance = 90,
	targetDistance = 1
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
	maxCount = 22
},
{
	id = "flash arrow",
	chance = 6250,
	maxCount = 3
},
{
	id = "energy soil",
	chance = 2063
}
}

monster.attacks = {
{
	name = "melee",
	interval = 2 * 1000,
	attack = 100,
	skill = 70,
	effect = CONST_ME_DRAWBLOOD
},
{
	name = "combat",
	interval = 2 * 1000,
	chance = 20,
	minDamage = -168,
	maxDamage = -100,
	range = 6,
	radius = 4,
	target = true,
	type = COMBAT_ENERGYDAMAGE,
	shootEffect = CONST_ANI_ENERGY,
	effect = CONST_ME_PURPLEENERGY
},
{
	name = "combat",
	type = COMBAT_ENERGYDAMAGE,
	conditionType = CONDITION_ENERGY,
	conditionTickInterval = 2000,
	interval = 1 * 1000,
	chance = 15,
	radius = 3,
	target = false,
	effect = CONST_ME_YELLOWENERGY
}
}

monster.defenses = {
	defense = 25,
	armor = 25,
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
	percent = -5
}
}

monster.immunities = {
{
	type = "energy",
	combat = true,
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
}
}

mType:register(monster)
