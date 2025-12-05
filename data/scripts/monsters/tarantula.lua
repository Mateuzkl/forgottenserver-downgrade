local mType = Game.createMonsterType("Tarantula")
local monster = {}
monster.description = "a tarantula"
monster.experience = 120
monster.outfit = {lookType = 219}

monster.health = 225
monster.maxHealth = monster.health
monster.race = "venom"
monster.corpse = 6060
monster.speed = 214

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
	canwalkonfire = false
}

monster.loot = {
{
	id = "gold coin",
	chance = 79114,
	maxCount = 40
},
{
	id = "tarantula egg",
	chance = 9960
},
{
	id = "spider fangs",
	chance = 4844
},
{
	id = "brass legs",
	chance = 3021
},
{
	id = "plate shield",
	chance = 1966
},
{
	id = "steel helmet",
	chance = 925
},
{
	id = "time ring",
	chance = 112
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
	chance = 10,
	range = 1,
	radius = 1,
	target = true,
	type = COMBAT_EARTHDAMAGE,
	shootEffect = CONST_ANI_POISON,
	effect = CONST_ME_CARNIPHILA
}
}

monster.defenses = {
	defense = 20,
	armor = 20,
	{
			name = "speed",
			interval = 2 * 1000,
			chance = 15,
			speed = 220,
			duration = 5 * 1000,
			effect = CONST_ME_MAGIC_RED
		},
}

monster.elements = {
{
	type = COMBAT_ENERGYDAMAGE,
	percent = 10
},
{
	type = COMBAT_FIREDAMAGE,
	percent = -15
},
{
	type = COMBAT_ICEDAMAGE,
	percent = -10
}
}

monster.immunities = {
{
	type = "earth",
	combat = true,
	condition = true
},
{
	type = "outfit",
	condition = true
},
{
	type = "drunk",
	condition = true
}
}

mType:register(monster)
