local mType = Game.createMonsterType("Frost Giant")
local monster = {}
monster.description = "a frost giant"
monster.experience = 150
monster.outfit = {lookType = 257}

monster.health = 270
monster.maxHealth = monster.health
monster.race = "blood"
monster.corpse = 7330
monster.speed = 190

monster.changeTarget = {interval = 4 * 1000, chance = 10}

monster.flags = {
	summonable = false,
	attackable = true,
	hostile = true,
	illusionable = true,
	convinceable = true,
	pushable = false,
	canpushitems = true,
	staticAttackChance = 80,
	targetDistance = 1,
	canwalkonenergy = false,
	canwalkonfire = false,
	canwalkonpoison = false
}

monster.voices = {
	interval = 1000,
	chance = 5,
	{text = "Hmm Humansoup!", yell = false},
	{text = "Stand still ya tasy snack!", yell = false},
	{text = "Joh Thun!", yell = false},
	{text = "Hörre Sjan Flan!", yell = false},
	{text = "Bröre Smöde!", yell = false},
	{text = "Forle Bramma", yell = false},
}

monster.loot = {
{
	id = "gold coin",
	chance = 82076,
	maxCount = 40
},
{
	id = "short sword",
	chance = 8228
},
{
	id = "frost giant pelt",
	chance = 4926
},
{
	id = "meat",
	chance = 4919
},
{
	id = "ice cube",
	chance = 2204
},
{
	id = "battle shield",
	chance = 1386
},
{
	id = "health potion",
	chance = 905
},
{
	id = "halberd",
	chance = 556
},
{
	id = "norse shield",
	chance = 287
},
{
	id = "dark helmet",
	chance = 169
},
{
	id = "club ring",
	chance = 119
},
{
	id = "shard",
	chance = 62
}
}

monster.attacks = {
{
	name = "melee",
	interval = 2 * 1000,
	attack = 110,
	skill = 70,
	effect = CONST_ME_DRAWBLOOD
},
{
	name = "combat",
	interval = 2 * 1000,
	chance = 15,
	minDamage = 0,
	maxDamage = -90,
	range = 7,
	type = COMBAT_PHYSICALDAMAGE,
	shootEffect = CONST_ANI_LARGEROCK
}
}

monster.defenses = {
	defense = 22,
	armor = 22,
	{
			name = "speed",
			interval = 2 * 1000,
			chance = 15,
			speed = 300,
			duration = 5 * 1000,
			effect = CONST_ME_MAGIC_RED
		},
}

monster.immunities = {
{
	type = "ice",
	combat = true,
	condition = true
}
}

mType:register(monster)
