local mType = Game.createMonsterType("Spirit of Earth")
local monster = {}
monster.description = "a spirit of earth"
monster.experience = 800
monster.outfit = {lookType = 67}

monster.health = 1200
monster.maxHealth = monster.health
monster.race = "undead"
monster.corpse = 7349
monster.speed = 180

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
	canwalkonfire = false
}

monster.voices = {
	interval = 5000,
	chance = 5,
	{text = "Show your strengh ... or perish.", yell = false},
}

monster.attacks = {
{
	name = "melee",
	interval = 2 * 1000,
	attack = 180,
	skill = 70,
	effect = CONST_ME_DRAWBLOOD
}
}

monster.defenses = {
	defense = 32,
	armor = 30,
}

monster.elements = {
{
	type = COMBAT_ENERGYDAMAGE,
	percent = 50
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
