local mType = Game.createMonsterType("Ghazbaran")
local monster = {}
monster.description = "Ghazbaran"
monster.experience = 15000
monster.outfit = {lookType = 12}

monster.health = 77000
monster.maxHealth = monster.health
monster.race = "fire"
monster.corpse = 6068
monster.speed = 400
monster.maxSummons = 4

monster.changeTarget = {interval = 10 * 1000, chance = 20}

monster.flags = {
	summonable = false,
	attackable = true,
	hostile = true,
	illusionable = false,
	convinceable = false,
	pushable = false,
	canpushitems = true,
	canpushcreatures = true,
	staticAttackChance = 98,
	targetDistance = 1,
	isboss = true
}

monster.summons = {
{
	name = "Deathslicer",
	chance = 20,
	interval = 4 * 1000
}
}

monster.voices = {
	interval = 5000,
	chance = 30,
	{text = "COME AND GIVE ME SOME AMUSEMENT", yell = false},
	{text = "IS THAT THE BEST YOU HAVE TO OFFER?", yell = true},
	{text = "I AM GHAZBARAN OF THE TRIANGLE... AND I AM HERE TO CHALLENGE YOU ALL.", yell = true},
	{text = "FLAWLESS VICTORY!", yell = true},
}

monster.loot = {
{
	id = "blue tome",
	chance = 20000
},
{
	id = "teddy bear",
	chance = 12500
},
{
	id = "crystal ring",
	chance = 8333
},
{
	id = "white pearl",
	chance = 25000,
	maxCount = 15
},
{
	id = "black pearl",
	chance = 11111,
	maxCount = 14
},
{
	id = "small diamond",
	chance = 25000,
	maxCount = 5
},
{
	id = "small sapphire",
	chance = 25000,
	maxCount = 10
},
{
	id = "small emerald",
	chance = 25000,
	maxCount = 10
},
{
	id = "small amethyst",
	chance = 25000,
	maxCount = 17
},
{
	id = "talon",
	chance = 12500,
	maxCount = 7
},
{
	id = "platinum coin",
	chance = 100000,
	maxCount = 69
},
{
	id = "green gem",
	chance = 20000
},
{
	id = "blue gem",
	chance = 14285
},
{
	id = "might ring",
	chance = 12500
},
{
	id = "stealth ring",
	chance = 12500
},
{
	id = "strange symbol",
	chance = 11111
},
{
	id = "life crystal",
	chance = 12500
},
{
	id = 2178,
	chance = 20000
},
{
	id = "mind stone",
	chance = 20000
},
{
	id = "gold ring",
	chance = 20000
},
{
	id = "ring of healing",
	chance = 20000
},
{
	id = "twin axe",
	chance = 11111
},
{
	id = "golden armor",
	chance = 8333
},
{
	id = "magic plate armor",
	chance = 8333
},
{
	id = "demon shield",
	chance = 12500
},
{
	id = 2646,
	chance = 8333
},
{
	id = "demon horn",
	chance = 33333,
	maxCount = 2
},
{
	id = "stealth ring",
	chance = 25000
},
{
	id = "demonic essence",
	chance = 100000
},
{
	id = "ruthless axe",
	chance = 14285
},
{
	id = "assassin star",
	chance = 12500,
	maxCount = 44
},
{
	id = "havoc blade",
	chance = 16666
},
{
	id = "ravenwing",
	chance = 14285
},
{
	id = "scrying crystal ball",
	chance = 20000
},
{
	id = "great mana potion",
	chance = 20000
},
{
	id = "great health potion",
	chance = 20000
},
{
	id = "glacier kilt",
	chance = 8333
},
{
	id = "great spirit potion",
	chance = 25000
},
{
	id = "ultimate health potion",
	chance = 25000
},
{
	id = "oceanborn leviathan armor",
	chance = 16666
},
{
	id = "frozen plate",
	chance = 8333
},
{
	id = "spellbook of warding",
	chance = 20000
},
{
	id = "spellbook of mind control",
	chance = 11111
},
{
	id = "spellbook of lost souls",
	chance = 16666
},
{
	id = "spellscroll of prophecies",
	chance = 25000
},
{
	id = "spellbook of dark mysteries",
	chance = 20000
}
}

monster.attacks = {
{
	name = "melee",
	interval = 2 * 1000,
	attack = 2191,
	skill = 70,
	effect = CONST_ME_DRAWBLOOD
},
{
	name = "combat",
	interval = 2 * 1000,
	chance = 40,
	minDamage = -250,
	maxDamage = -500,
	range = 7,
	radius = 6,
	target = false,
	type = COMBAT_PHYSICALDAMAGE,
	effect = CONST_ME_BLACKSPARK
},
{
	name = "combat",
	interval = 3 * 1000,
	chance = 34,
	minDamage = -120,
	maxDamage = -500,
	range = 7,
	radius = 1,
	target = true,
	type = COMBAT_PHYSICALDAMAGE,
	shootEffect = CONST_ANI_WHIRLWINDSWORD,
	effect = CONST_ME_REDSPARK
},
{
	name = "combat",
	interval = 4 * 1000,
	chance = 30,
	minDamage = -100,
	maxDamage = -800,
	length = 8,
	spread = 0,
	type = COMBAT_ENERGYDAMAGE,
	effect = CONST_ME_MORTAREA
},
{
	name = "combat",
	interval = 3 * 1000,
	chance = 20,
	minDamage = -200,
	maxDamage = -480,
	range = 14,
	radius = 5,
	target = false,
	type = COMBAT_PHYSICALDAMAGE,
	effect = CONST_ME_POFF
},
{
	name = "combat",
	interval = 4 * 1000,
	chance = 15,
	minDamage = -100,
	maxDamage = -650,
	range = 7,
	radius = 13,
	target = false,
	type = COMBAT_PHYSICALDAMAGE,
	effect = CONST_ME_YELLOWSPARK
},
{
	name = "combat",
	interval = 4 * 1000,
	chance = 18,
	minDamage = -200,
	maxDamage = -600,
	radius = 14,
	target = false,
	type = COMBAT_PHYSICALDAMAGE,
	effect = CONST_ME_BLUEBUBBLE
},
{
	name = "combat",
	interval = 3 * 1000,
	chance = 15,
	minDamage = -200,
	maxDamage = -750,
	range = 7,
	radius = 4,
	target = false,
	type = COMBAT_PHYSICALDAMAGE,
	effect = CONST_ME_ENERGYAREA
}
}

monster.defenses = {
	defense = 65,
	armor = 55,
	{
			name = "combat",
			interval = 3 * 1000,
			chance = 35,
			type = COMBAT_HEALING,
			minDamage = 300,
			maxDamage = 800,
			effect = CONST_ME_MAGIC_BLUE
		},
	{
			name = "speed",
			interval = 4 * 1000,
			chance = 80,
			speed = 440,
			duration = 6 * 1000,
			effect = CONST_ME_MAGIC_RED
		},
}

monster.elements = {
{
	type = COMBAT_PHYSICALDAMAGE,
	percent = 30
},
{
	type = COMBAT_HOLYDAMAGE,
	percent = -5
},
{
	type = COMBAT_DEATHDAMAGE,
	percent = 1
}
}

monster.immunities = {
{
	type = "fire",
	combat = true,
	condition = true
},
{
	type = "ice",
	combat = true,
	condition = true
},
{
	type = "earth",
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
