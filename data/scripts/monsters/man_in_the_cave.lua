local mType = Game.createMonsterType("Man in the Cave")
local monster = {}
monster.description = "man in the cave"
monster.experience = 777
monster.outfit = {lookType = 128}

monster.health = 485
monster.maxHealth = monster.health
monster.race = "blood"
monster.corpse = 20446
monster.speed = 210
monster.maxSummons = 2

monster.changeTarget = {interval = 5 * 1000, chance = 8}

monster.flags = {
	summonable = false,
	attackable = true,
	hostile = true,
	illusionable = false,
	convinceable = false,
	pushable = false,
	canpushitems = true,
	canpushcreatures = false,
	targetDistance = 1,
	staticAttackChance = 90,
	isboss = true
}

monster.summons = {
{
	name = "Monk",
	chance = 20,
	interval = 2 * 1000
}
}

monster.voices = {
	interval = 2000,
	chance = 5,
	{text = "THE MONKS ARE MINE", yell = true},
	{text = "I will rope you up! All of you!", yell = false},
	{text = "You have been roped up!", yell = false},
	{text = "A MIC to rule them all!", yell = false},
}

monster.loot = {
{
	id = 2120,
	chance = 20000
},
{
	id = 2120,
	chance = 6666
},
{
	id = 2120,
	chance = 3333
},
{
	id = "gold coin",
	chance = 100000,
	maxCount = 27
},
{
	id = "amulet of loss",
	chance = 500
},
{
	id = "brown bread",
	chance = 4000
},
{
	id = "brown piece of cloth",
	chance = 2000
},
{
	id = "shard",
	chance = 4000
},
{
	id = "mercenary sword",
	chance = 6666
},
{
	id = "fur cap",
	chance = 1000
},
{
	id = "mammoth fur cape",
	chance = 6666
}
}

monster.attacks = {
{
	name = "melee",
	interval = 2 * 1000,
	attack = 105,
	skill = 70,
	effect = CONST_ME_DRAWBLOOD
},
{
	name = "combat",
	interval = 2 * 1000,
	chance = 20,
	minDamage = -10,
	maxDamage = -95,
	range = 7,
	type = COMBAT_PHYSICALDAMAGE,
	shootEffect = CONST_ANI_SMALLSTONE
},
{
	name = "combat",
	interval = 1 * 1000,
	chance = 100,
	minDamage = -20,
	maxDamage = -30,
	range = 1,
	type = COMBAT_LIFEDRAIN,
	effect = CONST_ME_MAGIC_RED
}
}

monster.defenses = {
	defense = 10,
	armor = 14,
}

monster.immunities = {
{
	type = "fire",
	combat = true,
	condition = true
},
{
	type = "lifedrain",
	combat = true
},
{
	type = "outfit",
	condition = true
},
{
	type = "drunk",
	condition = true
},
{
	type = "invisible",
	condition = true
}
}

mType:register(monster)
