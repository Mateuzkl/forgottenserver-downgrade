local mType = Game.createMonsterType("The Hairy One")
local monster = {}
monster.description = "The Hairy One"
monster.experience = 115
monster.outfit = {lookType = 116}

monster.health = 325
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
	canwalkonfire = false,
	canwalkonpoison = false
}

monster.voices = {
	interval = 2000,
	chance = 5,
	{text = "Hugah!", yell = false},
	{text = "Ungh! Ungh!", yell = false},
}

monster.attacks = {
{
	name = "melee",
	interval = 2 * 1000,
	attack = 70,
	skill = 70,
	effect = CONST_ME_DRAWBLOOD
}
}

monster.defenses = {
	defense = 5,
	armor = 3,
}

monster.elements = {
{
	type = COMBAT_ENERGYDAMAGE,
	percent = 5
},
{
	type = COMBAT_FIREDAMAGE,
	percent = -20
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
