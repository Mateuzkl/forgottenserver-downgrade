local mType = Game.createMonsterType("Gladiator")
local monster = {}
monster.description = "a gladiator"
monster.experience = 90
monster.outfit = {lookType = 131}

monster.health = 185
monster.maxHealth = monster.health
monster.race = "blood"
monster.corpse = 20407
monster.speed = 200

monster.flags = {
	summonable = false,
	attackable = true,
	hostile = true,
	illusionable = false,
	convinceable = true,
	pushable = true,
	canpushitems = false,
	canpushcreatures = false,
	staticAttackChance = 90,
	targetDistance = 1,
	canwalkonenergy = false,
	canwalkonfire = false,
	canwalkonpoison = false
}

monster.voices = {
	interval = 5000,
	chance = 10,
	{text = "You are no match for me!", yell = false},
	{text = "Feel my prowess", yell = false},
	{text = "Fight!", yell = false},
	{text = "Take this!", yell = false},
}

monster.loot = {
{
	id = "gold coin",
	chance = 49500,
	maxCount = 30
},
{
	id = 2376,
	chance = 12620
},
{
	id = "mace",
	chance = 11160
},
{
	id = "chain helmet",
	chance = 5200
},
{
	id = "iron helmet",
	chance = 590
},
{
	id = "brass armor",
	chance = 2750
},
{
	id = "steel shield",
	chance = 840
},
{
	id = "plate shield",
	chance = 9950
},
{
	id = "meat",
	chance = 19000
},
{
	id = "belted cape",
	chance = 340
}
}

monster.attacks = {
{
	name = "melee",
	interval = 2 * 1000,
	attack = 90,
	skill = 70,
	effect = CONST_ME_DRAWBLOOD
}
}

monster.defenses = {
	defense = 25,
	armor = 25,
	{
			name = "speed",
			interval = 2 * 1000,
			chance = 15,
			speed = 215,
			duration = 5 * 1000,
			effect = CONST_ME_MAGIC_RED
		},
}

monster.elements = {
{
	type = COMBAT_HOLYDAMAGE,
	percent = 10
},
{
	type = COMBAT_PHYSICALDAMAGE,
	percent = 15
},
{
	type = COMBAT_DEATHDAMAGE,
	percent = -5
}
}

mType:register(monster)
