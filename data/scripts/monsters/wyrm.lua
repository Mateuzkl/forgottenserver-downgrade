local mType = Game.createMonsterType("Wyrm")
local monster = {}
monster.description = "a wyrm"
monster.experience = 1550
monster.outfit = {lookType = 291}

monster.health = 1825
monster.maxHealth = monster.health
monster.race = "blood"
monster.corpse = 8941
monster.speed = 280

monster.changeTarget = {interval = 4 * 1000, chance = 10}

monster.flags = {
	summonable = false,
	attackable = true,
	hostile = true,
	illusionable = true,
	convinceable = false,
	pushable = false,
	canpushitems = true,
	staticAttackChance = 90,
	targetDistance = 1
}

monster.voices = {
	interval = 5000,
	chance = 10,
	{text = "GRRR", yell = false},
	{text = "GRROARR", yell = false},
}

monster.loot = {
{
	id = "gold coin",
	chance = 96901,
	maxCount = 232
},
{
	id = "dragon ham",
	chance = 34875
},
{
	id = "strong health potion",
	chance = 20224
},
{
	id = "strong mana potion",
	chance = 15215
},
{
	id = "wyrm scale",
	chance = 14967
},
{
	id = "burst arrow",
	chance = 7941,
	maxCount = 10
},
{
	id = "crossbow",
	chance = 6047
},
{
	id = "focus cape",
	chance = 1230
},
{
	id = "wand of draconia",
	chance = 1009
},
{
	id = "small diamond",
	chance = 912,
	maxCount = 3
},
{
	id = "lightning pendant",
	chance = 754
},
{
	id = "wand of starstorm",
	chance = 464
},
{
	id = "hibiscus dress",
	chance = 310
},
{
	id = "composite hornbow",
	chance = 106
},
{
	id = "dragonbone staff",
	chance = 96
},
{
	id = "shockwave amulet",
	chance = 85
}
}

monster.attacks = {
{
	name = "melee",
	interval = 2 * 1000,
	attack = 235,
	skill = 70,
	effect = CONST_ME_DRAWBLOOD
},
{
	name = "combat",
	interval = 2 * 1000,
	chance = 15,
	minDamage = -100,
	maxDamage = -220,
	radius = 3,
	type = COMBAT_ENERGYDAMAGE,
	effect = CONST_ME_YELLOWENERGY
},
{
	name = "combat",
	interval = 2 * 1000,
	chance = 10,
	minDamage = -130,
	maxDamage = -200,
	length = 5,
	spread = 2,
	type = COMBAT_ENERGYDAMAGE,
	effect = CONST_ME_PURPLEENERGY
},
{
	name = "combat",
	interval = 2 * 1000,
	chance = 20,
	minDamage = -100,
	maxDamage = -125,
	range = 7,
	type = COMBAT_ENERGYDAMAGE,
	shootEffect = CONST_ANI_ENERGY,
	effect = CONST_ANI_ENERGY
},
{
	name = "combat",
	interval = 2 * 1000,
	chance = 10,
	minDamage = -98,
	maxDamage = -145,
	length = 4,
	spread = 0,
	type = COMBAT_LIFEDRAIN,
	effect = CONST_ME_POFF
}
}

monster.defenses = {
	defense = 34,
	armor = 34,
	{
			name = "combat",
			interval = 2 * 1000,
			chance = 15,
			type = COMBAT_HEALING,
			minDamage = 100,
			maxDamage = 150,
			effect = CONST_ME_MAGIC_BLUE
		},
	{
			name = "effect",
			interval = 2 * 1000,
			chance = 10,
			effect = CONST_ME_YELLOWNOTE
		},
}

monster.elements = {
{
	type = COMBAT_FIREDAMAGE,
	percent = 20
},
{
	type = COMBAT_EARTHDAMAGE,
	percent = 75
},
{
	type = COMBAT_DEATHDAMAGE,
	percent = -5
},
{
	type = COMBAT_ICEDAMAGE,
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
	type = "paralyze",
	condition = true
},
{
	type = "invisible",
	condition = true
},
{
	type = "lifedrain",
	combat = true
}
}

mType:register(monster)
