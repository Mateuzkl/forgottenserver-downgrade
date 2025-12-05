local mType = Game.createMonsterType("Rotworm Queen")
local monster = {}
monster.description = "a rotworm queen"
monster.experience = 75
monster.outfit = {lookType = 295}

monster.health = 105
monster.maxHealth = monster.health
monster.race = "blood"
monster.corpse = 8947
monster.speed = 126

monster.flags = {
	summonable = false,
	attackable = true,
	hostile = true,
	illusionable = false,
	convinceable = false,
	pushable = false,
	canpushitems = false,
	staticAttackChance = 50,
	targetDistance = 1,
	isboss = true
}

monster.loot = {
{
	id = "gold coin",
	chance = 100000,
	maxCount = 47
},
{
	id = "worm",
	chance = 20000,
	maxCount = 45
},
{
	id = "gland",
	chance = 3333
}
}

monster.attacks = {
{
	name = "melee",
	interval = 2 * 1000,
	attack = 80,
	skill = 70,
	effect = CONST_ME_DRAWBLOOD
}
}

monster.defenses = {
	defense = 15,
	armor = 10,
}

mType:register(monster)
