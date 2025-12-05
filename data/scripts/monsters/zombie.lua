local mType = Game.createMonsterType("Zombie")
local monster = {}
monster.description = "a zombie"
monster.experience = 280
monster.outfit = {lookType = 311}

monster.health = 500
monster.maxHealth = monster.health
monster.race = "blood"
monster.corpse = 9875
monster.speed = 180

monster.changeTarget = {interval = 4 * 1000, chance = 10}

monster.flags = {
	summonable = false,
	attackable = true,
	hostile = true,
	illusionable = false,
	convinceable = false,
	pushable = false,
	canpushitems = true,
	canpushcreatures = true,
	targetDistance = 1,
	staticAttackChance = 90,
	canwalkonfire = false
}

monster.voices = {
	interval = 5000,
	chance = 10,
	{text = "Mst.... klll....", yell = false},
	{text = "Whrrrr... ssss.... mmm.... grrrrl", yell = false},
	{text = "Dnnnt... cmmm... clsrrr....", yell = false},
	{text = "Httt.... hmnnsss...", yell = false},
}

monster.loot = {
{
	id = "gold coin",
	chance = 82036,
	maxCount = 65
},
{
	id = "brass helmet",
	chance = 9793
},
{
	id = "mace",
	chance = 7847
},
{
	id = "battle hammer",
	chance = 6856
},
{
	id = "heavily rusted armor",
	chance = 5790
},
{
	id = "steel helmet",
	chance = 4799
},
{
	id = "halberd",
	chance = 3802
},
{
	id = "life ring",
	chance = 960
},
{
	id = "mana potion",
	chance = 748
},
{
	id = "simple dress",
	chance = 530
}
}

monster.attacks = {
{
	name = "melee",
	interval = 2 * 1000,
	attack = 130,
	skill = 70,
	effect = CONST_ME_DRAWBLOOD
},
{
	name = "combat",
	interval = 2 * 1000,
	chance = 10,
	minDamage = -14,
	maxDamage = -23,
	range = 1,
	target = true,
	type = COMBAT_MANADRAIN
},
{
	name = "combat",
	interval = 2 * 1000,
	chance = 15,
	minDamage = -15,
	maxDamage = -24,
	range = 7,
	target = true,
	type = COMBAT_LIFEDRAIN,
	effect = CONST_ME_MAGIC_RED
},
{
	name = "combat",
	interval = 2 * 1000,
	chance = 15,
	minDamage = -30,
	maxDamage = -49,
	range = 1,
	target = true,
	type = COMBAT_DEATHDAMAGE,
	effect = CONST_ME_SMALLCLOUDS
}
}

monster.defenses = {
	defense = 15,
	armor = 15,
}

monster.elements = {
{
	type = COMBAT_FIREDAMAGE,
	percent = 50
}
}

monster.immunities = {
{
	type = "death",
	combat = true,
	condition = true
},
{
	type = "energy",
	combat = true,
	condition = true
},
{
	type = "ice",
	combat = true,
	condition = true
},
{
	type = "earth",
	combat = true,
	condition = true
},
{
	type = "drown",
	condition = true
},
{
	type = "drunk",
	condition = true
},
{
	type = "lifedrain",
	combat = true
},
{
	type = "paralyze",
	condition = true
}
}

mType:register(monster)
