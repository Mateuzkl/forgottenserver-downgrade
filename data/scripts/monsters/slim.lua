local mType = Game.createMonsterType("Slim")
local monster = {}
monster.description = "Slim"
monster.experience = 580
monster.outfit = {lookType = 101}

monster.health = 1025
monster.maxHealth = monster.health
monster.race = "undead"
monster.corpse = 7349
monster.speed = 200

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
	interval = 2000,
	chance = 5,
	{text = "Zhroozzzzs.", yell = false},
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
	name = "poisonfield",
	interval = 1 * 1000,
	chance = 50,
	shootEffect = CONST_ANI_POISON
},
{
	name = "combat",
	interval = 3 * 1000,
	chance = 40,
	minDamage = -10,
	maxDamage = -50,
	type = COMBAT_PHYSICALDAMAGE,
	effect = CONST_ME_BLACKSPARK
}
}

monster.defenses = {
	defense = 38,
	armor = 36,
}

monster.elements = {
{
	type = COMBAT_FIREDAMAGE,
	percent = -10
},
{
	type = COMBAT_HOLYDAMAGE,
	percent = -5
}
}

monster.immunities = {
{
	type = "death",
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
