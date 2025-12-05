local mType = Game.createMonsterType("Skeleton")
local monster = {}
monster.description = "a skeleton"
monster.experience = 35
monster.outfit = {lookType = 33}

monster.health = 50
monster.maxHealth = monster.health
monster.race = "undead"
monster.corpse = 5972
monster.speed = 154

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

monster.loot = {
{
	id = "bone",
	chance = 50915
},
{
	id = "gold coin",
	chance = 44978,
	maxCount = 10
},
{
	id = "torch",
	chance = 10285
},
{
	id = "pelvis bone",
	chance = 10178
},
{
	id = "viking helmet",
	chance = 7687
},
{
	id = "hatchet",
	chance = 5375
},
{
	id = "mace",
	chance = 4625
},
{
	id = "sword",
	chance = 2107
},
{
	id = "brass shield",
	chance = 920
}
}

monster.attacks = {
{
	name = "melee",
	interval = 2 * 1000,
	attack = 17,
	skill = 70,
	effect = CONST_ME_DRAWBLOOD
},
{
	name = "combat",
	interval = 2 * 1000,
	chance = 15,
	minDamage = -7,
	maxDamage = -13,
	range = 1,
	type = COMBAT_LIFEDRAIN
}
}

monster.defenses = {
	defense = 2,
	armor = 2,
}

monster.elements = {
{
	type = COMBAT_HOLYDAMAGE,
	percent = -25
}
}

monster.immunities = {
{
	type = "death",
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
}
}

mType:register(monster)
