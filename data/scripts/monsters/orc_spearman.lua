local mType = Game.createMonsterType("Orc Spearman")
local monster = {}
monster.description = "an orc spearman"
monster.experience = 38
monster.outfit = {lookType = 50}

monster.health = 105
monster.maxHealth = monster.health
monster.race = "blood"
monster.corpse = 5996
monster.speed = 176

monster.changeTarget = {interval = 4 * 1000, chance = 10}

monster.flags = {
	summonable = true,
	attackable = true,
	hostile = true,
	illusionable = true,
	convinceable = true,
	pushable = true,
	canpushitems = false,
	canpushcreatures = false,
	targetDistance = 4,
	staticAttackChance = 90,
	canwalkonenergy = false,
	canwalkonfire = false,
	canwalkonpoison = false
}

monster.voices = {
	interval = 5000,
	chance = 10,
	{text = "Ugaar!", yell = false},
}

monster.loot = {
{
	id = "meat",
	chance = 30387
},
{
	id = "gold coin",
	chance = 24846,
	maxCount = 11
},
{
	id = "spear",
	chance = 17907
},
{
	id = "studded legs",
	chance = 9210
},
{
	id = "studded helmet",
	chance = 8239
},
{
	id = "machete",
	chance = 3027
},
{
	id = "orc leather",
	chance = 2013
},
{
	id = "orc tooth",
	chance = 100
}
}

monster.attacks = {
{
	name = "melee",
	interval = 2 * 1000,
	attack = 25,
	skill = 70,
	effect = CONST_ME_DRAWBLOOD
},
{
	name = "combat",
	interval = 2 * 1000,
	chance = 20,
	minDamage = 0,
	maxDamage = -30,
	range = 7,
	type = COMBAT_PHYSICALDAMAGE,
	shootEffect = CONST_ANI_SPEAR
}
}

monster.defenses = {
	defense = 10,
	armor = 10,
}

monster.elements = {
{
	type = COMBAT_ENERGYDAMAGE,
	percent = 20
},
{
	type = COMBAT_HOLYDAMAGE,
	percent = 20
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
