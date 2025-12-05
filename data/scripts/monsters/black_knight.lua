local mType = Game.createMonsterType("Black Knight")
local monster = {}
monster.description = "a black knight"
monster.experience = 1600
monster.outfit = {lookType = 131}

monster.health = 1800
monster.maxHealth = monster.health
monster.race = "blood"
monster.corpse = 20355
monster.speed = 250

monster.changeTarget = {interval = 4 * 1000, chance = 10}

monster.flags = {
	summonable = false,
	attackable = true,
	hostile = true,
	ignorespawnblock = false,
	illusionable = false,
	convinceable = false,
	pushable = false,
	canpushitems = true,
	canpushcreatures = true,
	targetDistance = 1,
	staticAttackChance = 90
}

monster.voices = {
	interval = 5000,
	chance = 10,
	{text = "MINE!", yell = false},
	{text = "NO PRISONERS!", yell = false},
	{text = "NO MERCY!", yell = false},
	{text = "By Bolg's blood!", yell = false},
	{text = "You're no match for me!", yell = false},
}

monster.loot = {
{
	id = "gold coin",
	chance = 48586,
	maxCount = 143
},
{
	id = "spear",
	chance = 29429,
	maxCount = 3
},
{
	id = "brown bread",
	chance = 20600,
	maxCount = 2
},
{
	id = "rope",
	chance = 14426
},
{
	id = "brass legs",
	chance = 13070
},
{
	id = "halberd",
	chance = 12522
},
{
	id = "plate armor",
	chance = 10935
},
{
	id = "steel helmet",
	chance = 10531
},
{
	id = "two handed sword",
	chance = 9608
},
{
	id = "battle hammer",
	chance = 6896
},
{
	id = "warrior helmet",
	chance = 4703
},
{
	id = "knight axe",
	chance = 2654
},
{
	id = "dark helmet",
	chance = 2424
},
{
	id = "dark armor",
	chance = 2020
},
{
	id = "knight legs",
	chance = 1039
},
{
	id = "knight armor",
	chance = 750
},
{
	id = "ruby necklace",
	chance = 750
},
{
	id = "lightning legs",
	chance = 577
},
{
	id = "boots of haste",
	chance = 404
},
{
	id = "dragon lance",
	chance = 289
},
{
	id = "piggy bank",
	chance = 115
}
}

monster.attacks = {
{
	name = "melee",
	interval = 2 * 1000,
	attack = 300,
	skill = 70,
	effect = CONST_ME_DRAWBLOOD
},
{
	name = "combat",
	interval = 2 * 1000,
	chance = 20,
	minDamage = 0,
	maxDamage = -200,
	range = 7,
	type = COMBAT_PHYSICALDAMAGE,
	shootEffect = CONST_ANI_SPEAR
}
}

monster.defenses = {
	defense = 42,
	armor = 42,
}

monster.elements = {
{
	type = COMBAT_FIREDAMAGE,
	percent = 95
},
{
	type = COMBAT_ENERGYDAMAGE,
	percent = 80
},
{
	type = COMBAT_PHYSICALDAMAGE,
	percent = 10
},
{
	type = COMBAT_DEATHDAMAGE,
	percent = 20
},
{
	type = COMBAT_HOLYDAMAGE,
	percent = -8
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
},
{
	type = "earth",
	combat = true,
	condition = true
},
{
	type = "ice",
	combat = true,
	condition = true
}
}

mType:register(monster)
