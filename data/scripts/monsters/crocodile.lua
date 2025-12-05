local mType = Game.createMonsterType("Crocodile")
local monster = {}
monster.description = "a crocodile"
monster.experience = 40
monster.outfit = {lookType = 119}

monster.health = 105
monster.maxHealth = monster.health
monster.race = "blood"
monster.corpse = 6046
monster.speed = 156

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

monster.loot = {
{
	id = "gold coin",
	chance = 49805,
	maxCount = 10
},
{
	id = "ham",
	chance = 39795
},
{
	id = "piece of crocodile leather",
	chance = 20032
},
{
	id = "leather boots",
	chance = 86
}
}

monster.attacks = {
{
	name = "melee",
	interval = 2 * 1000,
	attack = 40,
	skill = 70,
	effect = CONST_ME_DRAWBLOOD
}
}

monster.defenses = {
	defense = 13,
	armor = 13,
}

monster.elements = {
{
	type = COMBAT_PHYSICALDAMAGE,
	percent = -10
},
{
	type = COMBAT_ENERGYDAMAGE,
	percent = -5
},
{
	type = COMBAT_EARTHDAMAGE,
	percent = 20
},
{
	type = COMBAT_FIREDAMAGE,
	percent = -10
},
{
	type = COMBAT_ICEDAMAGE,
	percent = 10
}
}

mType:register(monster)
