local mType = Game.createMonsterType("Pirate Corsair")
local monster = {}
monster.description = "a pirate corsair"
monster.experience = 350
monster.outfit = {lookType = 98}

monster.health = 675
monster.maxHealth = monster.health
monster.race = "blood"
monster.corpse = 20475
monster.speed = 238

monster.changeTarget = {interval = 4 * 1000, chance = 15}

monster.flags = {
	summonable = false,
	attackable = true,
	hostile = true,
	illusionable = false,
	convinceable = true,
	pushable = false,
	canpushitems = true,
	canpushcreatures = true,
	staticAttackChance = 90,
	targetDistance = 1,
	canwalkonenergy = false,
	canwalkonfire = false,
	canwalkonpoison = false
}

monster.voices = {
	interval = 5000,
	chance = 10,
	{text = "Give up!", yell = false},
	{text = "Hiyaa!", yell = false},
	{text = "Plundeeeeer!", yell = false},
}

monster.loot = {
{
	id = "gold coin",
	chance = 55352,
	maxCount = 86
},
{
	id = "compass",
	chance = 10163
},
{
	id = "sabre",
	chance = 9816
},
{
	id = "throwing star",
	chance = 8104,
	maxCount = 12
},
{
	id = "dark armor",
	chance = 1874
},
{
	id = "dark shield",
	chance = 1105
},
{
	id = "pirate hat",
	chance = 1094
},
{
	id = "pirate backpack",
	chance = 1029
},
{
	id = "strong health potion",
	chance = 802
},
{
	id = "hook",
	chance = 574
},
{
	id = "peg leg",
	chance = 553
},
{
	id = "eye patch",
	chance = 488
},
{
	id = "pirate boots",
	chance = 325
},
{
	id = "skull candle",
	chance = 119
},
{
	id = "rum flask",
	chance = 98
},
{
	id = "piggy bank",
	chance = 87
}
}

monster.attacks = {
{
	name = "melee",
	interval = 2 * 1000,
	attack = 170,
	skill = 70,
	effect = CONST_ME_DRAWBLOOD
},
{
	name = "combat",
	interval = 2 * 1000,
	chance = 20,
	minDamage = 0,
	maxDamage = -150,
	range = 7,
	type = COMBAT_PHYSICALDAMAGE,
	shootEffect = CONST_ANI_THROWINGSTAR
}
}

monster.defenses = {
	defense = 20,
	armor = 20,
}

monster.elements = {
{
	type = COMBAT_EARTHDAMAGE,
	percent = 20
},
{
	type = COMBAT_HOLYDAMAGE,
	percent = 10
},
{
	type = COMBAT_DEATHDAMAGE,
	percent = -5
},
{
	type = COMBAT_ICEDAMAGE,
	percent = -5
},
{
	type = COMBAT_FIREDAMAGE,
	percent = -10
}
}

monster.immunities = {
{
	type = "invisible",
	condition = true
}
}

mType:register(monster)
