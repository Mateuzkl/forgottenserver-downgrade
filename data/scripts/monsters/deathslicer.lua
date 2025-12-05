local mType = Game.createMonsterType("Deathslicer")
local monster = {}
monster.description = "a deathslicer"
monster.experience = 0
monster.outfit = {lookType = 102}

monster.health = 1
monster.maxHealth = monster.health
monster.race = "undead"
monster.corpse = 2253
monster.speed = 200

monster.changeTarget = {interval = 5 * 1000, chance = 8}

monster.flags = {
	summonable = false,
	attackable = true,
	hostile = true,
	illusionable = false,
	convinceable = false,
	pushable = true,
	canpushitems = true,
	canpushcreatures = true,
	targetDistance = 1,
	staticAttackChance = 90
}

monster.attacks = {
{
	name = "melee",
	interval = 2 * 1000,
	attack = 500,
	skill = 70,
	effect = CONST_ME_DRAWBLOOD
},
{
	name = "combat",
	interval = 2 * 1000,
	chance = 25,
	minDamage = -200,
	maxDamage = -400,
	radius = 2,
	target = false,
	type = COMBAT_ENERGYDAMAGE,
	effect = CONST_ME_YELLOWSPARK
},
{
	name = "combat",
	interval = 2 * 1000,
	chance = 10,
	minDamage = -100,
	maxDamage = -200,
	length = 5,
	spread = 0,
	type = COMBAT_ENERGYDAMAGE,
	effect = CONST_ME_MAGIC_RED
}
}

monster.defenses = {
	defense = 199,
	armor = 199,
}

monster.immunities = {
{
	type = "physical",
	combat = true,
	condition = true
},
{
	type = "energy",
	combat = true,
	condition = true
},
{
	type = "fire",
	combat = true,
	condition = true
},
{
	type = "earth",
	combat = true,
	condition = true
},
{
	type = "drown",
	condition = true
},
{
	type = "ice",
	combat = true,
	condition = true
},
{
	type = "holy",
	combat = true,
	condition = true
},
{
	type = "death",
	combat = true,
	condition = true
},
{
	type = "lifedrain",
	combat = true
},
{
	type = "manadrain",
	combat = true
},
{
	type = "paralyze",
	condition = true
},
{
	type = "drunk",
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
