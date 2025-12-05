local mType = Game.createMonsterType("Polar Bear")
local monster = {}
monster.description = "a polar bear"
monster.experience = 28
monster.outfit = {lookType = 42}

monster.health = 85
monster.maxHealth = monster.health
monster.race = "blood"
monster.corpse = 5987
monster.speed = 156

monster.flags = {
	summonable = true,
	attackable = true,
	hostile = true,
	illusionable = true,
	convinceable = true,
	pushable = false,
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
	{text = "GROARRR!", yell = false},
}

monster.loot = {
{
	id = "meat",
	chance = 50363
},
{
	id = "ham",
	chance = 50166
},
{
	id = "polar bear paw",
	chance = 1013
}
}

monster.attacks = {
{
	name = "melee",
	interval = 2 * 1000,
	attack = 30,
	skill = 70,
	effect = CONST_ME_DRAWBLOOD
}
}

monster.defenses = {
	defense = 7,
	armor = 7,
}

monster.elements = {
{
	type = COMBAT_ICEDAMAGE,
	percent = 20
},
{
	type = COMBAT_FIREDAMAGE,
	percent = 10
},
{
	type = COMBAT_DEATHDAMAGE,
	percent = -10
},
{
	type = COMBAT_ENERGYDAMAGE,
	percent = -5
}
}

mType:register(monster)
