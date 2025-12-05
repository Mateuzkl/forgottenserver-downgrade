local mType = Game.createMonsterType("Dworc Venomsniper")
local monster = {}
monster.description = "a dworc venomsniper"
monster.experience = 35
monster.outfit = {lookType = 216}

monster.health = 80
monster.maxHealth = monster.health
monster.race = "blood"
monster.corpse = 6059
monster.speed = 152

monster.flags = {
	summonable = false,
	attackable = true,
	hostile = true,
	illusionable = true,
	convinceable = false,
	pushable = true,
	canpushitems = false,
	canpushcreatures = false,
	targetDistance = 4,
	staticAttackChance = 90,
	canwalkonenergy = false,
	canwalkonfire = false
}

monster.voices = {
	interval = 5000,
	chance = 10,
	{text = "Brak brrretz!", yell = false},
	{text = "Grow truk grrrrr.", yell = false},
	{text = "Prek tars, dekklep zurk.", yell = false},
}

monster.loot = {
{
	id = "gold coin",
	chance = 74992,
	maxCount = 13
},
{
	id = "leather armor",
	chance = 10048
},
{
	id = "throwing knife",
	chance = 7906,
	maxCount = 2
},
{
	id = "torch",
	chance = 5486
},
{
	id = "poison arrow",
	chance = 4957,
	maxCount = 3
},
{
	id = "poison dagger",
	chance = 1500
},
{
	id = "skull",
	chance = 983,
	maxCount = 2
},
{
	id = "tribal mask",
	chance = 502
},
{
	id = "seeds",
	chance = 193
},
{
	id = "bast skirt",
	chance = 99
},
{
	id = "bronze amulet",
	chance = 97
}
}

monster.attacks = {
{
	name = "melee",
	interval = 2 * 1000,
	attack = 15,
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
	range = 5
}
}

monster.defenses = {
	defense = 3,
	armor = 3,
}

monster.elements = {
{
	type = COMBAT_HOLYDAMAGE,
	percent = 15
},
{
	type = COMBAT_FIREDAMAGE,
	percent = -13
},
{
	type = COMBAT_DEATHDAMAGE,
	percent = -8
},
{
	type = COMBAT_ICEDAMAGE,
	percent = -13
}
}

monster.immunities = {
{
	type = "earth",
	combat = true,
	condition = true
}
}

mType:register(monster)
