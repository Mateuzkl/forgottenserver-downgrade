local mType = Game.createMonsterType("Orc")
local monster = {}
monster.description = "an orc"
monster.experience = 25
monster.outfit = {lookType = 5}

monster.health = 70
monster.maxHealth = monster.health
monster.race = "blood"
monster.corpse = 5966
monster.speed = 150

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
	{text = "Grak brrretz!", yell = false},
	{text = "Grow truk grrrrr.", yell = false},
	{text = "Prek tars, dekklep zurk.", yell = false},
}

monster.loot = {
{
	id = "gold coin",
	chance = 84724,
	maxCount = 14
},
{
	id = "meat",
	chance = 9613
},
{
	id = "studded armor",
	chance = 8232
},
{
	id = "studded shield",
	chance = 6685
},
{
	id = "sabre",
	chance = 5580
},
{
	id = "axe",
	chance = 5442
},
{
	id = "studded helmet",
	chance = 2873
},
{
	id = "orc leather",
	chance = 359
},
{
	id = "orc tooth",
	chance = 55
}
}

monster.attacks = {
{
	name = "melee",
	interval = 2 * 1000,
	attack = 35,
	skill = 70,
	effect = CONST_ME_DRAWBLOOD
}
}

monster.defenses = {
	defense = 4,
	armor = 4,
}

monster.elements = {
{
	type = COMBAT_ENERGYDAMAGE,
	percent = 20
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
	type = COMBAT_DEATHDAMAGE,
	percent = -10
}
}

mType:register(monster)
