local mType = Game.createMonsterType("Rocky")
local monster = {}
monster.description = "Rocky"
monster.experience = 190
monster.outfit = {lookType = 95}

monster.health = 390
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
	canwalkonfire = false
}

monster.voices = {
	interval = 5000,
	chance = 10,
	{text = "Another little gladiator!", yell = false},
	{text = "Come into my embrace.", yell = false},
}

monster.attacks = {
{
	name = "melee",
	interval = 2 * 1000,
	attack = 80,
	skill = 70,
	effect = CONST_ME_DRAWBLOOD
}
}

monster.defenses = {
	defense = 30,
	armor = 30,
	{
			name = "combat",
			interval = 2 * 1000,
			chance = 50,
			type = COMBAT_HEALING,
			minDamage = 15,
			maxDamage = 35,
			effect = CONST_ME_MAGIC_BLUE
		},
}

monster.elements = {
{
	type = COMBAT_FIREDAMAGE,
	percent = 10
}
}

monster.immunities = {
{
	type = "energy",
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
