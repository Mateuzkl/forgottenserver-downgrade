local mType = Game.createMonsterType("Spirit of Fire")
local monster = {}
monster.description = "a spirit of fire"
monster.experience = 950
monster.outfit = {lookType = 242}

monster.health = 2210
monster.maxHealth = monster.health
monster.race = "blood"
monster.corpse = 7349
monster.speed = 220

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

monster.voices = {
	interval = 5000,
	chance = 6,
	{text = "Feel the heat.", yell = false},
}

monster.attacks = {
{
	name = "melee",
	interval = 2 * 1000,
	attack = 300,
	skill = 70,
	effect = CONST_ME_DRAWBLOOD
},
{
	name = "firefield",
	interval = 1 * 1000,
	chance = 15,
	range = 7,
	radius = 4,
	target = true,
	shootEffect = CONST_ANI_FIRE
},
{
	name = "combat",
	interval = 1 * 1000,
	chance = 20,
	minDamage = -650,
	maxDamage = -315,
	range = 7,
	type = COMBAT_FIREDAMAGE,
	shootEffect = CONST_ANI_FIRE
}
}

monster.defenses = {
	defense = 25,
	armor = 25,
}

monster.elements = {
{
	type = COMBAT_ENERGYDAMAGE,
	percent = 20
},
{
	type = COMBAT_ICEDAMAGE,
	percent = -10
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
