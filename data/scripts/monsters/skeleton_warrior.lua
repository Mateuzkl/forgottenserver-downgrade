local mType = Game.createMonsterType("Skeleton Warrior")
local monster = {}
monster.description = "a skeleton warrior"
monster.experience = 45
monster.outfit = {lookType = 298}

monster.health = 65
monster.maxHealth = monster.health
monster.race = "undead"
monster.corpse = 5972
monster.speed = 150

monster.flags = {
	summonable = true,
	attackable = true,
	hostile = true,
	illusionable = false,
	convinceable = true,
	pushable = false,
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
	id = "gold coin",
	chance = 43500,
	maxCount = 10
},
{
	id = 2230,
	chance = 50000
},
{
	id = 2376,
	chance = 1500
},
{
	id = "mace",
	chance = 2000
},
{
	id = "white mushroom",
	chance = 24000,
	maxCount = 3
},
{
	id = "brown mushroom",
	chance = 1700
},
{
	id = "pelvis bone",
	chance = 10630
}
}

monster.attacks = {
{
	name = "melee",
	interval = 2 * 1000,
	attack = 30,
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
	type = COMBAT_LIFEDRAIN,
	effect = CONST_ME_MAGIC_RED
}
}

monster.defenses = {
	defense = 15,
	armor = 15,
}

monster.elements = {
{
	type = COMBAT_HOLYDAMAGE,
	percent = -5
}
}

monster.immunities = {
{
	type = "death",
	combat = true,
	condition = true
}
}

mType:register(monster)
