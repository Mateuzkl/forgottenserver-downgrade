local mType = Game.createMonsterType("Acolyte of the Cult")
local monster = {}
monster.description = "an acolyte of the cult"
monster.experience = 300
monster.outfit = {lookType = 194}

monster.health = 390
monster.maxHealth = monster.health
monster.race = "blood"
monster.corpse = 20319
monster.speed = 200
monster.maxSummons = 1

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
	name = "Skeleton",
	chance = 10,
	interval = 2 * 1000
}
}

monster.voices = {
	interval = 5000,
	chance = 10,
	{text = "Praise the voodoo!", yell = false},
	{text = "Power to the cult!", yell = false},
	{text = "Feel the power of the cult!", yell = false},
}

monster.loot = {
{
	id = 1962,
	chance = 730
},
{
	id = "gold coin",
	chance = 66940,
	maxCount = 40
},
{
	id = "small emerald",
	chance = 550
},
{
	id = "life ring",
	chance = 560
},
{
	id = "terra rod",
	chance = 250
},
{
	id = "dragon necklace",
	chance = 1050
},
{
	id = "morning star",
	chance = 4990
},
{
	id = "pirate voodoo doll",
	chance = 1060
},
{
	id = 6088,
	chance = 480
},
{
	id = "cultish robe",
	chance = 8070
},
{
	id = "cultish symbol",
	chance = 40
},
{
	id = "rope belt",
	chance = 10420
},
{
	id = "broken key ring",
	chance = 60
}
}

monster.attacks = {
{
	name = "melee",
	interval = 2 * 1000,
	attack = 100,
	skill = 70,
	effect = CONST_ME_DRAWBLOOD
},
{
	name = "combat",
	interval = 2 * 1000,
	chance = 20,
	minDamage = -60,
	maxDamage = -120,
	range = 7,
	radius = 1,
	target = true,
	type = COMBAT_LIFEDRAIN,
	shootEffect = CONST_ANI_POISON,
	effect = CONST_ME_MAGIC_RED
},
{
	name = "drunk",
	interval = 2 * 1000,
	chance = 5,
	range = 7,
	radius = 1,
	target = true,
	duration = 3 * 1000,
	shootEffect = CONST_ANI_HOLY,
	effect = CONST_ME_HOLYDAMAGE
}
}

monster.defenses = {
	defense = 15,
	armor = 15,
	{
			name = "combat",
			interval = 2 * 1000,
			chance = 15,
			type = COMBAT_HEALING,
			minDamage = 40,
			maxDamage = 60,
			effect = CONST_ME_MAGIC_BLUE
		},
}

monster.elements = {
{
	type = COMBAT_HOLYDAMAGE,
	percent = 20
},
{
	type = COMBAT_EARTHDAMAGE,
	percent = 20
},
{
	type = COMBAT_ICEDAMAGE,
	percent = 20
},
{
	type = COMBAT_PHYSICALDAMAGE,
	percent = -10
},
{
	type = COMBAT_ENERGYDAMAGE,
	percent = -10
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
