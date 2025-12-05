local mType = Game.createMonsterType("Avalanche")
local monster = {}
monster.description = "Avalanche"
monster.experience = 305
monster.outfit = {lookType = 261}

monster.health = 550
monster.maxHealth = monster.health
monster.race = "undead"
monster.corpse = 7349
monster.speed = 195

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
	{text = "You will pay for imprisoning me here.", yell = false},
	{text = "Puny warmblood.", yell = false},
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
	name = "drown",
	interval = 1 * 1000,
	chance = 100,
	minDamage = -10,
	maxDamage = -50,
	length = 5,
	spread = 6,
	effect = CONST_ME_ENERGYAREA
},
{
	name = "speed",
	interval = 4 * 1000,
	chance = 100,
	radius = 3,
	speed = -400,
	duration = 10 * 1000,
	effect = CONST_ME_POFF
},
{
	name = "combat",
	interval = 6 * 1000,
	chance = 100,
	minDamage = 0,
	maxDamage = -40,
	range = 5,
	radius = 1,
	target = true,
	type = COMBAT_PHYSICALDAMAGE,
	shootEffect = CONST_ANI_LARGEROCK
}
}

monster.defenses = {
	defense = 27,
	armor = 26,
}

monster.elements = {
{
	type = COMBAT_FIREDAMAGE,
	percent = 30
},
{
	type = COMBAT_ENERGYDAMAGE,
	percent = -10
}
}

monster.immunities = {
{
	type = "ice",
	combat = true,
	condition = true
},
{
	type = "earth",
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
