local mType = Game.createMonsterType("Energy Elemental")
local monster = {}
monster.description = "an energy elemental"
monster.experience = 550
monster.outfit = {lookType = 293}

monster.health = 500
monster.maxHealth = monster.health
monster.race = "energy"
monster.corpse = 8966
monster.speed = 200

monster.changeTarget = {interval = 4 * 1000, chance = 10}

monster.flags = {
	summonable = false,
	attackable = true,
	hostile = true,
	illusionable = true,
	convinceable = false,
	pushable = false,
	canpushitems = false,
	staticAttackChance = 85,
	targetDistance = 1,
	canwalkonpoison = false
}

monster.loot = {
{
	id = 2124,
	chance = 2000
},
{
	id = "gold coin",
	chance = 50000,
	maxCount = 100
},
{
	id = "gold coin",
	chance = 50000,
	maxCount = 70
},
{
	id = "small amethyst",
	chance = 5000,
	maxCount = 2
},
{
	id = "energy ring",
	chance = 892
},
{
	id = "silver amulet",
	chance = 1020
},
{
	id = "wand of cosmic energy",
	chance = 636
},
{
	id = "throwing star",
	chance = 9900,
	maxCount = 5
},
{
	id = "obsidian lance",
	chance = 3571
},
{
	id = "guardian shield",
	chance = 243
},
{
	id = "crystal sword",
	chance = 5882
},
{
	id = "strong mana potion",
	chance = 7692
},
{
	id = "mana potion",
	chance = 11711
},
{
	id = "flash arrow",
	chance = 10000,
	maxCount = 10
}
}

monster.attacks = {
{
	name = "melee",
	interval = 2 * 1000,
	attack = 175,
	skill = 70,
	effect = CONST_ME_DRAWBLOOD
},
{
	name = "combat",
	interval = 2 * 1000,
	chance = 10,
	minDamage = -125,
	maxDamage = -252,
	range = 7,
	radius = 2,
	target = true,
	type = COMBAT_ENERGYDAMAGE,
	shootEffect = CONST_ANI_ENERGY,
	effect = CONST_ANI_ENERGY
},
{
	name = "combat",
	interval = 2 * 1000,
	chance = 15,
	minDamage = -100,
	maxDamage = -130,
	range = 7,
	target = true,
	type = COMBAT_ENERGYDAMAGE,
	shootEffect = CONST_ANI_ENERGYBALL,
	effect = CONST_ANI_ENERGY
}
}

monster.defenses = {
	defense = 15,
	armor = 15,
	{
			name = "combat",
			interval = 2 * 1000,
			chance = 10,
			type = COMBAT_HEALING,
			minDamage = 90,
			maxDamage = 150,
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
	percent = 10
},
{
	type = COMBAT_DEATHDAMAGE,
	percent = 5
},
{
	type = COMBAT_EARTHDAMAGE,
	percent = -15
}
}

monster.immunities = {
{
	type = "fire",
	combat = true,
	condition = true
},
{
	type = "energy",
	combat = true,
	condition = true
},
{
	type = "ice",
	combat = true,
	condition = true
},
{
	type = "lifedrain",
	combat = true
},
{
	type = "invisible",
	condition = true
},
{
	type = "paralyze",
	condition = true
}
}

mType:register(monster)
