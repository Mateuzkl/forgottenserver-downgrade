local mType = Game.createMonsterType("Green Djinn")
local monster = {}
monster.description = "a green djinn"
monster.experience = 215
monster.outfit = {lookType = 51}

monster.health = 330
monster.maxHealth = monster.health
monster.race = "blood"
monster.corpse = 6016
monster.speed = 220

monster.changeTarget = {interval = 4 * 1000, chance = 10}

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
	canwalkonfire = false,
	canwalkonpoison = false
}

monster.voices = {
	interval = 1000,
	chance = 5,
	{text = "Good wishes are for fairytales", yell = false},
	{text = "I wish you a merry trip to hell!", yell = false},
	{text = "Muhahahaha!", yell = false},
	{text = "I grant you a deathwish!", yell = false},
	{text = "Tell me your last wish!", yell = false},
}

monster.loot = {
{
	id = "gold coin",
	chance = 88234,
	maxCount = 115
},
{
	id = "cheese",
	chance = 24327
},
{
	id = "royal spear",
	chance = 5046,
	maxCount = 2
},
{
	id = "small emerald",
	chance = 2933,
	maxCount = 4
},
{
	id = "book (green)",
	chance = 2295
},
{
	id = "dirty turban",
	chance = 2121
},
{
	id = "green piece of cloth",
	chance = 2005
},
{
	id = "grave flower",
	chance = 953
},
{
	id = "small oil lamp",
	chance = 870
},
{
	id = "mana potion",
	chance = 481
},
{
	id = "mystic turban",
	chance = 116
}
}

monster.attacks = {
{
	name = "melee",
	interval = 2 * 1000,
	attack = 110,
	skill = 70,
	effect = CONST_ME_DRAWBLOOD
},
{
	name = "combat",
	interval = 2 * 1000,
	chance = 15,
	minDamage = -45,
	maxDamage = -80,
	range = 7,
	type = COMBAT_FIREDAMAGE,
	shootEffect = CONST_ANI_FIRE
},
{
	name = "combat",
	interval = 2 * 1000,
	chance = 10,
	minDamage = -50,
	maxDamage = -105,
	range = 7,
	radius = 1,
	target = true,
	type = COMBAT_DEATHDAMAGE,
	shootEffect = CONST_ANI_SUDDENDEATH,
	effect = CONST_ME_SMALLCLOUDS
},
{
	name = "drunk",
	interval = 2 * 1000,
	chance = 10,
	range = 7,
	duration = 5 * 1000,
	shootEffect = CONST_ANI_ENERGY
},
{
	name = "outfit",
	interval = 2 * 1000,
	chance = 1,
	range = 7,
	duration = 4 * 1000,
	effect = CONST_ME_MAGIC_BLUE
}
}

monster.defenses = {
	defense = 20,
	armor = 20,
}

monster.elements = {
{
	type = COMBAT_PHYSICALDAMAGE,
	percent = 20
},
{
	type = COMBAT_ENERGYDAMAGE,
	percent = 50
},
{
	type = COMBAT_FIREDAMAGE,
	percent = 80
},
{
	type = COMBAT_ICEDAMAGE,
	percent = -10
},
{
	type = COMBAT_HOLYDAMAGE,
	percent = -13
},
{
	type = COMBAT_DEATHDAMAGE,
	percent = 20
}
}

monster.immunities = {
{
	type = "paralyze",
	condition = true
},
{
	type = "invisible",
	condition = true
}
}

mType:register(monster)
