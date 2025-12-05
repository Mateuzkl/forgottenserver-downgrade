local mType = Game.createMonsterType("Werewolf")
local monster = {}
monster.description = "a werewolf"
monster.experience = 1900
monster.outfit = {lookType = 308}

monster.health = 1955
monster.maxHealth = monster.health
monster.race = "blood"
monster.corpse = 20380
monster.speed = 280
monster.maxSummons = 2

monster.changeTarget = {interval = 4 * 1000, chance = 10}

monster.flags = {
	summonable = false,
	attackable = true,
	hostile = true,
	illusionable = false,
	convinceable = false,
	pushable = false,
	canpushitems = true,
	canpushcreatures = false,
	targetDistance = 1,
	staticAttackChance = 80,
	canwalkonfire = false
}

monster.summons = {
{
	name = "war wolf",
	chance = 40,
	interval = 2 * 1000
}
}

monster.voices = {
	interval = 5000,
	chance = 10,
	{text = "BLOOD!", yell = true},
	{text = "HRAAAAAAAAAARRRRRR!", yell = true},
}

monster.loot = {
{
	id = "gold coin",
	chance = 98760,
	maxCount = 301
},
{
	id = "werewolf fur",
	chance = 9757
},
{
	id = "plate shield",
	chance = 9645,
	maxCount = 2
},
{
	id = "plate armor",
	chance = 7958
},
{
	id = "brown mushroom",
	chance = 6903
},
{
	id = "wolf paw",
	chance = 5211
},
{
	id = "strong health potion",
	chance = 5171,
	maxCount = 2
},
{
	id = "troll green",
	chance = 4987
},
{
	id = "halberd",
	chance = 3072
},
{
	id = "ultimate health potion",
	chance = 2016
},
{
	id = "berserk potion",
	chance = 938
},
{
	id = "stone skin amulet",
	chance = 882
},
{
	id = "platinum amulet",
	chance = 799
},
{
	id = "time ring",
	chance = 581
},
{
	id = "epee",
	chance = 475
},
{
	id = "relic sword",
	chance = 363
},
{
	id = "bonebreaker",
	chance = 268
},
{
	id = "dreaded cleaver",
	chance = 106
}
}

monster.attacks = {
{
	name = "melee",
	interval = 2 * 1000,
	attack = 350,
	skill = 70,
	effect = CONST_ME_DRAWBLOOD
},
{
	name = "outfit",
	interval = 2 * 1000,
	chance = 1,
	radius = 1,
	target = true,
	duration = 2 * 1000,
	effect = CONST_ME_BLUENOTE
},
{
	name = "combat",
	interval = 2 * 1000,
	chance = 10,
	minDamage = -80,
	maxDamage = -200,
	target = false,
	length = 4,
	spread = 2,
	type = COMBAT_LIFEDRAIN,
	effect = CONST_ME_REDNOTE
},
{
	name = "combat",
	interval = 2 * 1000,
	chance = 40,
	radius = 3,
	target = false,
	type = COMBAT_PHYSICALDAMAGE,
	effect = CONST_ME_WHITENOTE
},
{
	name = "combat",
	interval = 2 * 1000,
	chance = 10,
	radius = 1,
	target = false,
	type = COMBAT_PHYSICALDAMAGE,
	effect = CONST_ME_GREENNOTE
}
}

monster.defenses = {
	defense = 36,
	armor = 36,
	{
			name = "combat",
			interval = 2 * 1000,
			chance = 15,
			type = COMBAT_HEALING,
			minDamage = 120,
			maxDamage = 225,
			effect = CONST_ME_MAGIC_GREEN
		},
	{
			name = "speed",
			interval = 2 * 1000,
			chance = 15,
			speed = 400,
			duration = 5 * 1000,
			effect = CONST_ME_PURPLENOTE
		},
}

monster.elements = {
{
	type = COMBAT_ENERGYDAMAGE,
	percent = 15
},
{
	type = COMBAT_EARTHDAMAGE,
	percent = 75
},
{
	type = COMBAT_FIREDAMAGE,
	percent = -5
},
{
	type = COMBAT_ICEDAMAGE,
	percent = -5
},
{
	type = COMBAT_HOLYDAMAGE,
	percent = -5
},
{
	type = COMBAT_DEATHDAMAGE,
	percent = 55
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
}
}

mType:register(monster)
