local mType = Game.createMonsterType("Dragon")
local monster = {}
monster.description = "a dragon"
monster.experience = 700
monster.outfit = {lookType = 34}

monster.health = 1000
monster.maxHealth = monster.health
monster.race = "blood"
monster.corpse = 5973
monster.speed = 172

monster.changeTarget = {interval = 4 * 1000, chance = 10}

monster.flags = {
	summonable = false,
	attackable = true,
	hostile = true,
	illusionable = true,
	convinceable = false,
	pushable = false,
	canpushitems = true,
	canpushcreatures = true,
	targetDistance = 1,
	staticAttackChance = 80
}

monster.voices = {
	interval = 5000,
	chance = 10,
	{text = "GROOAAARRR", yell = true},
	{text = "FCHHHHH", yell = true},
}

monster.loot = {
{
	id = "gold coin",
	chance = 90082,
	maxCount = 105
},
{
	id = "dragon ham",
	chance = 65143
},
{
	id = "steel shield",
	chance = 14893
},
{
	id = "crossbow",
	chance = 10085
},
{
	id = "dragon's tail",
	chance = 9883
},
{
	id = "burst arrow",
	chance = 7976,
	maxCount = 10
},
{
	id = "longsword",
	chance = 4027
},
{
	id = "steel helmet",
	chance = 3005
},
{
	id = "broadsword",
	chance = 1995
},
{
	id = "plate legs",
	chance = 1909
},
{
	id = "strong health potion",
	chance = 1055
},
{
	id = "wand of inferno",
	chance = 1053
},
{
	id = "green dragon scale",
	chance = 1038
},
{
	id = "green dragon leather",
	chance = 1018
},
{
	id = "double axe",
	chance = 1008
},
{
	id = "dragon hammer",
	chance = 517
},
{
	id = "serpent sword",
	chance = 504
},
{
	id = "small diamond",
	chance = 384
},
{
	id = "dragon shield",
	chance = 301
},
{
	id = "life crystal",
	chance = 113
},
{
	id = "dragonbone staff",
	chance = 102
}
}

monster.attacks = {
{
	name = "melee",
	interval = 2 * 1000,
	attack = 120,
	skill = 70,
	effect = CONST_ME_DRAWBLOOD
},
{
	name = "combat",
	interval = 2 * 1000,
	chance = 15,
	minDamage = -60,
	maxDamage = -140,
	range = 7,
	radius = 4,
	target = true,
	type = COMBAT_FIREDAMAGE,
	shootEffect = CONST_ANI_FIRE,
	effect = CONST_ME_FIREAREA
},
{
	name = "combat",
	interval = 2 * 1000,
	chance = 10,
	minDamage = -100,
	maxDamage = -170,
	length = 8,
	spread = 3,
	type = COMBAT_FIREDAMAGE,
	effect = CONST_ME_FIREAREA
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
			minDamage = 40,
			maxDamage = 70,
			effect = CONST_ME_MAGIC_BLUE
		},
}

monster.elements = {
{
	type = COMBAT_EARTHDAMAGE,
	percent = 80
},
{
	type = COMBAT_ENERGYDAMAGE,
	percent = 20
},
{
	type = COMBAT_ICEDAMAGE,
	percent = -10
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
	type = "fire",
	combat = true,
	condition = true
}
}

mType:register(monster)
