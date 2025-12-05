local mType = Game.createMonsterType("Dire Penguin")
local monster = {}
monster.description = "a dire penguin"
monster.experience = 119
monster.outfit = {lookType = 250}

monster.health = 173
monster.maxHealth = monster.health
monster.race = "blood"
monster.corpse = 7334
monster.speed = 200

monster.flags = {
	summonable = false,
	attackable = true,
	hostile = true,
	illusionable = true,
	convinceable = false,
	pushable = false,
	canpushitems = false,
	canpushcreatures = false,
	targetDistance = 1,
	canwalkonenergy = false,
	canwalkonfire = false,
	canwalkonpoison = false
}

monster.loot = {
{
	id = "gold coin",
	chance = 18000,
	maxCount = 10
},
{
	id = "dragon hammer",
	chance = 200
},
{
	id = 2667,
	chance = 8000,
	maxCount = 4
},
{
	id = "rainbow trout",
	chance = 8000
},
{
	id = "green perch",
	chance = 7000
}
}

monster.attacks = {
{
	name = "melee",
	interval = 2 * 1000,
	attack = 80,
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
	radius = 1,
	target = true,
	type = COMBAT_PHYSICALDAMAGE,
	shootEffect = CONST_ANI_SMALLSTONE,
	effect = CONST_ME_EXPLOSIONAREA
},
{
	name = "speed",
	interval = 2 * 1000,
	chance = 10,
	range = 7,
	radius = 4,
	target = false,
	speed = -600,
	duration = 9 * 1000,
	effect = CONST_ME_POFF
}
}

monster.defenses = {
	defense = 10,
	armor = 10,
	{
			name = "speed",
			interval = 2 * 1000,
			chance = 15,
			speed = 310,
			duration = 3 * 1000,
			effect = CONST_ME_MAGIC_RED
		},
}

monster.immunities = {
{
	type = "lifedrain",
	combat = true
},
{
	type = "paralyze",
	condition = true
},
{
	type = "outfit",
	condition = true
},
{
	type = "invisible",
	condition = true
}
}

mType:register(monster)
