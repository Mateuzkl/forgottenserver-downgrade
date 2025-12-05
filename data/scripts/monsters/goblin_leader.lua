local mType = Game.createMonsterType("Goblin Leader")
local monster = {}
monster.description = "a goblin leader"
monster.experience = 75
monster.outfit = {lookType = 61}

monster.health = 50
monster.maxHealth = monster.health
monster.race = "blood"
monster.corpse = 6002
monster.speed = 120

monster.changeTarget = {interval = 4 * 1000, chance = 10}

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
	interval = 1000,
	chance = 5,
	{text = "Go go, Gobo attack!!", yell = false},
	{text = "Me the greenest and the meanest!", yell = false},
	{text = "Me have power to crush you!", yell = false},
	{text = "Goblinkiller! Catch him !!", yell = false},
}

monster.loot = {
{
	id = "gold coin",
	chance = 49369,
	maxCount = 9
},
{
	id = "dagger",
	chance = 17498
},
{
	id = "fish",
	chance = 12989
},
{
	id = "bone",
	chance = 11545
},
{
	id = "small axe",
	chance = 10704
},
{
	id = "leather helmet",
	chance = 9862
},
{
	id = "short sword",
	chance = 9862
},
{
	id = "leather armor",
	chance = 7456
},
{
	id = "mouldy cheese",
	chance = 7276
},
{
	id = "bone club",
	chance = 4871
}
}

monster.attacks = {
{
	name = "melee",
	interval = 2 * 1000,
	attack = 50,
	skill = 70,
	effect = CONST_ME_DRAWBLOOD
},
{
	name = "combat",
	interval = 2 * 1000,
	chance = 15,
	minDamage = 0,
	maxDamage = -45,
	range = 7,
	type = COMBAT_PHYSICALDAMAGE,
	shootEffect = CONST_ANI_SMALLSTONE
}
}

monster.defenses = {
	defense = 7,
	armor = 7,
}

mType:register(monster)
