local mType = Game.createMonsterType("Cursed Gladiator")
local monster = {}
monster.description = "a cursed gladiator"
monster.experience = 215
monster.outfit = {lookType = 100}

monster.health = 435
monster.maxHealth = monster.health
monster.race = "undead"
monster.corpse = 7349
monster.speed = 170

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
	canwalkonfire = false,
	canwalkonpoison = false
}

monster.voices = {
	interval = 2000,
	chance = 5,
	{text = "Death where are you?", yell = false},
	{text = "Slay me, end my curse.", yell = false},
}

monster.attacks = {
{
	name = "melee",
	interval = 2 * 1000,
	attack = 150,
	skill = 70,
	effect = CONST_ME_DRAWBLOOD
},
{
	name = "combat",
	interval = 4 * 1000,
	chance = 50,
	minDamage = 0,
	maxDamage = 50,
	range = 5,
	radius = 1,
	target = true,
	type = COMBAT_LIFEDRAIN,
	effect = CONST_ME_MAGIC_RED
}
}

monster.defenses = {
	defense = 26,
	armor = 25,
}

monster.elements = {
{
	type = COMBAT_EARTHDAMAGE,
	percent = 20
},
{
	type = COMBAT_FIREDAMAGE,
	percent = -5
}
}

monster.immunities = {
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
