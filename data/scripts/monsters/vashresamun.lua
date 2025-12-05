local mType = Game.createMonsterType("Vashresamun")
local monster = {}
monster.description = "Vashresamun"
monster.experience = 2950
monster.outfit = {lookType = 90}

monster.health = 4000
monster.maxHealth = monster.health
monster.race = "undead"
monster.corpse = 6025
monster.speed = 340
monster.maxSummons = 2

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
	canwalkonenergy = false,
	canwalkonfire = false,
	canwalkonpoison = false
}

monster.summons = {
{
	name = "Banshee",
	chance = 20,
	interval = 2 * 1000
}
}

monster.voices = {
	interval = 5000,
	chance = 10,
	{text = "If music is the food of death, drop dead.", yell = false},
	{text = "Are you enjoying my music?", yell = false},
	{text = "Come my maidens, we have visitors!", yell = false},
	{text = "Chakka Chakka!", yell = false},
	{text = "Heheheheee!", yell = false},
}

monster.loot = {
{
	id = "blue note",
	chance = 100000
},
{
	id = "gold coin",
	chance = 31000,
	maxCount = 100
},
{
	id = "gold coin",
	chance = 31000,
	maxCount = 100
},
{
	id = "gold coin",
	chance = 31000,
	maxCount = 50
},
{
	id = "white pearl",
	chance = 10000
},
{
	id = 2072,
	chance = 9200
},
{
	id = "great mana potion",
	chance = 8000
},
{
	id = "blue robe",
	chance = 1200
},
{
	id = "crystal mace",
	chance = 1000
},
{
	id = 2124,
	chance = 1000
},
{
	id = 2074,
	chance = 330
},
{
	id = "ancient tiara",
	chance = 170
},
{
	id = "mini mummy",
	chance = 170
}
}

monster.attacks = {
{
	name = "melee",
	interval = 2 * 1000,
	attack = 200,
	skill = 70,
	effect = CONST_ME_DRAWBLOOD
},
{
	name = "combat",
	interval = 2 * 1000,
	chance = 30,
	minDamage = -200,
	maxDamage = -600,
	radius = 5,
	target = false,
	type = COMBAT_DEATHDAMAGE,
	effect = CONST_ME_PURPLENOTE
},
{
	name = "combat",
	interval = 2 * 1000,
	chance = 10,
	minDamage = 0,
	maxDamage = -800,
	range = 1,
	type = COMBAT_LIFEDRAIN
}
}

monster.defenses = {
	defense = 40,
	armor = 40,
	{
			name = "combat",
			interval = 1 * 1000,
			chance = 20,
			type = COMBAT_HEALING,
			minDamage = 250,
			maxDamage = 450,
			effect = CONST_ME_MAGIC_BLUE
		},
	{
			name = "speed",
			interval = 1 * 1000,
			chance = 12,
			speed = 370,
			duration = 30 * 1000,
			effect = CONST_ME_MAGIC_RED
		},
}

monster.elements = {
{
	type = COMBAT_HOLYDAMAGE,
	percent = -10
},
{
	type = COMBAT_ICEDAMAGE,
	percent = 20
},
{
	type = COMBAT_FIREDAMAGE,
	percent = 20
},
{
	type = COMBAT_ENERGYDAMAGE,
	percent = 20
},
{
	type = COMBAT_EARTHDAMAGE,
	percent = 20
}
}

monster.immunities = {
{
	type = "death",
	combat = true,
	condition = true
},
{
	type = "invisible",
	condition = true
}
}

mType:register(monster)
