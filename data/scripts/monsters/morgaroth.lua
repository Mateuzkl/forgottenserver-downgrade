local mType = Game.createMonsterType("Morgaroth")
local monster = {}
monster.description = "Morgaroth"
monster.experience = 15000
monster.outfit = {lookType = 12}

monster.health = 55000
monster.maxHealth = monster.health
monster.race = "fire"
monster.corpse = 6068
monster.speed = 400
monster.maxSummons = 6

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
	name = "Demon",
	chance = 33,
	interval = 4 * 1000
}
}

monster.voices = {
	interval = 5000,
	chance = 30,
	{text = "I AM MORGAROTH, LORD OF THE TRIANGLE... AND YOU ARE LOST!", yell = true},
	{text = "MY SEED IS FEAR AND MY HARVEST ARE YOUR SOULS!", yell = true},
	{text = "ZATHROTH! LOOK AT THE DESTRUCTION I AM CAUSING IN YOUR NAME!", yell = true},
	{text = "THE TRIANGLE OF TERROR WILL RISE!", yell = true},
}

monster.loot = {
{
	id = "demonic essence",
	chance = 95455
},
{
	id = "platinum coin",
	chance = 95455,
	maxCount = 74
},
{
	id = "green gem",
	chance = 50000
},
{
	id = "great mana potion",
	chance = 45455
},
{
	id = "small amethyst",
	chance = 36364,
	maxCount = 18
},
{
	id = "the devileye",
	chance = 36364
},
{
	id = "red tome",
	chance = 27273
},
{
	id = "small emerald",
	chance = 27273,
	maxCount = 6
},
{
	id = "small sapphire",
	chance = 27273,
	maxCount = 8
},
{
	id = "ultimate health potion",
	chance = 27273
},
{
	id = "chain bolter",
	chance = 22727
},
{
	id = "dark lord's cape",
	chance = 22727
},
{
	id = "death ring",
	chance = 22727
},
{
	id = "demon horn",
	chance = 22727,
	maxCount = 2
},
{
	id = "ring of healing",
	chance = 22727
},
{
	id = "talon",
	chance = 22727,
	maxCount = 7
},
{
	id = "the ironworker",
	chance = 22727
},
{
	id = "double axe",
	chance = 18182
},
{
	id = "fireborn giant armor",
	chance = 18182
},
{
	id = "great spirit potion",
	chance = 18182
},
{
	id = "magic plate armor",
	chance = 18182
},
{
	id = "might ring",
	chance = 18182
},
{
	id = "mind stone",
	chance = 18182
},
{
	id = "royal crossbow",
	chance = 18182
},
{
	id = "stealth ring",
	chance = 18182
},
{
	id = "teddy bear",
	chance = 18182
},
{
	id = "assassin star",
	chance = 13636,
	maxCount = 28
},
{
	id = "black pearl",
	chance = 13636,
	maxCount = 15
},
{
	id = "demonbone",
	chance = 13636
},
{
	id = "golden mug",
	chance = 13636
},
{
	id = "morgaroth's heart",
	chance = 13636
},
{
	id = "obsidian truncheon",
	chance = 13636
},
{
	id = "the stomper",
	chance = 13636
},
{
	id = "white pearl",
	chance = 13636,
	maxCount = 13
},
{
	id = "blue gem",
	chance = 9091
},
{
	id = "demon shield",
	chance = 9091
},
{
	id = "energy ring",
	chance = 9091
},
{
	id = "giant sword",
	chance = 9091
},
{
	id = "gold ring",
	chance = 9091
},
{
	id = "golden legs",
	chance = 9091
},
{
	id = "life crystal",
	chance = 9091
},
{
	id = "magic light wand",
	chance = 9091
},
{
	id = "orb",
	chance = 9091
},
{
	id = "steel boots",
	chance = 9091
},
{
	id = "strange symbol",
	chance = 9091
},
{
	id = "thunder hammer",
	chance = 9091
},
{
	id = "crystal ring",
	chance = 4545
},
{
	id = "dragon robe",
	chance = 4545
},
{
	id = "fire axe",
	chance = 4545
},
{
	id = "great health potion",
	chance = 4545
},
{
	id = "mastermind shield",
	chance = 4545
},
{
	id = "molten plate",
	chance = 4545
},
{
	id = "small diamond",
	chance = 4545,
	maxCount = 5
}
}

monster.attacks = {
{
	name = "melee",
	interval = 2 * 1000,
	attack = 2000,
	skill = 70,
	effect = CONST_ME_DRAWBLOOD
},
{
	name = "combat",
	interval = 3 * 1000,
	chance = 35,
	minDamage = -700,
	maxDamage = -1200,
	range = 7,
	radius = 7,
	target = true,
	type = COMBAT_FIREDAMAGE,
	shootEffect = CONST_ANI_FIRE,
	effect = CONST_ME_FIREAREA
},
{
	name = "melee",
	interval = 1 * 1000,
	chance = 40,
	range = 7,
	radius = 5,
	target = false,
	attack = 400,
	skill = 70,
	effect = CONST_ME_BLACKSPARK
},
{
	name = "combat",
	interval = 3 * 1000,
	chance = 30,
	minDamage = -300,
	maxDamage = -1000,
	length = 8,
	spread = 0,
	type = COMBAT_ENERGYDAMAGE,
	effect = CONST_ANI_ENERGY
},
{
	name = "combat",
	interval = 2 * 1000,
	chance = 20,
	minDamage = -200,
	maxDamage = -480,
	range = 7,
	radius = 5,
	target = false,
	type = COMBAT_PHYSICALDAMAGE,
	effect = CONST_ME_MAGIC_GREEN
},
{
	name = "combat",
	interval = 2 * 1000,
	chance = 15,
	minDamage = -250,
	maxDamage = -500,
	range = 7,
	radius = 13,
	target = false,
	type = COMBAT_PHYSICALDAMAGE,
	effect = CONST_ME_REDNOTE
},
{
	name = "combat",
	interval = 2 * 1000,
	chance = 20,
	minDamage = -200,
	maxDamage = -450,
	radius = 14,
	target = false,
	type = COMBAT_PHYSICALDAMAGE,
	effect = CONST_ME_BLUEBUBBLE
},
{
	name = "melee",
	interval = 3 * 1000,
	chance = 15,
	range = 7,
	radius = 3,
	target = false,
	attack = 200,
	skill = 70,
	effect = CONST_ME_MAGIC_BLUE
}
}

monster.defenses = {
	defense = 130,
	armor = 130,
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
	percent = 50
},
{
	type = COMBAT_ENERGYDAMAGE,
	percent = 80
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
	percent = 80
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
	type = "paralyze",
	condition = true
},
{
	type = "invisible",
	condition = true
}
}

mType:register(monster)
