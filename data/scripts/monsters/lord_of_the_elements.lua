local mType = Game.createMonsterType("Lord of the Elements")
local monster = {}
monster.description = "Lord of the Elements"
monster.experience = 8000
monster.outfit = {lookType = 290}

monster.health = 8000
monster.maxHealth = monster.health
monster.race = "undead"
monster.corpse = 9009
monster.speed = 370
monster.maxSummons = 2

monster.changeTarget = {interval = 5 * 1000, chance = 10}

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
	staticAttackChance = 90,
	canwalkonfire = false,
	isboss = true
}

monster.summons = {
{
	name = "Blistering Fire Elemental",
	chance = 50,
	interval = 4 * 1000
},
{
	name = "Jagged Earth Elemental",
	chance = 50,
	interval = 4 * 1000
},
{
	name = "Roaring Water Elemental",
	chance = 50,
	interval = 4 * 1000
},
{
	name = "Overcharged Energy Elemental",
	chance = 50,
	interval = 4 * 1000
}
}

monster.voices = {
	interval = 5000,
	chance = 30,
	{text = "WHO DARES CALLING ME?", yell = true},
	{text = "I'LL FREEZE YOU THEN I CRUSH YOU!", yell = true},
}

monster.loot = {
{
	id = "small sapphire",
	chance = 7142,
	maxCount = 4
},
{
	id = "small ruby",
	chance = 11111,
	maxCount = 4
},
{
	id = "small emerald",
	chance = 11111,
	maxCount = 4
},
{
	id = "small amethyst",
	chance = 11111,
	maxCount = 3
},
{
	id = "platinum coin",
	chance = 50000,
	maxCount = 9
},
{
	id = "earthborn titan armor",
	chance = 2063
},
{
	id = "gold ingot",
	chance = 25000
}
}

monster.attacks = {
{
	name = "melee",
	interval = 2 * 1000,
	attack = 690,
	skill = 70,
	effect = CONST_ME_DRAWBLOOD
}
}

monster.defenses = {
	defense = 30,
	armor = 30,
	{
			name = "combat",
			interval = 1 * 1000,
			chance = 25,
			type = COMBAT_HEALING,
			minDamage = 100,
			maxDamage = 195,
			effect = CONST_ME_MAGIC_BLUE
		},
	{
			name = "outfit",
			interval = 1 * 1000,
			chance = 40,
			effect = CONST_ME_MAGIC_BLUE
		},
	{
			name = "outfit",
			interval = 1 * 1000,
			chance = 40,
			effect = CONST_ME_MAGIC_BLUE
		},
	{
			name = "outfit",
			interval = 1 * 1000,
			chance = 40,
			effect = CONST_ME_MAGIC_BLUE
		},
	{
			name = "outfit",
			interval = 1 * 1000,
			chance = 40,
			effect = CONST_ME_MAGIC_BLUE
		},
}

monster.elements = {
{
	type = COMBAT_PHYSICALDAMAGE,
	percent = 1
},
{
	type = COMBAT_FIREDAMAGE,
	percent = 30
},
{
	type = COMBAT_ENERGYDAMAGE,
	percent = 30
},
{
	type = COMBAT_ICEDAMAGE,
	percent = 30
},
{
	type = COMBAT_EARTHDAMAGE,
	percent = 45
}
}

monster.immunities = {
{
	type = "holy",
	combat = true,
	condition = true
},
{
	type = "death",
	combat = true,
	condition = true
},
{
	type = "drown",
	condition = true
},
{
	type = "invisible",
	condition = true
}
}

mType:register(monster)
