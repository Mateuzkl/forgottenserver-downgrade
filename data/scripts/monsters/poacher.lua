local mType = Game.createMonsterType("Poacher")
local monster = {}
monster.description = "a poacher"
monster.experience = 70
monster.outfit = {lookType = 129}

monster.health = 90
monster.maxHealth = monster.health
monster.race = "blood"
monster.corpse = 20487
monster.speed = 198

monster.flags = {
	summonable = false,
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
	{text = "You will not live to tell anyone!", yell = false},
	{text = "You are my game today!", yell = false},
	{text = "Look what has stepped into my trap!", yell = false},
}

monster.loot = {
{
	id = "arrow",
	chance = 47154,
	maxCount = 18
},
{
	id = "leather helmet",
	chance = 30758
},
{
	id = "leather legs",
	chance = 27912
},
{
	id = "bow",
	chance = 14901
},
{
	id = "roll",
	chance = 11049,
	maxCount = 2
},
{
	id = "torch",
	chance = 5082
},
{
	id = "poison arrow",
	chance = 2521,
	maxCount = 3
},
{
	id = "closed trap",
	chance = 1006
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
	chance = 15,
	minDamage = 0,
	maxDamage = -35,
	range = 7,
	type = COMBAT_PHYSICALDAMAGE,
	shootEffect = CONST_ANI_ARROW
}
}

monster.defenses = {
	defense = 10,
	armor = 10,
}

mType:register(monster)
