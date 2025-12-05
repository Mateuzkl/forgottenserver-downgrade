local mType = Game.createMonsterType("Achad")
local monster = {}
monster.description = "Achad"
monster.experience = 70
monster.outfit = {lookType = 146}

monster.health = 185
monster.maxHealth = monster.health
monster.race = "blood"
monster.corpse = 7349
monster.speed = 185

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
	interval = 5000,
	chance = 10,
	{text = "You won't pass me.", yell = false},
	{text = "I have travelled far to fight here.", yell = false},
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
	defense = 19,
	armor = 20,
}

monster.elements = {
{
	type = COMBAT_FIREDAMAGE,
	percent = 10
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
