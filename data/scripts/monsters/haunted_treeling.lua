local mType = Game.createMonsterType("Haunted Treeling")
local monster = {}
monster.description = "a haunted treeling"
monster.experience = 310
monster.outfit = {lookType = 310}

monster.health = 450
monster.maxHealth = monster.health
monster.race = "undead"
monster.corpse = 9867
monster.speed = 230

monster.changeTarget = {interval = 4 * 1000, chance = 10}

monster.flags = {
	summonable = false,
	attackable = true,
	hostile = true,
	illusionable = false,
	convinceable = false,
	pushable = false,
	canpushitems = true,
	canpushcreatures = true,
	targetDistance = 1,
	staticAttackChance = 85,
	canwalkonenergy = false,
	canwalkonfire = false
}

monster.voices = {
	interval = 5000,
	chance = 10,
	{text = "Knarrrz", yell = false},
	{text = "Huuhuuhuuuhuuaarrr", yell = false},
	{text = "Knorrrrrr", yell = false},
}

monster.loot = {
{
	id = "gold coin",
	chance = 92016,
	maxCount = 95
},
{
	id = "wooden trash",
	chance = 29201
},
{
	id = "red mushroom",
	chance = 7814
},
{
	id = "health potion",
	chance = 5051
},
{
	id = "white mushroom",
	chance = 5033,
	maxCount = 2
},
{
	id = "haunted piece of wood",
	chance = 4983
},
{
	id = "orange mushroom",
	chance = 1817
},
{
	id = "strong health potion",
	chance = 1081
},
{
	id = "dwarven ring",
	chance = 655
},
{
	id = "small emerald",
	chance = 646
},
{
	id = "bullseye potion",
	chance = 103
}
}

monster.attacks = {
{
	name = "melee",
	interval = 2 * 1000,
	attack = 150,
	skill = 70,
	effect = CONST_ME_DRAWBLOOD
},
{
	name = "combat",
	interval = 2 * 1000,
	chance = 5,
	minDamage = -30,
	maxDamage = -100,
	radius = 4,
	target = false,
	type = COMBAT_MANADRAIN,
	effect = CONST_ME_GREENBUBBLE
},
{
	name = "speed",
	interval = 2 * 1000,
	chance = 15,
	length = 5,
	spread = 0,
	speed = -700,
	duration = 15 * 1000,
	effect = CONST_ME_SMALLPLANTS
},
{
	name = "combat",
	interval = 2 * 1000,
	chance = 15,
	minDamage = 0,
	maxDamage = -100,
	range = 7,
	radius = 1,
	target = true,
	type = COMBAT_PHYSICALDAMAGE,
	shootEffect = CONST_ANI_SMALLEARTH,
	effect = CONST_ME_CARNIPHILA
},
{
	name = "combat",
	interval = 2 * 1000,
	chance = 10,
	minDamage = -55,
	maxDamage = -100,
	radius = 4,
	target = true,
	type = COMBAT_EARTHDAMAGE,
	effect = CONST_ME_GREENSPARK
},
{
	name = "combat",
	interval = 2 * 1000,
	chance = 10,
	radius = 1,
	target = false,
	type = COMBAT_EARTHDAMAGE,
	effect = CONST_ME_POISON
}
}

monster.defenses = {
	defense = 20,
	armor = 20,
}

monster.elements = {
{
	type = COMBAT_FIREDAMAGE,
	percent = -5
},
{
	type = COMBAT_ICEDAMAGE,
	percent = 10
},
{
	type = COMBAT_HOLYDAMAGE,
	percent = 20
},
{
	type = COMBAT_DEATHDAMAGE,
	percent = 10
}
}

monster.immunities = {
{
	type = "earth",
	combat = true,
	condition = true
},
{
	type = "invisible",
	condition = true
}
}

mType:register(monster)
