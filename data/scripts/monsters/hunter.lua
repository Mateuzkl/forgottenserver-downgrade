local mType = Game.createMonsterType("Hunter")
local monster = {}
monster.description = "a hunter"
monster.experience = 150
monster.outfit = {lookType = 129}

monster.health = 150
monster.maxHealth = monster.health
monster.race = "blood"
monster.corpse = 20419
monster.speed = 210

monster.changeTarget = {interval = 4 * 1000, chance = 10}

monster.flags = {
	summonable = false,
	attackable = true,
	hostile = true,
	illusionable = true,
	convinceable = true,
	pushable = false,
	canpushitems = true,
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
	{text = "Guess who we're hunting, haha!", yell = false},
	{text = "Guess who we are hunting!", yell = false},
	{text = "Bullseye!", yell = false},
	{text = "You'll make a nice trophy!", yell = false},
}

monster.loot = {
{
	id = 2544,
	chance = 82000,
	maxCount = 22
},
{
	id = "orange",
	chance = 20300,
	maxCount = 2
},
{
	id = "roll",
	chance = 11370,
	maxCount = 2
},
{
	id = "hunter's quiver",
	chance = 10240
},
{
	id = "bow",
	chance = 5770
},
{
	id = 2546,
	chance = 5360,
	maxCount = 3
},
{
	id = "brass armor",
	chance = 5070
},
{
	id = "brass helmet",
	chance = 5050
},
{
	id = "poison arrow",
	chance = 4500,
	maxCount = 4
},
{
	id = "dragon necklace",
	chance = 3000
},
{
	id = 2050,
	chance = 3300
},
{
	id = "sniper gloves",
	chance = 610
},
{
	id = 7397,
	chance = 520
},
{
	id = "small ruby",
	chance = 170
},
{
	id = 7400,
	chance = 140
},
{
	id = 7394,
	chance = 130
},
{
	id = "slingshot",
	chance = 120
}
}

monster.attacks = {
{
	name = "melee",
	interval = 2 * 1000,
	attack = 20,
	skill = 70,
	effect = CONST_ME_DRAWBLOOD
},
{
	name = "combat",
	interval = 2 * 1000,
	chance = 50,
	minDamage = 0,
	maxDamage = -100,
	range = 7,
	type = COMBAT_PHYSICALDAMAGE,
	shootEffect = CONST_ANI_ARROW
}
}

monster.defenses = {
	defense = 8,
	armor = 8,
}

monster.elements = {
{
	type = COMBAT_HOLYDAMAGE,
	percent = 20
},
{
	type = COMBAT_PHYSICALDAMAGE,
	percent = -5
}
}

mType:register(monster)
