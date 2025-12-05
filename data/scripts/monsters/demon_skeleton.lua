local mType = Game.createMonsterType("Demon Skeleton")
local monster = {}
monster.description = "a demon skeleton"
monster.experience = 240
monster.outfit = {lookType = 37}

monster.health = 400
monster.maxHealth = monster.health
monster.race = "undead"
monster.corpse = 5963
monster.speed = 180

monster.changeTarget = {interval = 4 * 1000, chance = 10}

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
	canwalkonenergy = false
}

monster.loot = {
{
	id = "gold coin",
	chance = 97515,
	maxCount = 75
},
{
	id = "demonic skeletal hand",
	chance = 11978
},
{
	id = "throwing star",
	chance = 9982,
	maxCount = 3
},
{
	id = "health potion",
	chance = 9693,
	maxCount = 2
},
{
	id = "mana potion",
	chance = 5050
},
{
	id = "battle shield",
	chance = 4960
},
{
	id = "torch",
	chance = 4861
},
{
	id = "battle hammer",
	chance = 4061
},
{
	id = "iron helmet",
	chance = 3377
},
{
	id = "black pearl",
	chance = 2976
},
{
	id = "small ruby",
	chance = 1531
},
{
	id = "mysterious fetish",
	chance = 535
},
{
	id = "mind stone",
	chance = 469
},
{
	id = "guardian shield",
	chance = 113
}
}

monster.attacks = {
{
	name = "melee",
	interval = 2 * 1000,
	attack = 185,
	skill = 70,
	effect = CONST_ME_DRAWBLOOD
},
{
	name = "combat",
	interval = 2 * 1000,
	chance = 10,
	minDamage = -30,
	maxDamage = -50,
	range = 1,
	radius = 1,
	target = true,
	type = COMBAT_DEATHDAMAGE,
	effect = CONST_ME_SMALLCLOUDS
}
}

monster.defenses = {
	defense = 25,
	armor = 25,
}

monster.elements = {
{
	type = COMBAT_HOLYDAMAGE,
	percent = -25
}
}

monster.immunities = {
{
	type = "paralyze",
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
	type = "earth",
	combat = true,
	condition = true
},
{
	type = "drown",
	condition = true
},
{
	type = "lifedrain",
	combat = true
},
{
	type = "drunk",
	condition = true
}
}

mType:register(monster)
