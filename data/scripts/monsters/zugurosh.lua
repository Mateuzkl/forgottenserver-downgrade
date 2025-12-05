local mType = Game.createMonsterType("Zugurosh")
local monster = {}
monster.description = "Zugurosh"
monster.experience = 10000
monster.outfit = {lookType = 12}

monster.health = 90500
monster.maxHealth = monster.health
monster.race = "fire"
monster.corpse = 8721
monster.speed = 340

monster.changeTarget = {interval = 5 * 1000, chance = 15}

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
	staticAttackChance = 85,
	isboss = true
}

monster.voices = {
	interval = 5000,
	chance = 10,
	{text = "You will run out of resources soon enough!!", yell = true},
	{text = "One little mistake and your all are mine!", yell = false},
	{text = "I sense your strength fading!", yell = false},
}

monster.loot = {
{
	id = "gold coin",
	chance = 100000,
	maxCount = 100
},
{
	id = "gold coin",
	chance = 100000,
	maxCount = 50
},
{
	id = "small emerald",
	chance = 1428,
	maxCount = 3
},
{
	id = "talon",
	chance = 6000,
	maxCount = 11
},
{
	id = "blue gem",
	chance = 4444
},
{
	id = "platinum amulet",
	chance = 2333
},
{
	id = "boots of haste",
	chance = 4444
},
{
	id = "giant sword",
	chance = 3000
},
{
	id = "silver dagger",
	chance = 10000
},
{
	id = "fire axe",
	chance = 5555
},
{
	id = "devil helmet",
	chance = 9700
},
{
	id = "golden legs",
	chance = 6500
},
{
	id = "knight legs",
	chance = 6666
},
{
	id = "demon shield",
	chance = 9999
},
{
	id = 6300,
	chance = 7777
}
}

monster.attacks = {
{
	name = "melee",
	interval = 2 * 1000,
	attack = 715,
	skill = 70,
	effect = CONST_ME_DRAWBLOOD
},
{
	name = "combat",
	interval = 3 * 1000,
	chance = 20,
	minDamage = -250,
	maxDamage = -850,
	radius = 4,
	target = true,
	type = COMBAT_FIREDAMAGE,
	effect = CONST_ME_EXPLOSION
},
{
	name = "combat",
	interval = 2 * 1000,
	chance = 15,
	minDamage = -100,
	maxDamage = -350,
	radius = 4,
	target = false,
	type = COMBAT_DEATHDAMAGE,
	effect = CONST_ME_SMALLCLOUDS
},
{
	name = "combat",
	interval = 1 * 1000,
	chance = 13,
	minDamage = -60,
	maxDamage = -230,
	radius = 5,
	target = false,
	type = COMBAT_MANADRAIN,
	effect = CONST_ME_WATERSPLASH
},
{
	name = "combat",
	interval = 2 * 1000,
	chance = 15,
	minDamage = 0,
	maxDamage = -500,
	length = 7,
	spread = 0,
	type = COMBAT_DEATHDAMAGE,
	effect = CONST_ME_MORTAREA
}
}

monster.defenses = {
	defense = 55,
	armor = 45,
	{
			name = "combat",
			interval = 2 * 1000,
			chance = 15,
			type = COMBAT_HEALING,
			minDamage = 400,
			maxDamage = 900,
			effect = CONST_ME_MAGIC_GREEN
		},
	{
			name = "invisible",
			interval = 1 * 1000,
			chance = 5,
			effect = CONST_ME_MAGIC_BLUE
		},
}

monster.elements = {
{
	type = COMBAT_ICEDAMAGE,
	percent = -15
},
{
	type = COMBAT_ENERGYDAMAGE,
	percent = -5
},
{
	type = COMBAT_EARTHDAMAGE,
	percent = -8
},
{
	type = COMBAT_FIREDAMAGE,
	percent = 25
}
}

monster.immunities = {
{
	type = "death",
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
}
}

mType:register(monster)
