local mType = Game.createMonsterType("Big Boss Trolliver")
local monster = {}
monster.description = "Big Boss Trolliver"
monster.experience = 105
monster.outfit = {lookType = 281}

monster.health = 150
monster.maxHealth = monster.health
monster.race = "blood"
monster.corpse = 7926
monster.speed = 140

monster.flags = {
	summonable = false,
	attackable = true,
	hostile = true,
	illusionable = false,
	convinceable = false,
	pushable = true,
	canpushitems = false,
	canpushcreatures = false,
	targetDistance = 1,
	isboss = true
}

monster.loot = {
{
	id = "gold coin",
	chance = 6000,
	maxCount = 57
},
{
	id = "spear",
	chance = 2000,
	maxCount = 2
},
{
	id = "studded club",
	chance = 5000
},
{
	id = "meat",
	chance = 1500,
	maxCount = 3
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
	defense = 12,
	armor = 10,
}

monster.elements = {
{
	type = COMBAT_ENERGYDAMAGE,
	percent = 22
},
{
	type = COMBAT_HOLYDAMAGE,
	percent = 11
},
{
	type = COMBAT_EARTHDAMAGE,
	percent = -3
},
{
	type = COMBAT_DEATHDAMAGE,
	percent = -4
}
}

mType:register(monster)
