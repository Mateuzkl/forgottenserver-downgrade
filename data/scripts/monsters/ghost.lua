local mType = Game.createMonsterType("Ghost")
local monster = {}
monster.description = "a ghost"
monster.experience = 120
monster.outfit = {lookType = 48}

monster.health = 150
monster.maxHealth = monster.health
monster.race = "undead"
monster.corpse = 5993
monster.speed = 160

monster.flags = {
	summonable = false,
	attackable = true,
	hostile = true,
	illusionable = false,
	convinceable = false,
	pushable = false,
	canpushitems = true,
	canpushcreatures = false,
	targetDistance = 1,
	staticAttackChance = 90,
	canwalkonenergy = false,
	canwalkonfire = false
}

monster.voices = {
	interval = 5000,
	chance = 10,
	{text = "Huh!", yell = false},
	{text = "Shhhhhh", yell = false},
	{text = "Buuuuuh", yell = false},
}

monster.loot = {
{
	id = 1962,
	chance = 1310
},
{
	id = "stealth ring",
	chance = 180
},
{
	id = "morning star",
	chance = 10610
},
{
	id = "combat knife",
	chance = 7002
},
{
	id = "ancient shield",
	chance = 860
},
{
	id = "cape",
	chance = 8800
},
{
	id = "shadow herb",
	chance = 14400
},
{
	id = "white piece of cloth",
	chance = 1940
},
{
	id = "ghostly tissue",
	chance = 1870
}
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
	interval = 2 * 1000,
	chance = 15,
	minDamage = -20,
	maxDamage = -45,
	range = 1,
	type = COMBAT_LIFEDRAIN,
	effect = CONST_ME_MAGIC_RED
}
}

monster.immunities = {
{
	type = "physical",
	combat = true,
	condition = true
},
{
	type = "drown",
	condition = true
},
{
	type = "earth",
	combat = true,
	condition = true
},
{
	type = "death",
	combat = true,
	condition = true
},
{
	type = "lifedrain",
	combat = true
},
{
	type = "paralyze",
	condition = true
}
}

mType:register(monster)
