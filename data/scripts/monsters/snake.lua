local mType = Game.createMonsterType("Snake")
local monster = {}
monster.description = "a snake"
monster.experience = 10
monster.outfit = {lookType = 28}

monster.health = 15
monster.maxHealth = monster.health
monster.race = "blood"
monster.corpse = 2817
monster.speed = 120

monster.flags = {
	summonable = true,
	attackable = true,
	hostile = true,
	illusionable = true,
	convinceable = false,
	pushable = true,
	canpushitems = false,
	canpushcreatures = false,
	targetDistance = 1,
	staticAttackChance = 90,
	canwalkonenergy = false,
	canwalkonfire = false
}

monster.voices = {
	interval = 5000,
	chance = 10,
	{text = "Zzzzzzt", yell = false},
}

monster.attacks = {
{
	name = "melee",
	interval = 2 * 1000,
	attack = 8,
	skill = 70,
	effect = CONST_ME_DRAWBLOOD
}
}

monster.defenses = {
	defense = 0,
	armor = 0,
}

monster.elements = {
{
	type = COMBAT_EARTHDAMAGE,
	percent = 40
},
{
	type = COMBAT_ENERGYDAMAGE,
	percent = 20
},
{
	type = COMBAT_FIREDAMAGE,
	percent = -10
},
{
	type = COMBAT_ICEDAMAGE,
	percent = -10
}
}

mType:register(monster)
