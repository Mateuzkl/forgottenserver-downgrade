local mType = Game.createMonsterType("Goblin")
local monster = {}
monster.description = "a goblin"
monster.experience = 25
monster.outfit = {lookType = 61}

monster.health = 50
monster.maxHealth = monster.health
monster.race = "blood"
monster.corpse = 6002
monster.speed = 120

monster.flags = {
	summonable = true,
	attackable = true,
	hostile = true,
	illusionable = true,
	convinceable = true,
	pushable = true,
	canpushitems = false,
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
	{text = "Me have him!", yell = false},
	{text = "Zig Zag! Gobo attack!", yell = false},
	{text = "Help! Goblinkiller!", yell = false},
	{text = "Bugga! Bugga!", yell = false},
	{text = "Me green, me mean!", yell = false},
}

monster.loot = {
{
	id = "gold coin",
	chance = 50250,
	maxCount = 9
},
{
	id = "small stone",
	chance = 15265
},
{
	id = "fish",
	chance = 13004
},
{
	id = "small axe",
	chance = 9863
},
{
	id = "short sword",
	chance = 8832
},
{
	id = "bone club",
	chance = 4934
},
{
	id = "leather armor",
	chance = 2514
},
{
	id = "leather helmet",
	chance = 1947
},
{
	id = "dagger",
	chance = 1795
},
{
	id = "bone",
	chance = 1065
},
{
	id = "mouldy cheese",
	chance = 999
},
{
	id = "goblin ear",
	chance = 951
}
}

monster.attacks = {
{
	name = "melee",
	interval = 2 * 1000,
	attack = 10,
	skill = 70,
	effect = CONST_ME_DRAWBLOOD
},
{
	name = "combat",
	interval = 2 * 1000,
	chance = 10,
	minDamage = 0,
	maxDamage = -25,
	range = 7,
	type = COMBAT_PHYSICALDAMAGE,
	shootEffect = CONST_ANI_SMALLSTONE
}
}

monster.defenses = {
	defense = 6,
	armor = 6,
}

monster.elements = {
{
	type = COMBAT_ENERGYDAMAGE,
	percent = 20
},
{
	type = COMBAT_HOLYDAMAGE,
	percent = 20
},
{
	type = COMBAT_EARTHDAMAGE,
	percent = -10
},
{
	type = COMBAT_DEATHDAMAGE,
	percent = -10
}
}

mType:register(monster)
