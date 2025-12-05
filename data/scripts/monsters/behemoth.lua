local mType = Game.createMonsterType("Behemoth")
local monster = {}
monster.description = "a behemoth"
monster.experience = 2500
monster.outfit = {lookType = 55}

monster.health = 4000
monster.maxHealth = monster.health
monster.race = "blood"
monster.corpse = 5999
monster.speed = 340

monster.changeTarget = {interval = 4 * 1000, chance = 10}

monster.flags = {
	summonable = false,
	attackable = true,
	hostile = true,
	illusionable = false,
	convinceable = false,
	pushable = false,
	canpushitems = true,
	canpushcreatures = true,
	targetDistance = 1,
	staticAttackChance = 70,
	canwalkonenergy = false
}

monster.voices = {
	interval = 5000,
	chance = 10,
	{text = "You're so little!", yell = false},
	{text = "Human flesh - delicious!", yell = false},
	{text = "Crush the intruders!", yell = false},
}

monster.loot = {
{
	id = "gold coin",
	chance = 100000,
	maxCount = 200
},
{
	id = "platinum coin",
	chance = 60256,
	maxCount = 5
},
{
	id = "meat",
	chance = 29641
},
{
	id = "battle stone",
	chance = 14968
},
{
	id = "double axe",
	chance = 10039
},
{
	id = "assassin star",
	chance = 9988,
	maxCount = 5
},
{
	id = "small amethyst",
	chance = 6054,
	maxCount = 5
},
{
	id = "two handed sword",
	chance = 6019
},
{
	id = "great health potion",
	chance = 5072
},
{
	id = "dark armor",
	chance = 4174
},
{
	id = "plate armor",
	chance = 4110
},
{
	id = "crystal necklace",
	chance = 2549
},
{
	id = "perfect behemoth fang",
	chance = 999
},
{
	id = "giant sword",
	chance = 966
},
{
	id = "strange symbol",
	chance = 830
},
{
	id = "big bone",
	chance = 691
},
{
	id = "pick",
	chance = 619
},
{
	id = "behemoth claw",
	chance = 469
},
{
	id = "steel boots",
	chance = 434
},
{
	id = "crowbar",
	chance = 128
},
{
	id = "behemoth trophy",
	chance = 114
},
{
	id = "amphora",
	chance = 97
},
{
	id = "titan axe",
	chance = 75
},
{
	id = "war axe",
	chance = 70
}
}

monster.attacks = {
{
	name = "melee",
	interval = 2 * 1000,
	attack = 455,
	skill = 70,
	effect = CONST_ME_DRAWBLOOD
},
{
	name = "combat",
	interval = 2 * 1000,
	chance = 15,
	minDamage = 0,
	maxDamage = -200,
	range = 7,
	type = COMBAT_PHYSICALDAMAGE,
	shootEffect = CONST_ANI_LARGEROCK
}
}

monster.defenses = {
	defense = 50,
	armor = 50,
	{
			name = "speed",
			interval = 2 * 1000,
			chance = 15,
			speed = 390,
			duration = 5 * 1000,
			effect = CONST_ME_MAGIC_RED
		},
}

monster.elements = {
{
	type = COMBAT_PHYSICALDAMAGE,
	percent = 10
},
{
	type = COMBAT_ENERGYDAMAGE,
	percent = 10
},
{
	type = COMBAT_EARTHDAMAGE,
	percent = 80
},
{
	type = COMBAT_FIREDAMAGE,
	percent = 30
},
{
	type = COMBAT_ICEDAMAGE,
	percent = -10
},
{
	type = COMBAT_HOLYDAMAGE,
	percent = 30
},
{
	type = COMBAT_DEATHDAMAGE,
	percent = -5
}
}

monster.immunities = {
{
	type = "paralyze",
	condition = true
},
{
	type = "invisible",
	condition = true
}
}

mType:register(monster)
