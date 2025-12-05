local mType = Game.createMonsterType("Grim Reaper")
local monster = {}
monster.description = "a grim reaper"
monster.experience = 5500
monster.outfit = {lookType = 300}

monster.health = 3900
monster.maxHealth = monster.health
monster.race = "undead"
monster.corpse = 8955
monster.speed = 320

monster.changeTarget = {interval = 5 * 1000, chance = 20}

monster.flags = {
	summonable = false,
	attackable = true,
	hostile = true,
	illusionable = false,
	convinceable = false,
	pushable = false,
	canpushitems = true,
	canpushcreatures = true,
	targetDistance = 1,
	staticAttackChance = 80,
	canwalkonenergy = false,
	canwalkonfire = false
}

monster.voices = {
	interval = 5000,
	chance = 10,
	{text = "Death!", yell = false},
	{text = "Come a little closer!", yell = false},
	{text = "The end is near!", yell = false},
}

monster.loot = {
{
	id = "gold coin",
	chance = 99228,
	maxCount = 272
},
{
	id = "flask of demonic blood",
	chance = 36153
},
{
	id = "demonic essence",
	chance = 11837
},
{
	id = "ultimate health potion",
	chance = 10839
},
{
	id = "great mana potion",
	chance = 10035
},
{
	id = "scythe",
	chance = 9778
},
{
	id = "mystical hourglass",
	chance = 5436
},
{
	id = "platinum coin",
	chance = 5146,
	maxCount = 4
},
{
	id = "magic light wand",
	chance = 4921
},
{
	id = "dark shield",
	chance = 2830
},
{
	id = "plate armor",
	chance = 2509
},
{
	id = "orichalcum pearl",
	chance = 1287,
	maxCount = 4
},
{
	id = "underworld rod",
	chance = 1190
},
{
	id = "nightmare blade",
	chance = 868
},
{
	id = "glacier kilt",
	chance = 289
},
{
	id = "skullcracker armor",
	chance = 257
},
{
	id = "stealth ring",
	chance = 225
}
}

monster.attacks = {
{
	name = "melee",
	interval = 2 * 1000,
	attack = 320,
	skill = 70,
	effect = CONST_ME_DRAWBLOOD
},
{
	name = "combat",
	interval = 2 * 1000,
	chance = 20,
	minDamage = 0,
	maxDamage = -165,
	range = 7,
	type = COMBAT_PHYSICALDAMAGE,
	shootEffect = CONST_ANI_SUDDENDEATH,
	effect = CONST_ME_MORTAREA
},
{
	name = "combat",
	interval = 2 * 1000,
	chance = 10,
	minDamage = -350,
	maxDamage = -720,
	length = 8,
	spread = 0,
	type = COMBAT_DEATHDAMAGE,
	effect = CONST_ME_REDSPARK
},
{
	name = "combat",
	interval = 2 * 1000,
	chance = 15,
	minDamage = 0,
	maxDamage = -300,
	length = 7,
	spread = 3,
	type = COMBAT_PHYSICALDAMAGE,
	effect = CONST_ME_EXPLOSIONAREA
},
{
	name = "combat",
	interval = 2 * 1000,
	chance = 10,
	minDamage = -225,
	maxDamage = -275,
	radius = 4,
	target = false,
	type = COMBAT_DEATHDAMAGE,
	effect = CONST_ME_REDSPARK
}
}

monster.defenses = {
	defense = 30,
	armor = 30,
	{
			name = "combat",
			interval = 2 * 1000,
			chance = 15,
			type = COMBAT_HEALING,
			minDamage = 130,
			maxDamage = 205,
			effect = CONST_ME_REDSPARK
		},
	{
			name = "speed",
			interval = 2 * 1000,
			chance = 15,
			speed = 450,
			duration = 5 * 1000,
			effect = CONST_ME_MAGIC_RED
		},
}

monster.elements = {
{
	type = COMBAT_ENERGYDAMAGE,
	percent = -10
},
{
	type = COMBAT_EARTHDAMAGE,
	percent = 40
},
{
	type = COMBAT_ICEDAMAGE,
	percent = 65
},
{
	type = COMBAT_HOLYDAMAGE,
	percent = -10
},
{
	type = COMBAT_PHYSICALDAMAGE,
	percent = 20
},
{
	type = COMBAT_DEATHDAMAGE,
	percent = 80
},
{
	type = COMBAT_FIREDAMAGE,
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
}
}

mType:register(monster)
