local mType = Game.createMonsterType("Shredderthrower")
local monster = {}
monster.description = "a shredderthrower"
monster.experience = 0
monster.outfit = {lookType = 0}

monster.health = 1
monster.maxHealth = monster.health
monster.race = "undead"
monster.corpse = 0
monster.speed = 0

monster.changeTarget = {interval = 4 * 1000, chance = 10}

monster.flags = {
	summonable = false,
	attackable = false,
	hostile = true,
	illusionable = false,
	convinceable = false,
	pushable = false,
	canpushitems = false,
	canpushcreatures = true,
	targetDistance = 1,
	staticAttackChance = 90,
	hidehealth = true,
	canwalkonenergy = false,
	canwalkonfire = false,
	canwalkonpoison = false
}

monster.attacks = {
{
	name = "combat",
	interval = 2 * 1000,
	chance = 100,
	minDamage = 0,
	maxDamage = -110,
	range = 7,
	type = COMBAT_PHYSICALDAMAGE,
	shootEffect = CONST_ANI_THROWINGSTAR
}
}

monster.defenses = {
	defense = 1,
	armor = 1,
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
