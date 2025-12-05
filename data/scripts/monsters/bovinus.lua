local mType = Game.createMonsterType("Bovinus")
local monster = {}
monster.description = "Bovinus"
monster.experience = 60
monster.outfit = {lookType = 25}

monster.health = 150
monster.maxHealth = monster.health
monster.race = "blood"
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

monster.attacks = {
{
	name = "melee",
	interval = 2 * 1000,
	attack = 50,
	skill = 70,
	effect = CONST_ME_DRAWBLOOD
}
}

monster.defenses = {
	defense = 11,
	armor = 9,
}

monster.elements = {
{
	type = COMBAT_FIREDAMAGE,
	percent = 20
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
