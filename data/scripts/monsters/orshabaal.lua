local mType = Game.createMonsterType("Orshabaal")
local monster = {}
monster.description = "Orshabaal"
monster.experience = 10000
monster.outfit = {lookType = 201}

monster.health = 22500
monster.maxHealth = monster.health
monster.race = "fire"
monster.corpse = 2916
monster.speed = 380
monster.maxSummons = 4

monster.changeTarget = {interval = 2 * 1000, chance = 10}

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
	isboss = true
}

monster.summons = {
{
	name = "demon",
	chance = 10,
	interval = 1 * 1000
}
}

monster.voices = {
	interval = 5000,
	chance = 10,
	{text = "PRAISED BE MY MASTERS, THE RUTHLESS SEVEN!", yell = false},
	{text = "YOU ARE DOOMED!", yell = false},
	{text = "ORSHABAAL IS BACK!", yell = false},
	{text = "Be prepared for the day my masters will come for you!", yell = false},
	{text = "SOULS FOR ORSHABAAL!", yell = false},
}

monster.loot = {
{
	id = "platinum coin",
	chance = 100000,
	maxCount = 72
},
{
	id = "demonic essence",
	chance = 94444
},
{
	id = "stealth ring",
	chance = 55556
},
{
	id = "demon horn",
	chance = 50000,
	maxCount = 2
},
{
	id = "great mana potion",
	chance = 33333
},
{
	id = "small sapphire",
	chance = 33333,
	maxCount = 8
},
{
	id = "white pearl",
	chance = 33333,
	maxCount = 15
},
{
	id = "black pearl",
	chance = 27778,
	maxCount = 15
},
{
	id = "devil helmet",
	chance = 27778
},
{
	id = "great health potion",
	chance = 27778,
	maxCount = 5
},
{
	id = "ring of healing",
	chance = 27778
},
{
	id = "ultimate health potion",
	chance = 27778
},
{
	id = "blue gem",
	chance = 22222
},
{
	id = "demon shield",
	chance = 22222
},
{
	id = "giant sword",
	chance = 22222
},
{
	id = "mind stone",
	chance = 22222
},
{
	id = "small diamond",
	chance = 22222,
	maxCount = 5
},
{
	id = "small emerald",
	chance = 22222,
	maxCount = 7
},
{
	id = "assassin star",
	chance = 16667,
	maxCount = 42
},
{
	id = "boots of haste",
	chance = 16667
},
{
	id = "crystal necklace",
	chance = 16667
},
{
	id = "protection amulet",
	chance = 16667
},
{
	id = "purple tome",
	chance = 16667
},
{
	id = "silver amulet",
	chance = 16667
},
{
	id = "small amethyst",
	chance = 16667,
	maxCount = 17
},
{
	id = "strange symbol",
	chance = 16667
},
{
	id = "talon",
	chance = 16667,
	maxCount = 3
},
{
	id = "two handed sword",
	chance = 16667
},
{
	id = "fire axe",
	chance = 11111
},
{
	id = "golden legs",
	chance = 11111
},
{
	id = "golden mug",
	chance = 11111
},
{
	id = "great spirit potion",
	chance = 11111
},
{
	id = "life crystal",
	chance = 11111
},
{
	id = "mastermind shield",
	chance = 11111
},
{
	id = "orb",
	chance = 11111
},
{
	id = "platinum amulet",
	chance = 11111
},
{
	id = "stone skin amulet",
	chance = 11111
},
{
	id = "ancient amulet",
	chance = 5556
},
{
	id = "dragon hammer",
	chance = 5556
},
{
	id = "gold ingot",
	chance = 5556
},
{
	id = "golden sickle",
	chance = 5556
},
{
	id = "green gem",
	chance = 5556
},
{
	id = "magic light wand",
	chance = 5556
},
{
	id = "magic plate armor",
	chance = 5556
},
{
	id = "might ring",
	chance = 5556
},
{
	id = "onyx arrow",
	chance = 5556,
	maxCount = 50
},
{
	id = "orshabaal's brain",
	chance = 5556
},
{
	id = "silver dagger",
	chance = 5556
},
{
	id = "teddy bear",
	chance = 5556
},
{
	id = "thunder hammer",
	chance = 5556
},
{
	id = "voodoo doll",
	chance = 5556
}
}

monster.attacks = {
{
	name = "melee",
	interval = 2 * 1000,
	attack = 1990,
	skill = 70,
	effect = CONST_ME_DRAWBLOOD
},
{
	name = "combat",
	interval = 1 * 1000,
	chance = 13,
	minDamage = -300,
	maxDamage = -600,
	range = 7,
	type = COMBAT_MANADRAIN
},
{
	name = "combat",
	interval = 1 * 1000,
	chance = 6,
	minDamage = -150,
	maxDamage = -350,
	radius = 5,
	target = false,
	type = COMBAT_MANADRAIN,
	effect = CONST_ME_POISON
},
{
	name = "effect",
	interval = 1 * 1000,
	chance = 6,
	radius = 5,
	target = false,
	effect = CONST_ME_BLACKSPARK
},
{
	name = "combat",
	interval = 1 * 1000,
	chance = 34,
	minDamage = -310,
	maxDamage = -600,
	range = 7,
	radius = 7,
	target = true,
	type = COMBAT_FIREDAMAGE,
	shootEffect = CONST_ANI_FIRE,
	effect = CONST_ME_FIREAREA
},
{
	name = "firefield",
	interval = 1 * 1000,
	chance = 10,
	range = 7,
	radius = 4,
	target = true,
	shootEffect = CONST_ANI_FIRE
},
{
	name = "combat",
	interval = 1 * 1000,
	chance = 15,
	minDamage = -500,
	maxDamage = -850,
	length = 8,
	spread = 0,
	type = COMBAT_ENERGYDAMAGE,
	effect = CONST_ANI_ENERGY
}
}

monster.defenses = {
	defense = 90,
	armor = 90,
	{
			name = "combat",
			interval = 1 * 1000,
			chance = 9,
			type = COMBAT_HEALING,
			minDamage = 1500,
			maxDamage = 2500,
			effect = CONST_ME_MAGIC_BLUE
		},
	{
			name = "combat",
			interval = 1 * 1000,
			chance = 17,
			type = COMBAT_HEALING,
			minDamage = 600,
			maxDamage = 1000,
			effect = CONST_ME_MAGIC_BLUE
		},
	{
			name = "speed",
			interval = 1 * 1000,
			chance = 5,
			speed = 1140,
			duration = 7 * 1000,
			effect = CONST_ME_MAGIC_RED
		},
}

monster.elements = {
{
	type = COMBAT_PHYSICALDAMAGE,
	percent = 20
},
{
	type = COMBAT_ENERGYDAMAGE,
	percent = 80
},
{
	type = COMBAT_ICEDAMAGE,
	percent = -1
},
{
	type = COMBAT_HOLYDAMAGE,
	percent = -1
},
{
	type = COMBAT_DEATHDAMAGE,
	percent = 50
}
}

monster.immunities = {
{
	type = "fire",
	combat = true,
	condition = true
},
{
	type = "earth",
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
