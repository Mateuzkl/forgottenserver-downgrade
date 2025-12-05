local mType = Game.createMonsterType("Dwarf Soldier")
local monster = {}
monster.description = "a dwarf soldier"
monster.experience = 70
monster.outfit = {lookType = 71}

monster.health = 135
monster.maxHealth = monster.health
monster.race = "blood"
monster.corpse = 6014
monster.speed = 176

monster.changeTarget = {interval = 4 * 1000, chance = 10}

monster.flags = {
	summonable = true,
	attackable = true,
	hostile = true,
	illusionable = true,
	convinceable = true,
	pushable = false,
	canpushitems = true,
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
	{text = "Hail Durin!", yell = false},
}

monster.loot = {
{
	id = "white mushroom",
	chance = 39924,
	maxCount = 2
},
{
	id = "bolt",
	chance = 37815,
	maxCount = 7
},
{
	id = "gold coin",
	chance = 28337,
	maxCount = 12
},
{
	id = "soldier helmet",
	chance = 11820
},
{
	id = "shovel",
	chance = 10026
},
{
	id = "chain armor",
	chance = 7525
},
{
	id = "piercing bolt",
	chance = 3822,
	maxCount = 3
},
{
	id = "dwarven shield",
	chance = 3056
},
{
	id = "crossbow",
	chance = 3023
},
{
	id = "battle axe",
	chance = 2481
},
{
	id = "iron ore",
	chance = 303
},
{
	id = "axe ring",
	chance = 121
}
}

monster.attacks = {
{
	name = "melee",
	interval = 2 * 1000,
	attack = 70,
	skill = 70,
	effect = CONST_ME_DRAWBLOOD
},
{
	name = "combat",
	interval = 2 * 1000,
	chance = 10,
	minDamage = 0,
	maxDamage = -60,
	range = 7,
	type = COMBAT_PHYSICALDAMAGE,
	shootEffect = CONST_ANI_BOLT
}
}

monster.defenses = {
	defense = 9,
	armor = 9,
}

monster.elements = {
{
	type = COMBAT_EARTHDAMAGE,
	percent = 10
},
{
	type = COMBAT_FIREDAMAGE,
	percent = -5
},
{
	type = COMBAT_DEATHDAMAGE,
	percent = -5
}
}

mType:register(monster)
