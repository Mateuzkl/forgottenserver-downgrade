local mType = Game.createMonsterType("Barbarian Headsplitter")
local monster = {}
monster.description = "a barbarian headsplitter"
monster.experience = 85
monster.outfit = {lookType = 253}

monster.health = 100
monster.maxHealth = monster.health
monster.race = "blood"
monster.corpse = 20343
monster.speed = 168

monster.flags = {
	summonable = false,
	attackable = true,
	hostile = true,
	illusionable = false,
	convinceable = true,
	pushable = false,
	canpushitems = true,
	staticAttackChance = 70,
	targetDistance = 1,
	canwalkonenergy = false,
	canwalkonfire = false,
	canwalkonpoison = false
}

monster.voices = {
	interval = 5000,
	chance = 10,
	{text = "I will regain my honor with your blood!", yell = false},
	{text = "Surrender is not option!", yell = false},
	{text = "Its you or me!", yell = false},
	{text = "Die! Die! Die!", yell = false},
}

monster.loot = {
{
	id = "gold coin",
	chance = 75228,
	maxCount = 30
},
{
	id = "torch",
	chance = 59812
},
{
	id = "brass helmet",
	chance = 20170
},
{
	id = "knife",
	chance = 14928
},
{
	id = "viking helmet",
	chance = 4960
},
{
	id = "scale armor",
	chance = 4046
},
{
	id = "skull",
	chance = 3194
},
{
	id = "brown piece of cloth",
	chance = 968
},
{
	id = "health potion",
	chance = 531
},
{
	id = "life ring",
	chance = 228
},
{
	id = "krimhorn helmet",
	chance = 112
},
{
	id = "fur boots",
	chance = 87
}
}

monster.attacks = {
{
	name = "melee",
	interval = 2 * 1000,
	attack = 50,
	skill = 70,
	effect = CONST_ME_DRAWBLOOD
},
{
	name = "combat",
	interval = 2 * 1000,
	chance = 15,
	minDamage = 0,
	maxDamage = -60,
	range = 7,
	radius = 1,
	target = true,
	type = COMBAT_PHYSICALDAMAGE,
	shootEffect = CONST_ANI_WHIRLWINDAXE
}
}

monster.defenses = {
	defense = 7,
	armor = 7,
}

monster.elements = {
{
	type = COMBAT_ENERGYDAMAGE,
	percent = 20
},
{
	type = COMBAT_EARTHDAMAGE,
	percent = -10
},
{
	type = COMBAT_ICEDAMAGE,
	percent = 50
},
{
	type = COMBAT_HOLYDAMAGE,
	percent = 20
},
{
	type = COMBAT_DEATHDAMAGE,
	percent = -10
}
}

monster.immunities = {
{
	type = "paralyze",
	condition = true
},
{
	type = "drunk",
	condition = true
}
}

mType:register(monster)
