local mType = Game.createMonsterType("Orcus the Cruel")
local monster = {}
monster.description = "Orcus the cruel"
monster.experience = 280
monster.outfit = {lookType = 59}

monster.health = 480
monster.maxHealth = monster.health
monster.race = "blood"
monster.corpse = 7349
monster.speed = 230

monster.flags = {
	summonable = false,
	attackable = true,
	hostile = true,
	illusionable = false,
	convinceable = false,
	pushable = false,
	canpushitems = true,
	targetDistance = 1,
	canwalkonenergy = false,
	canwalkonpoison = false
}

monster.attacks = {
{
	name = "melee",
	interval = 2 * 1000,
	attack = 180,
	skill = 70,
	effect = CONST_ME_DRAWBLOOD
},
{
	name = "combat",
	interval = 2 * 1000,
	chance = 40,
	minDamage = 0,
	maxDamage = -70,
	range = 5,
	radius = 1,
	target = true,
	type = COMBAT_PHYSICALDAMAGE,
	shootEffect = CONST_ANI_THROWINGKNIFE
}
}

monster.defenses = {
	defense = 40,
	armor = 39,
}

monster.elements = {
{
	type = COMBAT_ENERGYDAMAGE,
	percent = 20
},
{
	type = COMBAT_EARTHDAMAGE,
	percent = -20
}
}

monster.immunities = {
{
	type = "fire",
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
},
{
	type = "invisible",
	condition = true
}
}

mType:register(monster)
