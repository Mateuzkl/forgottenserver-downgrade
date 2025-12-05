local mType = Game.createMonsterType("Bandit")
local monster = {}
monster.description = "a bandit"
monster.experience = 65
monster.outfit = {lookType = 129}

monster.health = 245
monster.maxHealth = monster.health
monster.race = "blood"
monster.corpse = 20331
monster.speed = 180

monster.changeTarget = {interval = 5 * 1000, chance = 10}

monster.flags = {
	summonable = true,
	attackable = true,
	hostile = true,
	illusionable = true,
	convinceable = true,
	pushable = true,
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
	{text = "Your money or your life!", yell = false},
	{text = "Hand me your purse!", yell = false},
}

monster.loot = {
{
	id = "gold coin",
	chance = 48956,
	maxCount = 30
},
{
	id = "axe",
	chance = 29905
},
{
	id = "brass shield",
	chance = 16794
},
{
	id = "leather legs",
	chance = 14967
},
{
	id = "mace",
	chance = 10342
},
{
	id = "tomato",
	chance = 7692,
	maxCount = 2
},
{
	id = "chain helmet",
	chance = 4956
},
{
	id = "brass armor",
	chance = 2376
},
{
	id = "iron helmet",
	chance = 544
}
}

monster.attacks = {
{
	name = "melee",
	interval = 2 * 1000,
	attack = 45,
	skill = 70,
	effect = CONST_ME_DRAWBLOOD
}
}

monster.defenses = {
	defense = 11,
	armor = 11,
}

monster.elements = {
{
	type = COMBAT_PHYSICALDAMAGE,
	percent = -10
},
{
	type = COMBAT_DEATHDAMAGE,
	percent = -5
}
}

mType:register(monster)
