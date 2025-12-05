local mType = Game.createMonsterType("Mutated Human")
local monster = {}
monster.description = "a mutated human"
monster.experience = 150
monster.outfit = {lookType = 323}

monster.health = 240
monster.maxHealth = monster.health
monster.race = "blood"
monster.corpse = 9107
monster.speed = 154

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
	staticAttackChance = 90,
	canwalkonenergy = false,
	canwalkonfire = false
}

monster.voices = {
	interval = 5000,
	chance = 10,
	{text = "Take that creature off my back!! I can fell it!", yell = false},
	{text = "HEEEEEEEELP!", yell = false},
	{text = "You will be the next infected one... GRAAAAAAAAARRR!", yell = false},
	{text = "Science... is a curse.", yell = false},
	{text = "Run as fast as you can.", yell = false},
	{text = "Oh by the gods! What is this... aaaaaargh!", yell = false},
}

monster.loot = {
{
	id = "gold coin",
	chance = 88222,
	maxCount = 130
},
{
	id = "mutated flesh",
	chance = 19936
},
{
	id = "fishbone",
	chance = 10064
},
{
	id = "cheese",
	chance = 8076
},
{
	id = "scale armor",
	chance = 7833
},
{
	id = "worm",
	chance = 7081,
	maxCount = 2
},
{
	id = "sword",
	chance = 5069
},
{
	id = "strange talisman",
	chance = 4946
},
{
	id = "heavily rusted armor",
	chance = 2007
},
{
	id = "peanut",
	chance = 534
},
{
	id = "fern",
	chance = 421
},
{
	id = "silver amulet",
	chance = 102
}
}

monster.attacks = {
{
	name = "melee",
	interval = 2 * 1000,
	attack = 90,
	skill = 70,
	effect = CONST_ME_DRAWBLOOD
},
{
	name = "combat",
	interval = 2 * 1000,
	chance = 15,
	minDamage = -50,
	maxDamage = -60,
	target = false,
	length = 3,
	spread = 1,
	type = COMBAT_DEATHDAMAGE,
	effect = CONST_ME_POISON
},
{
	name = "combat",
	type = COMBAT_EARTHDAMAGE,
	conditionType = CONDITION_POISON,
	conditionMinDamage = -190,
	conditionMaxDamage = -280,
	conditionTickInterval = 2000,
	interval = 2 * 1000,
	chance = 20,
	target = true,
	length = 1,
	spread = 0,
	effect = CONST_ME_GREENSPARK
},
{
	name = "speed",
	interval = 2 * 1000,
	chance = 10,
	range = 7,
	target = true,
	speed = -600,
	duration = 30 * 1000,
	effect = CONST_ME_STUN
}
}

monster.defenses = {
	defense = 15,
	armor = 15,
	{
			name = "speed",
			interval = 2 * 1000,
			chance = 15,
			speed = 220,
			duration = 5 * 1000,
			effect = CONST_ME_GREENBUBBLE
		},
}

monster.elements = {
{
	type = COMBAT_ICEDAMAGE,
	percent = 20
},
{
	type = COMBAT_HOLYDAMAGE,
	percent = -25
}
}

monster.immunities = {
{
	type = "death",
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
	type = "lifedrain",
	combat = true
},
{
	type = "drunk",
	condition = true
},
{
	type = "drown",
	condition = true
},
{
	type = "invisible",
	condition = true
}
}

mType:register(monster)
