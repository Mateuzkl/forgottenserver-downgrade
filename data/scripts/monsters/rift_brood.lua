local mType = Game.createMonsterType("Rift Brood")
local monster = {}
monster.description = "a rift brood"
monster.experience = 1600
monster.outfit = {lookType = 290}

monster.health = 2950
monster.maxHealth = monster.health
monster.race = "energy"
monster.corpse = 1495
monster.speed = 300

monster.changeTarget = {interval = 20 * 1000, chance = 15}

monster.flags = {
	summonable = false,
	attackable = true,
	hostile = true,
	illusionable = false,
	convinceable = false,
	pushable = false,
	canpushitems = true,
	staticAttackChance = 85,
	targetDistance = 1
}

monster.attacks = {
{
	name = "melee",
	interval = 2 * 1000,
	attack = 255,
	skill = 70,
	effect = CONST_ME_DRAWBLOOD
},
{
	name = "combat",
	interval = 2 * 1000,
	chance = 50,
	minDamage = -100,
	maxDamage = -180,
	range = 1,
	target = true,
	type = COMBAT_MANADRAIN
},
{
	name = "combat",
	interval = 1 * 1000,
	chance = 90,
	minDamage = -200,
	maxDamage = -400,
	range = 3,
	radius = 2,
	target = true,
	type = COMBAT_ENERGYDAMAGE,
	effect = CONST_ME_PURPLEENERGY
}
}

monster.defenses = {
	defense = 30,
	armor = 30,
	{
			name = "combat",
			interval = 2 * 1000,
			chance = 15,
			type = COMBAT_HEALING,
			minDamage = 70,
			maxDamage = 100,
			effect = CONST_ME_MAGIC_BLUE
		},
}

monster.elements = {
{
	type = COMBAT_PHYSICALDAMAGE,
	percent = 30
},
{
	type = COMBAT_HOLYDAMAGE,
	percent = 15
},
{
	type = COMBAT_DEATHDAMAGE,
	percent = -20
}
}

monster.immunities = {
{
	type = "ice",
	combat = true,
	condition = true
},
{
	type = "fire",
	combat = true,
	condition = true
},
{
	type = "invisible",
	condition = true
}
}

mType:register(monster)
