local mType = Game.createMonsterType("Cave Rat")
local monster = {}
monster.description = "a cave rat"
monster.experience = 10
monster.outfit = {lookType = 56}

monster.health = 30
monster.maxHealth = monster.health
monster.race = "blood"
monster.corpse = 5964
monster.speed = 150

monster.flags = {
	summonable = true,
	attackable = true,
	hostile = true,
	illusionable = true,
	convinceable = true,
	pushable = true,
	canpushitems = false,
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
	{text = "Meeeeep!", yell = false},
	{text = "Meep!", yell = false},
}

monster.loot = {
{
	id = "gold coin",
	chance = 85000,
	maxCount = 2
},
{
	id = 2696,
	chance = 30000
},
{
	id = "worm",
	chance = 10000,
	maxCount = 2
},
{
	id = "cookie",
	chance = 940
}
}

monster.attacks = {
{
	name = "melee",
	interval = 2 * 1000,
	attack = 10,
	skill = 70,
	effect = CONST_ME_DRAWBLOOD
}
}

monster.defenses = {
	defense = 1,
	armor = 1,
}

monster.elements = {
{
	type = COMBAT_FIREDAMAGE,
	percent = -10
}
}

mType:register(monster)
