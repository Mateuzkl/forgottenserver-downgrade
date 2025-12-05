local mType = Game.createMonsterType("Nomad")
local monster = {}
monster.description = "a nomad"
monster.experience = 60
monster.outfit = {lookType = 146}

monster.health = 160
monster.maxHealth = monster.health
monster.race = "blood"
monster.corpse = 20466
monster.speed = 205

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
	targetDistance = 1,
	staticAttackChance = 90,
	canwalkonenergy = false,
	canwalkonfire = false,
	canwalkonpoison = false
}

monster.voices = {
	interval = 5000,
	chance = 10,
	{text = "We are the true sons of the desert!", yell = false},
	{text = "I will leave your remains to the vultures!", yell = false},
	{text = "We are swift as the wind of the desert!", yell = false},
}

monster.loot = {
{
	id = "gold coin",
	chance = 56250,
	maxCount = 40
},
{
	id = "axe",
	chance = 2730
},
{
	id = "mace",
	chance = 2120
},
{
	id = "iron helmet",
	chance = 650
},
{
	id = "brass armor",
	chance = 2350
},
{
	id = "steel shield",
	chance = 920
},
{
	id = "nomad parchment",
	chance = 200
},
{
	id = "potato",
	chance = 4840,
	maxCount = 3
},
{
	id = "dirty turban",
	chance = 2160
},
{
	id = "rope belt",
	chance = 6420
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
	chance = 10,
	radius = 1,
	target = false,
	type = COMBAT_PHYSICALDAMAGE,
	effect = CONST_ME_WHITENOTE
}
}

monster.defenses = {
	defense = 15,
	armor = 15,
}

monster.elements = {
{
	type = COMBAT_FIREDAMAGE,
	percent = 20
},
{
	type = COMBAT_HOLYDAMAGE,
	percent = 20
},
{
	type = COMBAT_PHYSICALDAMAGE,
	percent = -10
},
{
	type = COMBAT_ICEDAMAGE,
	percent = -10
},
{
	type = COMBAT_DEATHDAMAGE,
	percent = -10
}
}

mType:register(monster)
