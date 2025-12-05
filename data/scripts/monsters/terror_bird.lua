local mType = Game.createMonsterType("Terror Bird")
local monster = {}
monster.description = "a terror bird"
monster.experience = 150
monster.outfit = {lookType = 218}

monster.health = 300
monster.maxHealth = monster.health
monster.race = "blood"
monster.corpse = 6057
monster.speed = 212

monster.changeTarget = {interval = 4 * 1000, chance = 10}

monster.flags = {
	summonable = true,
	attackable = true,
	hostile = true,
	illusionable = true,
	convinceable = true,
	pushable = false,
	canpushitems = true,
	canpushcreatures = true,
	targetDistance = 1,
	staticAttackChance = 90,
	canwalkonenergy = false,
	canwalkonfire = false,
	canwalkonpoison = false
}

monster.voices = {
	interval = 5000,
	chance = 10,
	{text = "CRAAAHHH!", yell = false},
	{text = "Gruuuh Gruuuh.", yell = false},
	{text = "Carrah Carrah!", yell = false},
}

monster.loot = {
{
	id = "gold coin",
	chance = 82500,
	maxCount = 30
},
{
	id = "meat",
	chance = 48000,
	maxCount = 3
},
{
	id = "terrorbird beak",
	chance = 10000
},
{
	id = "worm",
	chance = 9500
},
{
	id = "colourful feather",
	chance = 3000
},
{
	id = "health potion",
	chance = 690
},
{
	id = "seeds",
	chance = 230
},
{
	id = "feather headdress",
	chance = 100
}
}

monster.attacks = {
{
	name = "melee",
	interval = 2 * 1000,
	attack = 90,
	skill = 70,
	effect = CONST_ME_DRAWBLOOD
}
}

monster.defenses = {
	defense = 13,
	armor = 13,
}

monster.elements = {
{
	type = COMBAT_ENERGYDAMAGE,
	percent = 20
},
{
	type = COMBAT_ICEDAMAGE,
	percent = 20
},
{
	type = COMBAT_FIREDAMAGE,
	percent = -10
},
{
	type = COMBAT_EARTHDAMAGE,
	percent = -10
},
{
	type = COMBAT_DEATHDAMAGE,
	percent = -5
}
}

mType:register(monster)
