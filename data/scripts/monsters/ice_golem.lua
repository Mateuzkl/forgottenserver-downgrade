local mType = Game.createMonsterType("Ice Golem")
local monster = {}
monster.description = "an ice golem"
monster.experience = 295
monster.outfit = {lookType = 261}

monster.health = 385
monster.maxHealth = monster.health
monster.race = "undead"
monster.corpse = 7282
monster.speed = 195

monster.changeTarget = {interval = 2 * 1000, chance = 5}

monster.flags = {
	summonable = false,
	attackable = true,
	hostile = true,
	illusionable = false,
	convinceable = false,
	pushable = false,
	canpushitems = true,
	staticAttackChance = 50,
	targetDistance = 1,
	canwalkonenergy = false,
	canwalkonpoison = false
}

monster.voices = {
	interval = 2000,
	chance = 5,
	{text = "Chrrr.", yell = false},
	{text = "Crrrrk.", yell = false},
	{text = "Gnarr.", yell = false},
}

monster.loot = {
{
	id = "black pearl",
	chance = 1612
},
{
	id = "small diamond",
	chance = 66
},
{
	id = "small sapphire",
	chance = 578
},
{
	id = "gold coin",
	chance = 50000,
	maxCount = 100
},
{
	id = "gold coin",
	chance = 50000,
	maxCount = 3
},
{
	id = "ice rapier",
	chance = 400
},
{
	id = "strange helmet",
	chance = 444
},
{
	id = "shard",
	chance = 266
},
{
	id = 7441,
	chance = 5000
},
{
	id = "crystal sword",
	chance = 177
},
{
	id = "strong health potion",
	chance = 444
},
{
	id = 7902,
	chance = 111
},
{
	id = "frosty heart",
	chance = 11111
}
}

monster.attacks = {
{
	name = "melee",
	interval = 2 * 1000,
	attack = 220,
	skill = 70,
	effect = CONST_ME_DRAWBLOOD
},
{
	name = "speed",
	interval = 1 * 1000,
	chance = 13,
	length = 8,
	spread = 0,
	speed = -800,
	duration = 20 * 1000,
	effect = CONST_ANI_ENERGY
},
{
	name = "combat",
	interval = 1 * 1000,
	chance = 15,
	minDamage = -50,
	maxDamage = -85,
	range = 7,
	type = COMBAT_ICEDAMAGE,
	shootEffect = CONST_ANI_SMALLICE,
	effect = CONST_ME_ICEATTACK
}
}

monster.defenses = {
	defense = 26,
	armor = 25,
}

monster.elements = {
{
	type = COMBAT_PHYSICALDAMAGE,
	percent = 25
},
{
	type = COMBAT_ENERGYDAMAGE,
	percent = -20
}
}

monster.immunities = {
{
	type = "holy",
	combat = true,
	condition = true
},
{
	type = "death",
	combat = true,
	condition = true
},
{
	type = "fire",
	combat = true,
	condition = true
},
{
	type = "ice",
	combat = true,
	condition = true
},
{
	type = "invisible",
	condition = true
},
{
	type = "paralyze",
	condition = true
},
{
	type = "drunk",
	condition = true
}
}

mType:register(monster)
