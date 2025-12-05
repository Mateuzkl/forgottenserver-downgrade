local mType = Game.createMonsterType("Thul")
local monster = {}
monster.description = "Thul"
monster.experience = 2700
monster.outfit = {lookType = 46}

monster.health = 2950
monster.maxHealth = monster.health
monster.race = "blood"
monster.corpse = 6065
monster.speed = 520
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
	canpushcreatures = false,
	staticAttackChance = 90,
	targetDistance = 1,
	canwalkonenergy = false,
	isboss = true
}

monster.summons = {
{
	name = "Massive Water Elementals",
	chance = 10,
	interval = 2 * 1000
}
}

monster.voices = {
	interval = 5000,
	chance = 10,
	{text = "Gaaahhh!", yell = false},
}

monster.loot = {
{
	id = "gold coin",
	chance = 50000,
	maxCount = 77
},
{
	id = "shrimp",
	chance = 25000
},
{
	id = "fish fin",
	chance = 100000
},
{
	id = "relic sword",
	chance = 50000
}
}

monster.attacks = {
{
	name = "melee",
	interval = 2 * 1000,
	attack = 1354,
	skill = 70,
	effect = CONST_ME_DRAWBLOOD
},
{
	name = "combat",
	interval = 2 * 1000,
	chance = 25,
	minDamage = 0,
	maxDamage = -170,
	radius = 3,
	type = COMBAT_PHYSICALDAMAGE,
	effect = CONST_ME_BLACKSPARK
},
{
	name = "poisonfield",
	interval = 2 * 1000,
	chance = 19,
	range = 7,
	radius = 3,
	target = false,
	shootEffect = CONST_ANI_POISON
},
{
	name = "speed",
	interval = 2 * 1000,
	chance = 18,
	range = 7,
	speed = -360,
	duration = 5 * 1000,
	shootEffect = CONST_ANI_SNOWBALL
},
{
	name = "combat",
	interval = 2 * 1000,
	chance = 20,
	minDamage = -108,
	maxDamage = -137,
	range = 7,
	target = true,
	type = COMBAT_ICEDAMAGE,
	shootEffect = CONST_ANI_ICE,
	effect = CONST_ME_ICEAREA
}
}

monster.defenses = {
	defense = 15,
	armor = 15,
}

monster.elements = {
{
	type = COMBAT_ENERGYDAMAGE,
	percent = -15
}
}

monster.immunities = {
{
	type = "lifedrain",
	combat = true
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
}
}

mType:register(monster)
