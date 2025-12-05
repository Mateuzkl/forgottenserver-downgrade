local mType = Game.createMonsterType("Assassin")
local monster = {}
monster.description = "an assassin"
monster.experience = 105
monster.outfit = {lookType = 152}

monster.health = 175
monster.maxHealth = monster.health
monster.race = "blood"
monster.corpse = 20327
monster.speed = 224

monster.flags = {
	summonable = false,
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
	{text = "Die!", yell = false},
	{text = "Feel the hand of death!", yell = false},
	{text = "You are on my deathlist!", yell = false},
}

monster.loot = {
{
	id = "gold coin",
	chance = 83000,
	maxCount = 50
},
{
	id = 2050,
	chance = 30000,
	maxCount = 2
},
{
	id = "knife",
	chance = 9800
},
{
	id = "Throwing Star",
	chance = 7000,
	maxCount = 14
},
{
	id = "viper star",
	chance = 4200,
	maxCount = 7
},
{
	id = "combat knife",
	chance = 4000
},
{
	id = "steel helmet",
	chance = 3230
},
{
	id = "plate shield",
	chance = 1900
},
{
	id = "battle shield",
	chance = 1600
},
{
	id = "steel shield",
	chance = 970
},
{
	id = "leopard armor",
	chance = 480
},
{
	id = "horseman helmet",
	chance = 240
},
{
	id = "small diamond",
	chance = 220
}
}

monster.attacks = {
{
	name = "melee",
	interval = 2 * 1000,
	attack = 120,
	skill = 70,
	effect = CONST_ME_DRAWBLOOD
},
{
	name = "combat",
	interval = 2 * 1000,
	chance = 15,
	minDamage = 0,
	maxDamage = -40,
	range = 7,
	type = COMBAT_PHYSICALDAMAGE,
	shootEffect = CONST_ANI_THROWINGSTAR
},
{
	name = "combat",
	type = COMBAT_EARTHDAMAGE,
	conditionType = CONDITION_POISON,
	conditionMinDamage = -120,
	conditionMaxDamage = -160,
	conditionTickInterval = 2000,
	interval = 2 * 1000,
	chance = 10,
	range = 7,
	shootEffect = CONST_ANI_POISON,
	effect = CONST_ME_POISON
}
}

monster.defenses = {
	defense = 17,
	armor = 17,
	{
			name = "invisible",
			interval = 2 * 1000,
			chance = 10,
			effect = CONST_ME_MAGIC_BLUE
		},
}

monster.elements = {
{
	type = COMBAT_PHYSICALDAMAGE,
	percent = -10
},
{
	type = COMBAT_DEATHDAMAGE,
	percent = -5
}
}

monster.immunities = {
{
	type = "invisible",
	condition = true
}
}

mType:register(monster)
