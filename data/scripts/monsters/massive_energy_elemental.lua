local mType = Game.createMonsterType("Massive Energy Elemental")
local monster = {}
monster.description = "a massive energy elemental"
monster.experience = 950
monster.outfit = {lookType = 290}

monster.health = 1100
monster.maxHealth = monster.health
monster.race = "energy"
monster.corpse = 8966
monster.speed = 210

monster.changeTarget = {interval = 4 * 1000, chance = 15}

monster.flags = {
	summonable = false,
	attackable = true,
	hostile = true,
	illusionable = false,
	convinceable = false,
	pushable = false,
	canpushitems = true,
	staticAttackChance = 85,
	targetDistance = 1,
	canwalkonpoison = false
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
	maxCount = 91
},
{
	id = "small amethyst",
	chance = 3270,
	maxCount = 3
},
{
	id = "strong mana potion",
	chance = 17450
},
{
	id = "great mana potion",
	chance = 5450
},
{
	id = "flash arrow",
	chance = 6550,
	maxCount = 15
},
{
	id = "energy spike sword",
	chance = 500
},
{
	id = "lightning pendant",
	chance = 730
},
{
	id = "lightning legs",
	chance = 150
},
{
	id = "spellbook of warding",
	chance = 360
},
{
	id = "wand of starstorm",
	chance = 730
},
{
	id = 9809,
	chance = 730
},
{
	id = "shockwave amulet",
	chance = 500
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
	minDamage = -270,
	maxDamage = -615,
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
	minDamage = -175,
	maxDamage = -205,
	range = 7,
	target = true,
	type = COMBAT_ENERGYDAMAGE,
	shootEffect = CONST_ANI_ENERGYBALL,
	effect = CONST_ANI_ENERGY
}
}

monster.defenses = {
	defense = 20,
	armor = 20,
	{
			name = "combat",
			interval = 2 * 1000,
			chance = 5,
			type = COMBAT_HEALING,
			minDamage = 190,
			maxDamage = 250,
			effect = CONST_ME_MAGIC_BLUE
		},
}

monster.elements = {
{
	type = COMBAT_PHYSICALDAMAGE,
	percent = 70
},
{
	type = COMBAT_HOLYDAMAGE,
	percent = 25
},
{
	type = COMBAT_DEATHDAMAGE,
	percent = 1
},
{
	type = COMBAT_EARTHDAMAGE,
	percent = -5
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
},
{
	type = "fire",
	combat = true,
	condition = true
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
