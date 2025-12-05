local mType = Game.createMonsterType("Adept of the Cult")
local monster = {}
monster.description = "an adept of the cult"
monster.experience = 400
monster.outfit = {lookType = 194}

monster.health = 430
monster.maxHealth = monster.health
monster.race = "blood"
monster.corpse = 20311
monster.speed = 215
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
	staticAttackChance = 90,
	targetDistance = 4,
	canwalkonenergy = false,
	canwalkonfire = false,
	canwalkonpoison = false
}

monster.summons = {
{
	name = "Ghoul",
	chance = 10,
	interval = 2 * 1000
}
}

monster.voices = {
	interval = 5000,
	chance = 10,
	{text = "Feel the power of the cult!", yell = false},
	{text = "Praise the voodoo!", yell = false},
	{text = "Power to the cult!", yell = false},
}

monster.loot = {
{
	id = 1962,
	chance = 940
},
{
	id = "small ruby",
	chance = 320
},
{
	id = "gold coin",
	chance = 65520,
	maxCount = 60
},
{
	id = 2169,
	chance = 420
},
{
	id = "silver amulet",
	chance = 1020
},
{
	id = "hailstorm rod",
	chance = 220
},
{
	id = "clerical mace",
	chance = 1260
},
{
	id = "red robe",
	chance = 80
},
{
	id = "pirate voodoo doll",
	chance = 1730
},
{
	id = 6089,
	chance = 700
},
{
	id = "lunar staff",
	chance = 120
},
{
	id = "amber staff",
	chance = 680
},
{
	id = "cultish robe",
	chance = 10080
},
{
	id = "cultish symbol",
	chance = 90
},
{
	id = "rope belt",
	chance = 10000
},
{
	id = "broken key ring",
	chance = 120
}
}

monster.attacks = {
{
	name = "melee",
	interval = 2 * 1000,
	attack = 90,
	skill = 70,
	effect = CONST_ME_DRAWBLOOD
},
{
	name = "combat",
	interval = 2 * 1000,
	chance = 20,
	minDamage = -70,
	maxDamage = -150,
	range = 7,
	target = true,
	type = COMBAT_LIFEDRAIN,
	shootEffect = CONST_ANI_POISON,
	effect = CONST_ME_POISON
},
{
	name = "drunk",
	interval = 2 * 1000,
	chance = 10,
	range = 7,
	radius = 1,
	target = true,
	duration = 4 * 1000,
	shootEffect = CONST_ANI_HOLY,
	effect = CONST_ME_HOLYDAMAGE
}
}

monster.defenses = {
	defense = 20,
	armor = 20,
	{
			name = "combat",
			interval = 3 * 1000,
			chance = 20,
			type = COMBAT_HEALING,
			minDamage = 45,
			maxDamage = 60,
			effect = CONST_ME_MAGIC_BLUE
		},
	{
			name = "invisible",
			interval = 2 * 1000,
			chance = 10,
			effect = CONST_ME_YELLOWBUBBLE
		},
}

monster.elements = {
{
	type = COMBAT_HOLYDAMAGE,
	percent = 30
},
{
	type = COMBAT_EARTHDAMAGE,
	percent = 40
},
{
	type = COMBAT_ICEDAMAGE,
	percent = 20
},
{
	type = COMBAT_ENERGYDAMAGE,
	percent = -5
},
{
	type = COMBAT_DEATHDAMAGE,
	percent = -5
}
}

monster.immunities = {
{
	type = "invisible",
	condition = true
}
}

mType:register(monster)
