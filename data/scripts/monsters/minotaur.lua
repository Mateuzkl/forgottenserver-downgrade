local mType = Game.createMonsterType("Minotaur")
local monster = {}
monster.description = "a minotaur"
monster.experience = 50
monster.outfit = {lookType = 25}

monster.health = 100
monster.maxHealth = monster.health
monster.race = "blood"
monster.corpse = 5969
monster.speed = 168

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
	{text = "Kaplar!", yell = false},
	{text = "Hurr", yell = false},
}

monster.loot = {
{
	id = "gold coin",
	chance = 67500,
	maxCount = 25
},
{
	id = "plate shield",
	chance = 20020
},
{
	id = "mace",
	chance = 12840
},
{
	id = "chain armor",
	chance = 10000
},
{
	id = "brass helmet",
	chance = 7700
},
{
	id = 2376,
	chance = 5000
},
{
	id = "meat",
	chance = 5000
},
{
	id = "axe",
	chance = 4000
},
{
	id = "minotaur horn",
	chance = 2090,
	maxCount = 2
},
{
	id = "minotaur leather",
	chance = 990
},
{
	id = 2554,
	chance = 310
},
{
	id = "bronze amulet",
	chance = 110
}
}

monster.attacks = {
{
	name = "melee",
	interval = 2 * 1000,
	attack = 45,
	skill = 70,
	effect = CONST_ME_DRAWBLOOD
}
}

monster.defenses = {
	defense = 11,
	armor = 11,
}

monster.elements = {
{
	type = COMBAT_FIREDAMAGE,
	percent = 20
},
{
	type = COMBAT_HOLYDAMAGE,
	percent = 10
},
{
	type = COMBAT_ICEDAMAGE,
	percent = -10
},
{
	type = COMBAT_DEATHDAMAGE,
	percent = -10
}
}

mType:register(monster)
