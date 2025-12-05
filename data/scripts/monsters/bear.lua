local mType = Game.createMonsterType("Bear")
local monster = {}
monster.description = "a bear"
monster.experience = 23
monster.outfit = {lookType = 16}

monster.health = 80
monster.maxHealth = monster.health
monster.race = "blood"
monster.corpse = 5975
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
	{text = "Grrrr", yell = false},
	{text = "Groar", yell = false},
}

monster.loot = {
{
	id = "meat",
	chance = 39964
},
{
	id = "ham",
	chance = 19987
},
{
	id = "bear paw",
	chance = 1973
},
{
	id = "honeycomb",
	chance = 480
}
}

monster.attacks = {
{
	name = "melee",
	interval = 2 * 1000,
	attack = 25,
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
	type = COMBAT_ICEDAMAGE,
	percent = -10
},
{
	type = COMBAT_HOLYDAMAGE,
	percent = 10
},
{
	type = COMBAT_DEATHDAMAGE,
	percent = -5
}
}

mType:register(monster)
