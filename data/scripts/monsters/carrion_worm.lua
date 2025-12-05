local mType = Game.createMonsterType("Carrion Worm")
local monster = {}
monster.description = "a carrion worm"
monster.experience = 70
monster.outfit = {lookType = 192}

monster.health = 145
monster.maxHealth = monster.health
monster.race = "blood"
monster.corpse = 6069
monster.speed = 160

monster.flags = {
	summonable = false,
	attackable = true,
	hostile = true,
	illusionable = false,
	convinceable = true,
	pushable = false,
	canpushitems = true,
	canpushcreatures = false,
	targetDistance = 1,
	staticAttackChance = 80,
	canwalkonenergy = false,
	canwalkonfire = false,
	canwalkonpoison = false
}

monster.loot = {
{
	id = "gold coin",
	chance = 50000,
	maxCount = 45
},
{
	id = "meat",
	chance = 9460,
	maxCount = 2
},
{
	id = "worm",
	chance = 2100,
	maxCount = 2
},
{
	id = "carrion worm fang",
	chance = 10000
}
}

monster.attacks = {
{
	name = "melee",
	interval = 2 * 1000,
	attack = 45,
	skill = 70,
	effect = CONST_ME_DRAWBLOOD
}
}

monster.defenses = {
	defense = 15,
	armor = 15,
}

monster.elements = {
{
	type = COMBAT_EARTHDAMAGE,
	percent = 20
},
{
	type = COMBAT_ENERGYDAMAGE,
	percent = 5
},
{
	type = COMBAT_FIREDAMAGE,
	percent = -5
},
{
	type = COMBAT_ICEDAMAGE,
	percent = -5
}
}

mType:register(monster)
