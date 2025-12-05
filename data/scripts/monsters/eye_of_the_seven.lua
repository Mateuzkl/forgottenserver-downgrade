local mType = Game.createMonsterType("Eye of the Seven")
local monster = {}
monster.description = "an eye of the seven"
monster.experience = 0
monster.outfit = {lookType = 109}

monster.health = 1
monster.maxHealth = monster.health
monster.race = "venom"
monster.corpse = 6036
monster.speed = 0

monster.changeTarget = {interval = 5 * 1000, chance = 20}

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
	canwalkonenergy = false,
	canwalkonfire = false,
	canwalkonpoison = false
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
	interval = 1 * 1000,
	chance = 9,
	minDamage = 0,
	maxDamage = -500,
	range = 6,
	type = COMBAT_LIFEDRAIN
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
}
}

mType:register(monster)
