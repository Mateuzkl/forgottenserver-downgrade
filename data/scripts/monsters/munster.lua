local mType = Game.createMonsterType("Munster")
local monster = {}
monster.description = "Munster"
monster.experience = 35
monster.outfit = {lookType = 56}

monster.health = 58
monster.maxHealth = monster.health
monster.race = "blood"
monster.corpse = 2813
monster.speed = 200
monster.maxSummons = 2

monster.flags = {
	summonable = true,
	attackable = true,
	hostile = true,
	illusionable = true,
	convinceable = true,
	pushable = true,
	canpushitems = false,
	staticAttackChance = 80,
	targetDistance = 1,
	isboss = true
}

monster.summons = {
{
	name = "Rat",
	chance = 20,
	interval = 2 * 1000
}
}

monster.voices = {
	interval = 2000,
	chance = 5,
	{text = "Meeeeep!", yell = false},
}

monster.loot = {
{
	id = "gold coin",
	chance = 100000,
	maxCount = 16
},
{
	id = "bone club",
	chance = 5000
},
{
	id = "jacket",
	chance = 50000
},
{
	id = "cookie",
	chance = 5000
},
{
	id = 2696,
	chance = 50000
}
}

monster.attacks = {
{
	name = "melee",
	interval = 2 * 1000,
	attack = 15,
	skill = 70,
	effect = CONST_ME_DRAWBLOOD
}
}

monster.defenses = {
	defense = 4,
	armor = 2,
}

mType:register(monster)
