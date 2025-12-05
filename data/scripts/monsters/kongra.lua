local mType = Game.createMonsterType("Kongra")
local monster = {}
monster.description = "a kongra"
monster.experience = 115
monster.outfit = {lookType = 116}

monster.health = 340
monster.maxHealth = monster.health
monster.race = "blood"
monster.corpse = 6043
monster.speed = 184

monster.flags = {
	summonable = false,
	attackable = true,
	hostile = true,
	illusionable = true,
	convinceable = false,
	pushable = false,
	canpushitems = true,
	canpushcreatures = false,
	targetDistance = 1,
	staticAttackChance = 90,
	canwalkonenergy = false,
	canwalkonfire = false,
	canwalkonpoison = false
}

monster.voices = {
	interval = 5000,
	chance = 10,
	{text = "Hugah!", yell = false},
	{text = "Ungh! Ungh!", yell = false},
	{text = "Huaauaauaauaa!", yell = false},
}

monster.loot = {
{
	id = "gold coin",
	chance = 88003,
	maxCount = 40
},
{
	id = "banana",
	chance = 30813,
	maxCount = 12
},
{
	id = "kongra's shoulderpad",
	chance = 9356
},
{
	id = "protection amulet",
	chance = 1012
},
{
	id = "plate armor",
	chance = 1007
},
{
	id = "ape fur",
	chance = 968
},
{
	id = "health potion",
	chance = 507
},
{
	id = "power ring",
	chance = 310
},
{
	id = "club ring",
	chance = 196
}
}

monster.attacks = {
{
	name = "melee",
	interval = 2 * 1000,
	attack = 60,
	skill = 70,
	effect = CONST_ME_DRAWBLOOD
}
}

monster.defenses = {
	defense = 18,
	armor = 18,
	{
			name = "speed",
			interval = 2 * 1000,
			chance = 15,
			speed = 260,
			duration = 3 * 1000,
			effect = CONST_ME_MAGIC_RED
		},
}

monster.elements = {
{
	type = COMBAT_ENERGYDAMAGE,
	percent = 5
},
{
	type = COMBAT_EARTHDAMAGE,
	percent = 10
},
{
	type = COMBAT_FIREDAMAGE,
	percent = 20
},
{
	type = COMBAT_ICEDAMAGE,
	percent = -15
},
{
	type = COMBAT_DEATHDAMAGE,
	percent = -5
}
}

mType:register(monster)
