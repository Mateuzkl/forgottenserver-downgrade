local mType = Game.createMonsterType("Gnorre Chyllson")
local monster = {}
monster.description = "Gnorre Chyllson"
monster.experience = 4000
monster.outfit = {lookType = 251}

monster.health = 7150
monster.maxHealth = monster.health
monster.race = "blood"
monster.corpse = 7349
monster.speed = 370

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
	canwalkonpoison = false
}

monster.voices = {
	interval = 2000,
	chance = 5,
	{text = "I am like the merciless northwind.", yell = false},
	{text = "Snow will be your death shroud.", yell = false},
	{text = "Feel the wrath of father chyll!", yell = false},
}

monster.attacks = {
{
	name = "melee",
	interval = 2 * 1000,
	attack = 455,
	skill = 70,
	effect = CONST_ME_DRAWBLOOD
},
{
	name = "melee",
	interval = 3 * 1000,
	chance = 50,
	target = false,
	attack = 800,
	skill = 70,
	effect = CONST_ME_BLACKSPARK
},
{
	name = "combat",
	interval = 1 * 1000,
	chance = 15,
	minDamage = -170,
	maxDamage = -200,
	range = 7,
	type = COMBAT_ICEDAMAGE,
	shootEffect = CONST_ANI_SNOWBALL
}
}

monster.defenses = {
	defense = 52,
	armor = 51,
}

monster.elements = {
{
	type = COMBAT_DEATHDAMAGE,
	percent = -10
},
{
	type = COMBAT_PHYSICALDAMAGE,
	percent = -15
}
}

monster.immunities = {
{
	type = "fire",
	combat = true,
	condition = true
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
},
{
	type = "paralyze",
	condition = true
},
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
