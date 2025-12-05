local mType = Game.createMonsterType("Rift Worm")
local monster = {}
monster.description = "Rift Worm"
monster.experience = 1195
monster.outfit = {lookType = 295}

monster.health = 2800
monster.maxHealth = monster.health
monster.race = "blood"
monster.corpse = 0
monster.speed = 200

monster.flags = {
	summonable = false,
	attackable = true,
	hostile = true,
	illusionable = false,
	convinceable = false,
	pushable = false,
	canpushitems = false,
	staticAttackChance = 50,
	targetDistance = 1,
	canwalkonenergy = false,
	canwalkonfire = false,
	canwalkonpoison = false
}

monster.attacks = {
{
	name = "melee",
	interval = 2 * 1000,
	attack = 160,
	skill = 70,
	effect = CONST_ME_DRAWBLOOD
},
{
	name = "combat",
	interval = 2 * 1000,
	chance = 10,
	minDamage = -500,
	maxDamage = -1000,
	range = 7,
	type = COMBAT_MANADRAIN
}
}

monster.defenses = {
	defense = 25,
	armor = 25,
	{
			name = "invisible",
			interval = 2 * 1000,
			chance = 10,
			effect = CONST_ME_GROUNDSHAKER
		},
}

monster.elements = {
{
	type = COMBAT_HOLYDAMAGE,
	percent = -5
},
{
	type = COMBAT_FIREDAMAGE,
	percent = -5
},
{
	type = COMBAT_ICEDAMAGE,
	percent = -5
},
{
	type = COMBAT_EARTHDAMAGE,
	percent = -25
}
}

monster.immunities = {
{
	type = "invisible",
	condition = true
}
}

mType:register(monster)
