local mType = Game.createMonsterType("Mutated Tiger")
local monster = {}
monster.description = "a mutated tiger"
monster.experience = 750
monster.outfit = {lookType = 318}

monster.health = 1100
monster.maxHealth = monster.health
monster.race = "blood"
monster.corpse = 9913
monster.speed = 240

monster.changeTarget = {interval = 4 * 1000, chance = 10}

monster.flags = {
	summonable = false,
	attackable = true,
	hostile = true,
	illusionable = true,
	convinceable = false,
	pushable = false,
	canpushitems = true,
	canpushcreatures = true,
	targetDistance = 1,
	staticAttackChance = 90
}

monster.voices = {
	interval = 5000,
	chance = 10,
	{text = "GRAAARRRRRR", yell = false},
	{text = "CHHHHHHHHHHH", yell = false},
}

monster.loot = {
{
	id = "gold coin",
	chance = 50000,
	maxCount = 100
},
{
	id = "gold coin",
	chance = 50000,
	maxCount = 5
},
{
	id = "life ring",
	chance = 5580
},
{
	id = "guardian shield",
	chance = 380
},
{
	id = "meat",
	chance = 29500,
	maxCount = 2
},
{
	id = "angelic axe",
	chance = 440
},
{
	id = "glorious axe",
	chance = 870
},
{
	id = "strong health potion",
	chance = 6000
},
{
	id = "silky tapestry",
	chance = 730
},
{
	id = "striped fur",
	chance = 20130
},
{
	id = "sabretooth",
	chance = 10600
}
}

monster.attacks = {
{
	name = "melee",
	interval = 2 * 1000,
	attack = 150,
	skill = 70,
	effect = CONST_ME_DRAWBLOOD
},
{
	name = "combat",
	interval = 2 * 1000,
	chance = 20,
	minDamage = 0,
	maxDamage = -200,
	length = 5,
	spread = 3,
	type = COMBAT_PHYSICALDAMAGE,
	effect = CONST_ME_YELLOWSPARK
}
}

monster.defenses = {
	defense = 25,
	armor = 25,
	{
			name = "invisible",
			interval = 2 * 1000,
			chance = 10,
			effect = CONST_ME_MAGIC_BLUE
		},
	{
			name = "combat",
			interval = 2 * 1000,
			chance = 10,
			type = COMBAT_HEALING,
			minDamage = 150,
			maxDamage = 300,
			effect = CONST_ME_MAGIC_BLUE
		},
}

monster.elements = {
{
	type = COMBAT_FIREDAMAGE,
	percent = 20
},
{
	type = COMBAT_ENERGYDAMAGE,
	percent = 20
},
{
	type = COMBAT_ICEDAMAGE,
	percent = 20
},
{
	type = COMBAT_DEATHDAMAGE,
	percent = -5
},
{
	type = COMBAT_EARTHDAMAGE,
	percent = 80
}
}

monster.immunities = {
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
