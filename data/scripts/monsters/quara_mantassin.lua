local mType = Game.createMonsterType("Quara Mantassin")
local monster = {}
monster.description = "a quara mantassin"
monster.experience = 400
monster.outfit = {lookType = 72}

monster.health = 800
monster.maxHealth = monster.health
monster.race = "blood"
monster.corpse = 6064
monster.speed = 590

monster.changeTarget = {interval = 4 * 1000, chance = 10}

monster.flags = {
	summonable = false,
	attackable = true,
	hostile = true,
	illusionable = false,
	convinceable = true,
	pushable = false,
	canpushitems = true,
	canpushcreatures = false,
	staticAttackChance = 80,
	targetDistance = 1,
	canwalkonenergy = false,
	canwalkonpoison = false
}

monster.voices = {
	interval = 5000,
	chance = 10,
	{text = "Zuerk Pachak!", yell = false},
	{text = "Shrrrr", yell = false},
}

monster.loot = {
{
	id = "gold coin",
	chance = 79873,
	maxCount = 130
},
{
	id = "mantassin tail",
	chance = 12746
},
{
	id = "shrimp",
	chance = 5121
},
{
	id = "halberd",
	chance = 4984
},
{
	id = "stealth ring",
	chance = 1100
},
{
	id = "small sapphire",
	chance = 1092
},
{
	id = "cape",
	chance = 1055
},
{
	id = "two handed sword",
	chance = 1017
},
{
	id = "fish fin",
	chance = 622
},
{
	id = "strange helmet",
	chance = 91
},
{
	id = "blue robe",
	chance = 83
}
}

monster.attacks = {
{
	name = "melee",
	interval = 2 * 1000,
	attack = 140,
	skill = 70,
	effect = CONST_ME_DRAWBLOOD
}
}

monster.defenses = {
	defense = 16,
	armor = 16,
	{
			name = "invisible",
			interval = 2 * 1000,
			chance = 20,
			effect = CONST_ME_MAGIC_BLUE
		},
	{
			name = "speed",
			interval = 2 * 1000,
			chance = 15,
			speed = 400,
			duration = 5 * 1000,
			effect = CONST_ME_MAGIC_RED
		},
}

monster.elements = {
{
	type = COMBAT_EARTHDAMAGE,
	percent = -10
},
{
	type = COMBAT_ENERGYDAMAGE,
	percent = -25
}
}

monster.immunities = {
{
	type = "lifedrain",
	combat = true
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
}
}

mType:register(monster)
