local mType = Game.createMonsterType("Frost Troll")
local monster = {}
monster.description = "a frost troll"
monster.experience = 23
monster.outfit = {lookType = 53}

monster.health = 55
monster.maxHealth = monster.health
monster.race = "blood"
monster.corpse = 5998
monster.speed = 140

monster.flags = {
	summonable = true,
	attackable = true,
	hostile = true,
	illusionable = true,
	convinceable = true,
	pushable = true,
	canpushitems = false,
	canpushcreatures = false,
	targetDistance = 1,
	staticAttackChance = 90,
	canwalkonenergy = false,
	canwalkonfire = false,
	canwalkonpoison = false
}

monster.voices = {
	interval = 5000,
	chance = 10,
	{text = "Brrr", yell = false},
	{text = "Broar!", yell = false},
}

monster.loot = {
{
	id = "gold coin",
	chance = 50404,
	maxCount = 12
},
{
	id = "spear",
	chance = 20343
},
{
	id = "fish",
	chance = 18162
},
{
	id = "rapier",
	chance = 15591
},
{
	id = "wooden shield",
	chance = 15508
},
{
	id = "twigs",
	chance = 8229
},
{
	id = "frosty ear of a troll",
	chance = 2011
},
{
	id = "coat",
	chance = 1126
}
}

monster.attacks = {
{
	name = "melee",
	interval = 2 * 1000,
	attack = 20,
	skill = 70,
	effect = CONST_ME_DRAWBLOOD
}
}

monster.defenses = {
	defense = 6,
	armor = 6,
}

monster.elements = {
{
	type = COMBAT_FIREDAMAGE,
	percent = 40
},
{
	type = COMBAT_HOLYDAMAGE,
	percent = 10
},
{
	type = COMBAT_EARTHDAMAGE,
	percent = -10
},
{
	type = COMBAT_ENERGYDAMAGE,
	percent = -15
},
{
	type = COMBAT_DEATHDAMAGE,
	percent = -10
}
}

mType:register(monster)
