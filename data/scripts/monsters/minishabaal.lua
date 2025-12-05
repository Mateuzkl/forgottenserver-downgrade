local mType = Game.createMonsterType("Minishabaal")
local monster = {}
monster.description = "Minishabaal"
monster.experience = 4000
monster.outfit = {lookType = 237}

monster.health = 6000
monster.maxHealth = monster.health
monster.race = "blood"
monster.corpse = 6364
monster.speed = 700
monster.maxSummons = 3

monster.changeTarget = {interval = 5 * 1000, chance = 8}

monster.flags = {
	attackable = true,
	hostile = true,
	pushable = false,
	canpushitems = true,
	canpushcreatures = true,
	targetDistance = 4,
	staticAttackChance = 90,
	isboss = true
}

monster.summons = {
{
	name = "Diabolic Imp",
	chance = 40,
	interval = 2 * 1000
}
}

monster.voices = {
	interval = 5000,
	chance = 10,
	{text = "I had Princess Lumelia as breakfast!", yell = false},
	{text = "Naaa-Nana-Naaa-Naaa!", yell = false},
	{text = "My brother will come and get you for this!", yell = false},
	{text = "Get them Fluffy!", yell = false},
	{text = "He He He!", yell = false},
	{text = "Pftt, Ferumbras such an upstart!", yell = false},
	{text = "My dragon is not that old, it's just second hand!", yell = false},
	{text = "My other dragon is a red one!", yell = false},
	{text = "When I am big I want to become the ruthless eighth!", yell = false},
	{text = "WHERE'S FLUFFY?", yell = false},
	{text = "Muahaha!", yell = false},
}

monster.loot = {
{
	id = "demonbone amulet",
	chance = 909
},
{
	id = "gold coin",
	chance = 100000,
	maxCount = 40
},
{
	id = "small amethyst",
	chance = 1428,
	maxCount = 2
},
{
	id = "fire axe",
	chance = 666
},
{
	id = "golden legs",
	chance = 180
},
{
	id = "crown legs",
	chance = 800
},
{
	id = "guardian shield",
	chance = 1333
},
{
	id = "demon shield",
	chance = 200
},
{
	id = "tempest shield",
	chance = 100
},
{
	id = "demon helmet",
	chance = 100
},
{
	id = "pitchfork",
	chance = 2857
},
{
	id = "soul orb",
	chance = 909,
	maxCount = 2
},
{
	id = "demonic essence",
	chance = 1000,
	maxCount = 2
}
}

monster.attacks = {
{
	name = "melee",
	interval = 2 * 1000,
	attack = 380,
	skill = 70,
	effect = CONST_ME_DRAWBLOOD
},
{
	name = "combat",
	interval = 2 * 1000,
	chance = 10,
	minDamage = -80,
	maxDamage = -350,
	range = 7,
	radius = 4,
	target = true,
	type = COMBAT_FIREDAMAGE,
	shootEffect = CONST_ANI_FIRE,
	effect = CONST_ME_FIREAREA
},
{
	name = "combat",
	interval = 3 * 1000,
	chance = 34,
	minDamage = -120,
	maxDamage = -500,
	range = 7,
	radius = 2,
	target = true,
	type = COMBAT_FIREDAMAGE,
	shootEffect = CONST_ANI_FIRE,
	effect = CONST_ME_FIREAREA
}
}

monster.defenses = {
	defense = 29,
	armor = 29,
	{
			name = "combat",
			interval = 1 * 1000,
			chance = 50,
			type = COMBAT_HEALING,
			minDamage = 155,
			maxDamage = 255,
			effect = CONST_ME_MAGIC_BLUE
		},
	{
			name = "speed",
			interval = 1 * 1000,
			chance = 12,
			speed = 800,
			duration = 4 * 1000,
			effect = CONST_ME_MAGIC_RED
		},
	{
			name = "invisible",
			interval = 4 * 1000,
			chance = 50,
			effect = CONST_ME_MAGIC_RED
		},
}

monster.elements = {
{
	type = COMBAT_EARTHDAMAGE,
	percent = 50
},
{
	type = COMBAT_ICEDAMAGE,
	percent = -10
},
{
	type = COMBAT_HOLYDAMAGE,
	percent = -5
},
{
	type = COMBAT_DEATHDAMAGE,
	percent = 10
}
}

monster.immunities = {
{
	type = "fire",
	combat = true,
	condition = true
},
{
	type = "lifedrain",
	combat = true
},
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
