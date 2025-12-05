local mType = Game.createMonsterType("Cobra")
local monster = {}
monster.description = "a cobra"
monster.experience = 30
monster.outfit = {lookType = 81}

monster.health = 65
monster.maxHealth = monster.health
monster.race = "blood"
monster.corpse = 3007
monster.speed = 120

monster.changeTarget = {interval = 4 * 1000, chance = 10}

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
	{text = "Zzzzzz", yell = false},
	{text = "Fsssss", yell = false},
}

monster.loot = {
{
	id = "cobra tongue",
	chance = 5000
}
}

monster.attacks = {
{
	name = "melee",
	interval = 2 * 1000,
	attack = 0,
	skill = 70,
	effect = CONST_ME_DRAWBLOOD
},
{
	name = "combat",
	type = COMBAT_EARTHDAMAGE,
	conditionType = CONDITION_POISON,
	conditionMinDamage = -20,
	conditionMaxDamage = -40,
	conditionTickInterval = 2000,
	interval = 2 * 1000,
	chance = 15,
	range = 7
}
}

monster.defenses = {
	defense = 1,
	armor = 1,
}

monster.elements = {
{
	type = COMBAT_FIREDAMAGE,
	percent = -10
}
}

monster.immunities = {
{
	type = "drunk",
	condition = true
},
{
	type = "earth",
	combat = true,
	condition = true
}
}

mType:register(monster)
