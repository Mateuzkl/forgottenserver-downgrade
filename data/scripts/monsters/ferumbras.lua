local mType = Game.createMonsterType("Ferumbras")
local monster = {}
monster.description = "Ferumbras"
monster.experience = 35000
monster.outfit = {lookType = 229}

monster.health = 90000
monster.maxHealth = monster.health
monster.race = "venom"
monster.corpse = 6078
monster.speed = 320
monster.maxSummons = 4

monster.changeTarget = {interval = 5 * 1000, chance = 8}

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
	isboss = true,
	isrewardboss = true
}

monster.summons = {
{
	name = "Demon",
	chance = 12,
	interval = 3 * 1000
}
}

monster.voices = {
	interval = 5000,
	chance = 20,
	{text = "NOONE WILL STOP ME THIS TIME!", yell = true},
	{text = "THE POWER IS MINE!", yell = true},
	{text = "I returned from death and you dream about defeating me?", yell = false},
	{text = "Witness the first seconds of my eternal world domination!", yell = false},
	{text = "Even in my weakened state I will crush you all!", yell = false},
}

monster.loot = {
{
	id = "Ferumbras' hat",
	chance = 100000
},
{
	id = "Ferumbras' hat",
	chance = 100000
},
{
	id = "gold coin",
	chance = 97000,
	maxCount = 100
},
{
	id = "gold coin",
	chance = 97000,
	maxCount = 100
},
{
	id = "gold coin",
	chance = 33000,
	maxCount = 70
},
{
	id = "gold ingot",
	chance = 75000,
	maxCount = 2
},
{
	id = "great shield",
	chance = 26000
},
{
	id = "spellbook of lost souls",
	chance = 26000
},
{
	id = "golden armor",
	chance = 24000
},
{
	id = "golden legs",
	chance = 22000
},
{
	id = "spellbook of mind control",
	chance = 22000
},
{
	id = "velvet mantle",
	chance = 22000
},
{
	id = "demon shield",
	chance = 20000
},
{
	id = "divine plate",
	chance = 20000
},
{
	id = "magma legs",
	chance = 20000
},
{
	id = "tempest shield",
	chance = 20000
},
{
	id = "emerald bangle",
	chance = 18000
},
{
	id = "glacier kilt",
	chance = 18000
},
{
	id = "lightning legs",
	chance = 18000
},
{
	id = "phoenix shield",
	chance = 18000
},
{
	id = "spellbook of dark mysteries",
	chance = 18000
},
{
	id = "terra legs",
	chance = 18000
},
{
	id = "emerald sword",
	chance = 16000
},
{
	id = "havoc blade",
	chance = 16000
},
{
	id = "shadow sceptre",
	chance = 16000
},
{
	id = "small emerald",
	chance = 16000,
	maxCount = 100
},
{
	id = 7632,
	chance = 14000,
	maxCount = 5
},
{
	id = 7633,
	chance = 14000,
	maxCount = 5
},
{
	id = "magic plate armor",
	chance = 14000
},
{
	id = "mastermind shield",
	chance = 14000
},
{
	id = "runed sword",
	chance = 14000
},
{
	id = "spellscroll of prophecies",
	chance = 14000
},
{
	id = "chaos mace",
	chance = 12000
},
{
	id = 8926,
	chance = 12000
},
{
	id = "greenwood coat",
	chance = 12000
},
{
	id = "small sapphire",
	chance = 12000,
	maxCount = 98
},
{
	id = "white pearl",
	chance = 12000,
	maxCount = 88
},
{
	id = "haunted blade",
	chance = 10000
},
{
	id = "hellforged axe",
	chance = 10000
},
{
	id = "obsidian truncheon",
	chance = 10000
},
{
	id = "ornamented axe",
	chance = 10000
},
{
	id = "queen's sceptre",
	chance = 10000
},
{
	id = "small amethyst",
	chance = 10000,
	maxCount = 54
},
{
	id = "small topaz",
	chance = 10000,
	maxCount = 87
},
{
	id = "demonrage sword",
	chance = 8100
},
{
	id = "jade hammer",
	chance = 8100
},
{
	id = "platinum coin",
	chance = 8100,
	maxCount = 58
},
{
	id = "skullcrusher",
	chance = 8100
},
{
	id = "soul orb",
	chance = 8100,
	maxCount = 9
},
{
	id = "vile axe",
	chance = 8100
},
{
	id = 7414,
	chance = 6100
},
{
	id = "berserker",
	chance = 6100
},
{
	id = "black pearl",
	chance = 6100,
	maxCount = 83
},
{
	id = "bloody edge",
	chance = 6100
},
{
	id = "nightmare blade",
	chance = 6100
},
{
	id = "great axe",
	chance = 4000
},
{
	id = "impaler",
	chance = 4000
},
{
	id = "red tome",
	chance = 4000
},
{
	id = "small diamond",
	chance = 4000,
	maxCount = 82
},
{
	id = "small ruby",
	chance = 4000,
	maxCount = 92
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
	name = "combat",
	interval = 2 * 1000,
	chance = 20,
	minDamage = -300,
	maxDamage = -700,
	range = 7,
	type = COMBAT_MANADRAIN,
	effect = CONST_ME_MAGIC_RED
},
{
	name = "combat",
	interval = 3 * 1000,
	chance = 20,
	minDamage = -250,
	maxDamage = -550,
	radius = 6,
	target = false,
	type = COMBAT_EARTHDAMAGE,
	effect = CONST_ME_POISON
},
{
	name = "combat",
	interval = 2 * 1000,
	chance = 18,
	minDamage = -200,
	maxDamage = -400,
	radius = 6,
	target = false,
	type = COMBAT_ENERGYDAMAGE,
	effect = CONST_ANI_ENERGY
},
{
	name = "combat",
	interval = 2 * 1000,
	chance = 16,
	minDamage = -225,
	maxDamage = -375,
	radius = 6,
	target = false,
	type = COMBAT_MANADRAIN,
	effect = CONST_ME_MAGIC_RED
},
{
	name = "combat",
	interval = 2 * 1000,
	chance = 21,
	minDamage = -200,
	maxDamage = -450,
	radius = 6,
	target = false,
	type = COMBAT_LIFEDRAIN,
	effect = CONST_ME_POFF
},
{
	name = "effect",
	interval = 3 * 1000,
	chance = 20,
	minDamage = -200,
	maxDamage = -600,
	radius = 5,
	target = false,
	effect = CONST_ME_BLACKSPARK
},
{
	name = "combat",
	type = COMBAT_FIREDAMAGE,
	conditionType = CONDITION_FIRE,
	conditionMinDamage = -200,
	conditionMaxDamage = -800,
	conditionTickInterval = 2000,
	interval = 3 * 1000,
	chance = 20,
	range = 7,
	radius = 7,
	target = true,
	shootEffect = CONST_ANI_FIRE,
	effect = CONST_ME_FIREAREA
},
{
	name = "combat",
	interval = 2 * 1000,
	chance = 25,
	minDamage = -50,
	maxDamage = -250,
	length = 8,
	spread = 0,
	type = COMBAT_LIFEDRAIN,
	effect = CONST_ME_GREENSPARK
}
}

monster.defenses = {
	defense = 120,
	armor = 100,
	{
			name = "combat",
			interval = 2 * 1000,
			chance = 10,
			type = COMBAT_HEALING,
			minDamage = 900,
			maxDamage = 1500,
			effect = CONST_ME_MAGIC_GREEN
		},
	{
			name = "speed",
			interval = 3 * 1000,
			chance = 30,
			speed = 360,
			duration = 7 * 1000,
			effect = CONST_ME_MAGIC_BLUE
		},
	{
			name = "invisible",
			interval = 4 * 1000,
			chance = 20,
			effect = CONST_ME_MAGIC_BLUE
		},
}

monster.elements = {
{
	type = COMBAT_FIREDAMAGE,
	percent = 90
},
{
	type = COMBAT_ENERGYDAMAGE,
	percent = 90
},
{
	type = COMBAT_HOLYDAMAGE,
	percent = 20
},
{
	type = COMBAT_ICEDAMAGE,
	percent = 20
},
{
	type = COMBAT_PHYSICALDAMAGE,
	percent = 10
}
}

monster.immunities = {
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
	type = "outfit",
	condition = true
},
{
	type = "drunk",
	condition = true
},
{
	type = "invisible",
	condition = true
}
}

mType:register(monster)
