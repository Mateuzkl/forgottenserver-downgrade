local mType = Game.createMonsterType("Stone Golem")
local monster = {}
monster.description = "a stone golem"
monster.experience = 160
monster.outfit = {lookType = 67}

monster.health = 270
monster.maxHealth = monster.health
monster.race = "undead"
monster.corpse = 6005
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
	canpushcreatures = true,
	targetDistance = 1,
	staticAttackChance = 90,
	canwalkonenergy = false,
	canwalkonfire = false
}

monster.loot = {
{
	id = "gold coin",
	chance = 95794,
	maxCount = 40
},
{
	id = "small stone",
	chance = 12849,
	maxCount = 4
},
{
	id = "sulphurous stone",
	chance = 10115
},
{
	id = "power ring",
	chance = 5137
},
{
	id = "carlin sword",
	chance = 2572
},
{
	id = "iron ore",
	chance = 2054
},
{
	id = "ancient stone",
	chance = 1017
},
{
	id = "shiny stone",
	chance = 782
},
{
	id = "piece of marble rock",
	chance = 416
},
{
	id = "crystal ring",
	chance = 181
},
{
	id = "red gem",
	chance = 48
}
}

monster.attacks = {
{
	name = "melee",
	interval = 2 * 1000,
	attack = 110,
	skill = 70,
	effect = CONST_ME_DRAWBLOOD
}
}

monster.defenses = {
	defense = 30,
	armor = 30,
}

monster.elements = {
{
	type = COMBAT_PHYSICALDAMAGE,
	percent = 10
},
{
	type = COMBAT_FIREDAMAGE,
	percent = 20
},
{
	type = COMBAT_ENERGYDAMAGE,
	percent = 15
},
{
	type = COMBAT_DEATHDAMAGE,
	percent = 20
},
{
	type = COMBAT_ICEDAMAGE,
	percent = -10
}
}

monster.immunities = {
{
	type = "paralyze",
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
}
}

mType:register(monster)
