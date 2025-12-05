local mType = Game.createMonsterType("Grimgor Guteater")
local monster = {}
monster.description = "Grimgor Guteater"
monster.experience = 670
monster.outfit = {lookType = 2}

monster.health = 1115
monster.maxHealth = monster.health
monster.race = "blood"
monster.corpse = 7349
monster.speed = 240

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
	interval = 2000,
	chance = 5,
	{text = "Dont run, You're burning off precious fat.", yell = false},
}

monster.attacks = {
{
	name = "melee",
	interval = 2 * 1000,
	attack = 230,
	skill = 70,
	effect = CONST_ME_DRAWBLOOD
},
{
	name = "combat",
	interval = 4 * 1000,
	chance = 60,
	minDamage = -55,
	maxDamage = -130,
	type = COMBAT_PHYSICALDAMAGE,
	shootEffect = CONST_ANI_THROWINGSTAR
}
}

monster.defenses = {
	defense = 45,
	armor = 45,
}

monster.elements = {
{
	type = COMBAT_ENERGYDAMAGE,
	percent = 20
},
{
	type = COMBAT_DEATHDAMAGE,
	percent = -10
},
{
	type = COMBAT_EARTHDAMAGE,
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
