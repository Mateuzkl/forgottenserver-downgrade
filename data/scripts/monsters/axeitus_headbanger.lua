local mType = Game.createMonsterType("Axeitus Headbanger")
local monster = {}
monster.description = "Axeitus Headbanger"
monster.experience = 140
monster.outfit = {lookType = 71}

monster.health = 365
monster.maxHealth = monster.health
monster.race = "blood"
monster.corpse = 7349
monster.speed = 170

monster.flags = {
	summonable = false,
	attackable = true,
	hostile = true,
	illusionable = false,
	convinceable = false,
	pushable = false,
	canpushitems = true,
	targetDistance = 1,
	canwalkonenergy = false,
	canwalkonfire = false,
	canwalkonpoison = false
}

monster.voices = {
	interval = 2000,
	chance = 5,
	{text = "Hicks!", yell = false},
	{text = "Stand still! Both of you! hicks", yell = false},
	{text = "This victory will earn me a casket of beer.", yell = false},
}

monster.attacks = {
{
	name = "melee",
	interval = 2 * 1000,
	attack = 80,
	skill = 70,
	effect = CONST_ME_DRAWBLOOD
},
{
	name = "combat",
	interval = 1 * 1000,
	chance = 80,
	minDamage = 0,
	maxDamage = -50,
	range = 5,
	radius = 1,
	target = true,
	type = COMBAT_PHYSICALDAMAGE,
	shootEffect = CONST_ANI_SMALLSTONE
}
}

monster.defenses = {
	defense = 17,
	armor = 15,
}

monster.elements = {
{
	type = COMBAT_FIREDAMAGE,
	percent = -5
}
}

monster.immunities = {
{
	type = "outfit",
	condition = true
},
{
	type = "drunk",
	condition = true
},
{
	type = "invisible",
	condition = true
}
}

mType:register(monster)
