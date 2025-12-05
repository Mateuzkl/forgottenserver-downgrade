local mType = Game.createMonsterType("Fire Overlord")
local monster = {}
monster.description = "a Fire Overlord"
monster.experience = 2800
monster.outfit = {lookType = 243}

monster.health = 4000
monster.maxHealth = monster.health
monster.race = "fire"
monster.corpse = 8964
monster.speed = 300

monster.changeTarget = {interval = 5 * 1000, chance = 8}

monster.flags = {
	summonable = false,
	attackable = true,
	hostile = true,
	illusionable = true,
	convinceable = false,
	pushable = false,
	canpushitems = true,
	canpushcreatures = true,
	targetDistance = 1,
	staticAttackChance = 90
}

monster.loot = {
{
	id = "gold coin",
	chance = 50000,
	maxCount = 75
},
{
	id = "platinum coin",
	chance = 50000,
	maxCount = 3
},
{
	id = "magma coat",
	chance = 819
},
{
	id = "eternal flames",
	chance = 100000
},
{
	id = "fiery heart",
	chance = 100000
}
}

monster.attacks = {
{
	name = "melee",
	interval = 2 * 1000,
	attack = 450,
	skill = 70,
	effect = CONST_ME_DRAWBLOOD
},
{
	name = "firefield",
	interval = 2 * 1000,
	chance = 15,
	range = 7,
	radius = 4,
	target = true,
	shootEffect = CONST_ANI_FIRE
},
{
	name = "combat",
	interval = 1 * 1000,
	chance = 15,
	minDamage = -300,
	maxDamage = -900,
	length = 1,
	type = COMBAT_FIREDAMAGE,
	effect = CONST_ME_FIREATTACK
},
{
	name = "combat",
	interval = 1 * 1000,
	chance = 13,
	minDamage = -200,
	maxDamage = -350,
	radius = 4,
	target = true,
	type = COMBAT_FIREDAMAGE,
	effect = CONST_ME_FIREAREA
}
}

monster.defenses = {
	defense = 25,
	armor = 25,
}

monster.elements = {
{
	type = COMBAT_PHYSICALDAMAGE,
	percent = 1
},
{
	type = COMBAT_DEATHDAMAGE,
	percent = 20
},
{
	type = COMBAT_ENERGYDAMAGE,
	percent = 20
},
{
	type = COMBAT_EARTHDAMAGE,
	percent = 80
},
{
	type = COMBAT_ICEDAMAGE,
	percent = -25
}
}

monster.immunities = {
{
	type = "fire",
	combat = true,
	condition = true
}
}

mType:register(monster)
