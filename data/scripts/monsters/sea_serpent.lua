local mType = Game.createMonsterType("Sea Serpent")
local monster = {}
monster.description = "a sea serpent"
monster.experience = 2300
monster.outfit = {lookType = 275}

monster.health = 1950
monster.maxHealth = monster.health
monster.race = "blood"
monster.corpse = 8307
monster.speed = 350

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
	staticAttackChance = 70,
	targetDistance = 1
}

monster.voices = {
	interval = 5000,
	chance = 10,
	{text = "CHHHRRRR", yell = false},
	{text = "HISSSS", yell = false},
}

monster.loot = {
{
	id = "small sapphire",
	chance = 5600,
	maxCount = 3
},
{
	id = "gold coin",
	chance = 38000,
	maxCount = 100
},
{
	id = "gold coin",
	chance = 30000,
	maxCount = 100
},
{
	id = "gold coin",
	chance = 30000,
	maxCount = 36
},
{
	id = "platinum coin",
	chance = 25000,
	maxCount = 3
},
{
	id = "stealth ring",
	chance = 400
},
{
	id = "ring of healing",
	chance = 1100
},
{
	id = "serpent sword",
	chance = 4200
},
{
	id = "plate legs",
	chance = 7150
},
{
	id = "dragon ham",
	chance = 60000,
	maxCount = 2
},
{
	id = "strong health potion",
	chance = 5500
},
{
	id = "strong mana potion",
	chance = 3850
},
{
	id = "great mana potion",
	chance = 920
},
{
	id = "glacier amulet",
	chance = 880
},
{
	id = "glacier kilt",
	chance = 430
},
{
	id = "spirit cloak",
	chance = 2900
},
{
	id = "focus cape",
	chance = 370
},
{
	id = "crystalline armor",
	chance = 90
},
{
	id = "oceanborn leviathan armor",
	chance = 110
},
{
	id = "northwind rod",
	chance = 930
},
{
	id = "sea serpent scale",
	chance = 10200
}
}

monster.attacks = {
{
	name = "melee",
	interval = 2 * 1000,
	attack = 250,
	skill = 70,
	effect = CONST_ME_DRAWBLOOD
},
{
	name = "combat",
	interval = 2 * 1000,
	chance = 15,
	minDamage = -60,
	maxDamage = -300,
	length = 7,
	spread = 2,
	type = COMBAT_EARTHDAMAGE,
	effect = CONST_ME_SMALLPLANTS
},
{
	name = "combat",
	interval = 2 * 1000,
	chance = 15,
	minDamage = -101,
	maxDamage = -300,
	length = 7,
	spread = 2,
	type = COMBAT_ICEDAMAGE,
	effect = CONST_ME_ICEATTACK
}
}

monster.defenses = {
	defense = 45,
	armor = 45,
	{
			name = "combat",
			interval = 2 * 1000,
			chance = 30,
			type = COMBAT_HEALING,
			minDamage = 70,
			maxDamage = 273,
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
	type = COMBAT_FIREDAMAGE,
	percent = 30
},
{
	type = COMBAT_ENERGYDAMAGE,
	percent = -5
},
{
	type = COMBAT_PHYSICALDAMAGE,
	percent = -15
},
{
	type = COMBAT_DEATHDAMAGE,
	percent = 10
}
}

monster.immunities = {
{
	type = "ice",
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
	type = "drown",
	condition = true
}
}

mType:register(monster)
