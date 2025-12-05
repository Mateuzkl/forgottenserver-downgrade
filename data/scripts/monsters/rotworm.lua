local mType = Game.createMonsterType("Rotworm")
local monster = {}
monster.description = "a rotworm"
monster.experience = 40
monster.outfit = {lookType = 26}

monster.health = 65
monster.maxHealth = monster.health
monster.race = "blood"
monster.corpse = 5967
monster.speed = 116

monster.flags = {
	summonable = false,
	attackable = true,
	hostile = true,
	illusionable = false,
	convinceable = true,
	pushable = false,
	canpushitems = false,
	canpushcreatures = false,
	targetDistance = 1,
	staticAttackChance = 70,
	canwalkonenergy = false,
	canwalkonfire = false,
	canwalkonpoison = false
}

monster.loot = {
{
	id = "gold coin",
	chance = 71834,
	maxCount = 17
},
{
	id = "ham",
	chance = 20104
},
{
	id = "meat",
	chance = 20006
},
{
	id = "lump of dirt",
	chance = 10004
},
{
	id = "mace",
	chance = 4441
},
{
	id = "worm",
	chance = 3057,
	maxCount = 3
},
{
	id = "sword",
	chance = 3047
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
	defense = 8,
	armor = 8,
}

mType:register(monster)
