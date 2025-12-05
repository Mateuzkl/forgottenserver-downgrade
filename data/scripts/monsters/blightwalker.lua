local mType = Game.createMonsterType("Blightwalker")
local monster = {}
monster.description = "a blightwalker"
monster.experience = 5850
monster.outfit = {lookType = 246}

monster.health = 8900
monster.maxHealth = monster.health
monster.race = "undead"
monster.corpse = 6354
monster.speed = 250

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
	staticAttackChance = 90,
	canwalkonenergy = false
}

monster.voices = {
	interval = 5000,
	chance = 10,
	{text = "I can see you decaying!", yell = false},
	{text = "Let me taste your mortality!", yell = false},
	{text = "Your lifeforce is waning!", yell = false},
}

monster.loot = {
{
	id = "gold coin",
	chance = 50000,
	maxCount = 100
},
{
	id = "gold coin",
	chance = 50000,
	maxCount = 97
},
{
	id = "platinum coin",
	chance = 100000,
	maxCount = 5
},
{
	id = "amulet of loss",
	chance = 120
},
{
	id = "gold ring",
	chance = 1870
},
{
	id = "hailstorm rod",
	chance = 10000
},
{
	id = "garlic necklace",
	chance = 2050
},
{
	id = "blank rune",
	chance = 26250,
	maxCount = 2
},
{
	id = "golden sickle",
	chance = 350
},
{
	id = "skull staff",
	chance = 1520
},
{
	id = "scythe",
	chance = 3000
},
{
	id = "bunch of wheat",
	chance = 50000
},
{
	id = "soul orb",
	chance = 23720
},
{
	id = 6300,
	chance = 1410
},
{
	id = "demonic essence",
	chance = 28000
},
{
	id = "assassin star",
	chance = 5900,
	maxCount = 10
},
{
	id = "great mana potion",
	chance = 31360,
	maxCount = 3
},
{
	id = 7632,
	chance = 4450
},
{
	id = 7633,
	chance = 4450
},
{
	id = "seeds",
	chance = 4300
},
{
	id = "terra mantle",
	chance = 1050
},
{
	id = "terra legs",
	chance = 2500
},
{
	id = "ultimate health potion",
	chance = 14720,
	maxCount = 2
},
{
	id = "gold ingot",
	chance = 5270
},
{
	id = "bundle of cursed straw",
	chance = 15000
}
}

monster.attacks = {
{
	name = "melee",
	interval = 2 * 1000,
	attack = 490,
	skill = 70,
	effect = CONST_ME_DRAWBLOOD
},
{
	name = "combat",
	interval = 2 * 1000,
	chance = 20,
	minDamage = -220,
	maxDamage = -405,
	range = 7,
	radius = 1,
	target = true,
	type = COMBAT_EARTHDAMAGE,
	shootEffect = CONST_ANI_POISON
},
{
	name = "combat",
	interval = 2 * 1000,
	chance = 15,
	minDamage = -65,
	maxDamage = -135,
	radius = 4,
	target = false,
	type = COMBAT_LIFEDRAIN,
	effect = CONST_ME_MAGIC_GREEN
},
{
	name = "drunk",
	interval = 2 * 1000,
	chance = 10,
	radius = 3,
	target = false,
	duration = 5 * 1000,
	effect = CONST_ME_GREENSPARK
},
{
	name = "speed",
	interval = 2 * 1000,
	chance = 15,
	range = 7,
	target = true,
	speed = -300,
	duration = 30 * 1000,
	shootEffect = CONST_ANI_POISON
}
}

monster.defenses = {
	defense = 50,
	armor = 50,
}

monster.elements = {
{
	type = COMBAT_FIREDAMAGE,
	percent = 50
},
{
	type = COMBAT_ENERGYDAMAGE,
	percent = 20
},
{
	type = COMBAT_ICEDAMAGE,
	percent = 50
},
{
	type = COMBAT_PHYSICALDAMAGE,
	percent = -10
},
{
	type = COMBAT_HOLYDAMAGE,
	percent = -30
}
}

monster.immunities = {
{
	type = "paralyze",
	condition = true
},
{
	type = "death",
	combat = true,
	condition = true
},
{
	type = "earth",
	combat = true,
	condition = true
},
{
	type = "invisible",
	condition = true
}
}

mType:register(monster)
