local mType = Game.createMonsterType("Crypt Shambler")
local monster = {}
monster.description = "a crypt shambler"
monster.experience = 195
monster.outfit = {lookType = 100}

monster.health = 330
monster.maxHealth = monster.health
monster.race = "undead"
monster.corpse = 6029
monster.speed = 140

monster.changeTarget = {interval = 4 * 1000, chance = 10}

monster.flags = {
	summonable = false,
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

monster.voices = {
	interval = 5000,
	chance = 10,
	{text = "Aaaaahhhh!", yell = false},
	{text = "Hoooohhh!", yell = false},
	{text = "Uhhhhhhh!", yell = false},
	{text = "Chhhhhhh!", yell = false},
}

monster.loot = {
{
	id = "gold coin",
	chance = 58000,
	maxCount = 55
},
{
	id = "worm",
	chance = 9000,
	maxCount = 10
},
{
	id = "half-digested piece of meat",
	chance = 5000
},
{
	id = 2230,
	chance = 5000
},
{
	id = "iron helmet",
	chance = 2000
},
{
	id = "rotten meat",
	chance = 1950
},
{
	id = "two handed sword",
	chance = 1950
},
{
	id = "bone shield",
	chance = 1000
},
{
	id = "throwing star",
	chance = 1000,
	maxCount = 3
},
{
	id = "bone sword",
	chance = 1000
},
{
	id = "small diamond",
	chance = 500
}
}

monster.attacks = {
{
	name = "melee",
	interval = 2 * 1000,
	attack = 140,
	skill = 70,
	effect = CONST_ME_DRAWBLOOD
},
{
	name = "combat",
	interval = 2 * 1000,
	chance = 15,
	minDamage = -28,
	maxDamage = -55,
	range = 1,
	target = true,
	type = COMBAT_LIFEDRAIN
}
}

monster.defenses = {
	defense = 25,
	armor = 25,
}

monster.elements = {
{
	type = COMBAT_HOLYDAMAGE,
	percent = -25
}
}

monster.immunities = {
{
	type = "lifedrain",
	combat = true
},
{
	type = "paralyze",
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
	type = "drown",
	condition = true
}
}

mType:register(monster)
