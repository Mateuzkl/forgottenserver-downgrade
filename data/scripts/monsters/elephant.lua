local mType = Game.createMonsterType("Elephant")
local monster = {}
monster.description = "an elephant"
monster.experience = 160
monster.outfit = {lookType = 211}

monster.health = 320
monster.maxHealth = monster.health
monster.race = "blood"
monster.corpse = 6052
monster.speed = 190

monster.changeTarget = {interval = 4 * 1000, chance = 10}

monster.flags = {
	summonable = true,
	attackable = true,
	hostile = true,
	illusionable = true,
	convinceable = true,
	pushable = false,
	canpushitems = true,
	canpushcreatures = true,
	targetDistance = 1,
	staticAttackChance = 90,
	canwalkonenergy = false,
	canwalkonfire = false,
	canwalkonpoison = false
}

monster.voices = {
	interval = 5000,
	chance = 10,
	{text = "Hooooot-Toooooot!", yell = false},
	{text = "Tooooot!", yell = false},
	{text = "Trooooot!", yell = false},
}

monster.loot = {
{
	id = "meat",
	chance = 40494
},
{
	id = "ham",
	chance = 29278
},
{
	id = "tusk",
	chance = 1089,
	maxCount = 2
},
{
	id = "tusk shield",
	chance = 151
}
}

monster.attacks = {
{
	name = "melee",
	interval = 2 * 1000,
	attack = 100,
	skill = 70,
	effect = CONST_ME_DRAWBLOOD
}
}

monster.defenses = {
	defense = 20,
	armor = 20,
}

monster.elements = {
{
	type = COMBAT_PHYSICALDAMAGE,
	percent = 25
},
{
	type = COMBAT_ICEDAMAGE,
	percent = 20
},
{
	type = COMBAT_ENERGYDAMAGE,
	percent = -10
}
}

mType:register(monster)
