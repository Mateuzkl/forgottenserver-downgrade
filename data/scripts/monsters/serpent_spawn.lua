local mType = Game.createMonsterType("Serpent Spawn")
local monster = {}
monster.description = "a serpent spawn"
monster.experience = 3050
monster.outfit = {lookType = 220}

monster.health = 3000
monster.maxHealth = monster.health
monster.race = "blood"
monster.corpse = 6061
monster.speed = 234

monster.changeTarget = {interval = 4 * 1000, chance = 10}

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
	{text = "Sssssouls for the one", yell = false},
	{text = "HISSSS", yell = true},
	{text = "Tsssse one will risssse again", yell = false},
	{text = "I bring your deathhh, mortalssss", yell = false},
}

monster.loot = {
{
	id = "gold coin",
	chance = 97236,
	maxCount = 245
},
{
	id = "green mushroom",
	chance = 18300
},
{
	id = "snake skin",
	chance = 14967
},
{
	id = "small sapphire",
	chance = 12132
},
{
	id = "power bolt",
	chance = 6107
},
{
	id = "life ring",
	chance = 6058
},
{
	id = "energy ring",
	chance = 5968
},
{
	id = "golden mug",
	chance = 2958
},
{
	id = "mercenary sword",
	chance = 2030
},
{
	id = "great mana potion",
	chance = 2014
},
{
	id = "snakebite rod",
	chance = 986
},
{
	id = "winged tail",
	chance = 941
},
{
	id = "tower shield",
	chance = 855
},
{
	id = "noble axe",
	chance = 807
},
{
	id = "life crystal",
	chance = 789
},
{
	id = "strange helmet",
	chance = 633
},
{
	id = "old parchment",
	chance = 569
},
{
	id = "warrior helmet",
	chance = 564
},
{
	id = "crown armor",
	chance = 504
},
{
	id = "charmer's tiara",
	chance = 184
},
{
	id = "royal helmet",
	chance = 124
},
{
	id = "spellbook of mind control",
	chance = 98
},
{
	id = "swamplair armor",
	chance = 84
}
}

monster.attacks = {
{
	name = "melee",
	interval = 2 * 1000,
	attack = 250,
	skill = 70,
	effect = CONST_ME_DRAWBLOOD
},
{
	name = "combat",
	interval = 2 * 1000,
	chance = 20,
	minDamage = -80,
	maxDamage = -300,
	range = 7,
	type = COMBAT_EARTHDAMAGE,
	shootEffect = CONST_ANI_POISON
},
{
	name = "outfit",
	interval = 2 * 1000,
	chance = 1,
	range = 7,
	duration = 3 * 1000,
	effect = CONST_ME_MAGIC_BLUE
},
{
	name = "speed",
	interval = 2 * 1000,
	chance = 25,
	range = 7,
	radius = 4,
	target = true,
	speed = -850,
	duration = 12 * 1000,
	shootEffect = CONST_ANI_POISON,
	effect = CONST_ME_GREENBUBBLE
},
{
	name = "combat",
	interval = 2 * 1000,
	chance = 10,
	minDamage = -200,
	maxDamage = -500,
	length = 8,
	spread = 0,
	type = COMBAT_LIFEDRAIN,
	effect = CONST_ME_REDNOTE
},
{
	name = "combat",
	interval = 2 * 1000,
	chance = 10,
	minDamage = -200,
	maxDamage = -500,
	length = 8,
	spread = 3,
	type = COMBAT_EARTHDAMAGE,
	effect = CONST_ME_POISON
}
}

monster.defenses = {
	defense = 35,
	armor = 35,
	{
			name = "combat",
			interval = 2 * 1000,
			chance = 15,
			type = COMBAT_HEALING,
			minDamage = 250,
			maxDamage = 500,
			effect = CONST_ME_MAGIC_BLUE
		},
	{
			name = "speed",
			interval = 2 * 1000,
			chance = 15,
			speed = 340,
			duration = 5 * 1000,
			effect = CONST_ME_MAGIC_RED
		},
}

monster.elements = {
{
	type = COMBAT_ICEDAMAGE,
	percent = 20
},
{
	type = COMBAT_FIREDAMAGE,
	percent = -10
},
{
	type = COMBAT_ENERGYDAMAGE,
	percent = -10
}
}

monster.immunities = {
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
