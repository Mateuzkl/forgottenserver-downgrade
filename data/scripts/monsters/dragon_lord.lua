local mType = Game.createMonsterType("Dragon Lord")
local monster = {}
monster.description = "a dragon lord"
monster.experience = 2100
monster.outfit = {lookType = 39}

monster.health = 1900
monster.maxHealth = monster.health
monster.race = "blood"
monster.corpse = 5984
monster.speed = 200

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
	{text = "ZCHHHHH", yell = true},
	{text = "YOU WILL BURN!", yell = true},
}

monster.loot = {
{
	id = "gold coin",
	chance = 95258,
	maxCount = 246
},
{
	id = "dragon ham",
	chance = 79757
},
{
	id = "green mushroom",
	chance = 12120
},
{
	id = "royal spear",
	chance = 9139,
	maxCount = 3
},
{
	id = "book (gemmed)",
	chance = 9090
},
{
	id = "power bolt",
	chance = 6565,
	maxCount = 7
},
{
	id = "energy ring",
	chance = 5072
},
{
	id = "small sapphire",
	chance = 4968
},
{
	id = "golden mug",
	chance = 3072
},
{
	id = "red dragon scale",
	chance = 1963
},
{
	id = "red dragon leather",
	chance = 1022
},
{
	id = "strong health potion",
	chance = 971
},
{
	id = "life crystal",
	chance = 629
},
{
	id = "strange helmet",
	chance = 382
},
{
	id = "fire sword",
	chance = 286
},
{
	id = "tower shield",
	chance = 268
},
{
	id = "royal helmet",
	chance = 233
},
{
	id = "dragon scale mail",
	chance = 142
},
{
	id = "dragon slayer",
	chance = 109
},
{
	id = "dragon lord trophy",
	chance = 93
}
}

monster.attacks = {
{
	name = "melee",
	interval = 2 * 1000,
	attack = 230,
	skill = 70,
	effect = CONST_ME_DRAWBLOOD
},
{
	name = "combat",
	interval = 2 * 1000,
	chance = 20,
	minDamage = -100,
	maxDamage = -200,
	range = 7,
	radius = 4,
	target = true,
	type = COMBAT_FIREDAMAGE,
	shootEffect = CONST_ANI_FIRE,
	effect = CONST_ME_FIREAREA
},
{
	name = "firefield",
	interval = 2 * 1000,
	chance = 10,
	range = 7,
	radius = 4,
	target = true,
	shootEffect = CONST_ANI_FIRE
},
{
	name = "combat",
	interval = 2 * 1000,
	chance = 15,
	minDamage = -150,
	maxDamage = -230,
	length = 8,
	spread = 3,
	type = COMBAT_FIREDAMAGE,
	effect = CONST_ME_FIREAREA
}
}

monster.defenses = {
	defense = 35,
	armor = 35,
	{
			name = "combat",
			interval = 2 * 1000,
			chance = 15,
			type = COMBAT_HEALING,
			minDamage = 57,
			maxDamage = 93,
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
