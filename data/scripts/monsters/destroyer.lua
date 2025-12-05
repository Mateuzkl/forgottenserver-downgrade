local mType = Game.createMonsterType("Destroyer")
local monster = {}
monster.description = "a destroyer"
monster.experience = 2500
monster.outfit = {lookType = 236}

monster.health = 3700
monster.maxHealth = monster.health
monster.race = "blood"
monster.corpse = 6320
monster.speed = 300

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
	staticAttackChance = 70,
	canwalkonfire = false,
	canwalkonpoison = false
}

monster.voices = {
	interval = 5000,
	chance = 10,
	{text = "COME HERE AND DIE!", yell = false},
	{text = "Destructiooooon!", yell = false},
	{text = "It's a good day to destroy!", yell = false},
}

monster.loot = {
{
	id = "gold coin",
	chance = 92584,
	maxCount = 282
},
{
	id = "meat",
	chance = 39280
},
{
	id = "demonic essence",
	chance = 13803
},
{
	id = "crowbar",
	chance = 10573
},
{
	id = "burst arrow",
	chance = 8590,
	maxCount = 12
},
{
	id = "dark armor",
	chance = 5947
},
{
	id = "small amethyst",
	chance = 5947,
	maxCount = 2
},
{
	id = "soul orb",
	chance = 5433
},
{
	id = "pick",
	chance = 4699
},
{
	id = "metal spike",
	chance = 4552
},
{
	id = "plate armor",
	chance = 3304
},
{
	id = "platinum coin",
	chance = 2203,
	maxCount = 3
},
{
	id = "giant sword",
	chance = 1248
},
{
	id = "great health potion",
	chance = 1101
},
{
	id = "chaos mace",
	chance = 808
},
{
	id = "crystal necklace",
	chance = 514
},
{
	id = "dreaded cleaver",
	chance = 294
},
{
	id = "steel boots",
	chance = 294
},
{
	id = "death ring",
	chance = 220
},
{
	id = "mind stone",
	chance = 73
}
}

monster.attacks = {
{
	name = "melee",
	interval = 2 * 1000,
	attack = 500,
	skill = 70,
	effect = CONST_ME_DRAWBLOOD
},
{
	name = "combat",
	interval = 2 * 1000,
	chance = 15,
	minDamage = 0,
	maxDamage = -200,
	range = 7,
	type = COMBAT_PHYSICALDAMAGE,
	shootEffect = CONST_ANI_LARGEROCK
}
}

monster.defenses = {
	defense = 30,
	armor = 30,
	{
			name = "speed",
			interval = 2 * 1000,
			chance = 15,
			speed = 420,
			duration = 5 * 1000,
			effect = CONST_ME_MAGIC_RED
		},
}

monster.elements = {
{
	type = COMBAT_PHYSICALDAMAGE,
	percent = 20
},
{
	type = COMBAT_EARTHDAMAGE,
	percent = 20
},
{
	type = COMBAT_FIREDAMAGE,
	percent = 30
},
{
	type = COMBAT_ICEDAMAGE,
	percent = -15
},
{
	type = COMBAT_HOLYDAMAGE,
	percent = -3
},
{
	type = COMBAT_DEATHDAMAGE,
	percent = 20
}
}

monster.immunities = {
{
	type = "energy",
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
