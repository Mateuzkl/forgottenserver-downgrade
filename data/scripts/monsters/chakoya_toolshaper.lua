local mType = Game.createMonsterType("Chakoya Toolshaper")
local monster = {}
monster.description = "a chakoya toolshaper"
monster.experience = 40
monster.outfit = {lookType = 259}

monster.health = 80
monster.maxHealth = monster.health
monster.race = "blood"
monster.corpse = 7320
monster.speed = 136

monster.flags = {
	summonable = false,
	attackable = true,
	hostile = true,
	illusionable = false,
	convinceable = false,
	pushable = false,
	canpushitems = true,
	staticAttackChance = 80,
	targetDistance = 1,
	canwalkonenergy = false,
	canwalkonfire = false,
	canwalkonpoison = false
}

monster.voices = {
	interval = 5000,
	chance = 10,
	{text = "Chikuva!!", yell = false},
	{text = "Jinuma jamjam!", yell = false},
	{text = "Suvituka siq chuqua!", yell = false},
	{text = "Kiyosa sipaju!", yell = false},
}

monster.loot = {
{
	id = "gold coin",
	chance = 78354,
	maxCount = 20
},
{
	id = "fish",
	chance = 25021,
	maxCount = 2
},
{
	id = "mace",
	chance = 5209
},
{
	id = "pick",
	chance = 1016
},
{
	id = "bone shield",
	chance = 874
},
{
	id = "ice cube",
	chance = 404
},
{
	id = "mammoth whopper",
	chance = 179
},
{
	id = "rainbow trout",
	chance = 122
},
{
	id = "green perch",
	chance = 75
},
{
	id = "northern pike",
	chance = 66
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
	chance = 10,
	minDamage = 0,
	maxDamage = -45,
	range = 7,
	radius = 3,
	target = true,
	type = COMBAT_PHYSICALDAMAGE,
	shootEffect = CONST_ANI_SMALLSTONE
}
}

monster.defenses = {
	defense = 7,
	armor = 7,
}

monster.elements = {
{
	type = COMBAT_ENERGYDAMAGE,
	percent = -15
},
{
	type = COMBAT_FIREDAMAGE,
	percent = 40
},
{
	type = COMBAT_HOLYDAMAGE,
	percent = 10
},
{
	type = COMBAT_DEATHDAMAGE,
	percent = -5
}
}

monster.immunities = {
{
	type = "ice",
	combat = true,
	condition = true
}
}

mType:register(monster)
