local mType = Game.createMonsterType("Dreadbeast")
local monster = {}
monster.description = "a dreadbeast"
monster.experience = 250
monster.outfit = {lookType = 101}

monster.health = 800
monster.maxHealth = monster.health
monster.race = "undead"
monster.corpse = 6030
monster.speed = 136

monster.changeTarget = {interval = 60 * 1000, chance = 10}

monster.flags = {
	summonable = false,
	attackable = true,
	hostile = true,
	illusionable = false,
	convinceable = true,
	pushable = false,
	canpushitems = true,
	staticAttackChance = 80,
	targetDistance = 1
}

monster.loot = {
{
	id = "gold coin",
	chance = 11690,
	maxCount = 88
},
{
	id = 2230,
	chance = 8230
},
{
	id = "plate armor",
	chance = 2810
},
{
	id = 2229,
	chance = 2810
},
{
	id = 2231,
	chance = 1950
},
{
	id = "bone club",
	chance = 1520
},
{
	id = "bone shield",
	chance = 1520
},
{
	id = "health potion",
	chance = 870
},
{
	id = "green mushroom",
	chance = 650
},
{
	id = "hardened bone",
	chance = 650
}
}

monster.attacks = {
{
	name = "melee",
	interval = 2 * 1000,
	attack = 50,
	skill = 70,
	effect = CONST_ME_DRAWBLOOD
},
{
	name = "combat",
	interval = 4 * 1000,
	chance = 30,
	minDamage = -70,
	maxDamage = -90,
	range = 7,
	target = true,
	type = COMBAT_ICEDAMAGE,
	effect = CONST_ME_BLUEBUBBLE,
	shootEffect = CONST_ANI_SUDDENDEATH
},
{
	name = "combat",
	interval = 2 * 1000,
	chance = 20,
	minDamage = -10,
	maxDamage = -80,
	radius = 3,
	target = false,
	type = COMBAT_LIFEDRAIN,
	effect = CONST_ME_PURPLEENERGY
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
			minDamage = 35,
			maxDamage = 65,
			effect = CONST_ME_MAGIC_BLUE
		},
}

monster.elements = {
{
	type = COMBAT_HOLYDAMAGE,
	percent = -50
},
{
	type = COMBAT_FIREDAMAGE,
	percent = 55
},
{
	type = COMBAT_ICEDAMAGE,
	percent = 40
},
{
	type = COMBAT_PHYSICALDAMAGE,
	percent = 30
},
{
	type = COMBAT_ENERGYDAMAGE,
	percent = 15
}
}

monster.immunities = {
{
	type = "death",
	combat = true,
	condition = true
},
{
	type = "earth",
	combat = true,
	condition = true
},
{
	type = "paralyze",
	condition = true
}
}

mType:register(monster)
