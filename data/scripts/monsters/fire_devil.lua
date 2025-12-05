local mType = Game.createMonsterType("Fire Devil")
local monster = {}
monster.description = "a fire devil"
monster.experience = 145
monster.outfit = {lookType = 40}

monster.health = 200
monster.maxHealth = monster.health
monster.race = "blood"
monster.corpse = 5985
monster.speed = 180

monster.changeTarget = {interval = 4 * 1000, chance = 10}

monster.flags = {
	summonable = true,
	attackable = true,
	hostile = true,
	illusionable = true,
	convinceable = true,
	pushable = false,
	canpushitems = true,
	canpushcreatures = false,
	targetDistance = 4,
	staticAttackChance = 90,
	canwalkonenergy = false,
	canwalkonpoison = false
}

monster.voices = {
	interval = 5000,
	chance = 10,
	{text = "Hot, eh?", yell = false},
	{text = "Hell, oh, hell!", yell = false},
}

monster.loot = {
{
	id = "small pitchfork",
	chance = 19770
},
{
	id = "blank rune",
	chance = 11000
},
{
	id = 2419,
	chance = 3000
},
{
	id = 2050,
	chance = 1370,
	maxCount = 2
},
{
	id = "double axe",
	chance = 1200
},
{
	id = "cleaver",
	chance = 920
},
{
	id = "necrotic rod",
	chance = 460
},
{
	id = "small amethyst",
	chance = 280
},
{
	id = "guardian shield",
	chance = 210
}
}

monster.attacks = {
{
	name = "melee",
	interval = 2 * 1000,
	attack = 35,
	skill = 70,
	effect = CONST_ME_DRAWBLOOD
},
{
	name = "combat",
	interval = 2 * 1000,
	chance = 20,
	minDamage = -60,
	maxDamage = -90,
	range = 7,
	radius = 4,
	target = true,
	type = COMBAT_FIREDAMAGE,
	shootEffect = CONST_ANI_FIRE,
	effect = CONST_ME_FIREAREA
},
{
	name = "combat",
	interval = 2 * 1000,
	chance = 15,
	minDamage = -20,
	maxDamage = -50,
	range = 7,
	radius = 2,
	target = true,
	type = COMBAT_FIREDAMAGE,
	shootEffect = CONST_ANI_FIRE,
	effect = CONST_ME_FIREAREA
}
}

monster.defenses = {
	defense = 13,
	armor = 13,
}

monster.elements = {
{
	type = COMBAT_ENERGYDAMAGE,
	percent = 30
},
{
	type = COMBAT_EARTHDAMAGE,
	percent = 20
},
{
	type = COMBAT_DEATHDAMAGE,
	percent = 5
},
{
	type = COMBAT_PHYSICALDAMAGE,
	percent = -5
},
{
	type = COMBAT_ICEDAMAGE,
	percent = -20
},
{
	type = COMBAT_HOLYDAMAGE,
	percent = -10
}
}

monster.immunities = {
{
	type = "fire",
	combat = true,
	condition = true
}
}

mType:register(monster)
