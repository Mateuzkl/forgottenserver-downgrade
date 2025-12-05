local mType = Game.createMonsterType("The Count")
local monster = {}
monster.description = "The Count"
monster.experience = 450
monster.outfit = {lookType = 287}

monster.health = 1250
monster.maxHealth = monster.health
monster.race = "undead"
monster.corpse = 8937
monster.speed = 370
monster.maxSummons = 1

monster.changeTarget = {interval = 5 * 1000, chance = 10}

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
	isboss = true
}

monster.summons = {
{
	name = "Banshee",
	chance = 50,
	interval = 4 * 1000
}
}

monster.loot = {
{
	id = "gold coin",
	chance = 40000,
	maxCount = 98
},
{
	id = "war hammer",
	chance = 2300
},
{
	id = "the ring of the count",
	chance = 100000
}
}

monster.attacks = {
{
	name = "melee",
	interval = 2 * 1000,
	attack = 945,
	skill = 70,
	effect = CONST_ME_DRAWBLOOD
},
{
	name = "combat",
	interval = 1 * 1000,
	chance = 9,
	minDamage = 0,
	maxDamage = -300,
	radius = 4,
	target = false,
	type = COMBAT_LIFEDRAIN,
	effect = CONST_ME_SMALLCLOUDS
}
}

monster.defenses = {
	defense = 30,
	armor = 30,
	{
			name = "combat",
			interval = 1 * 1000,
			chance = 25,
			type = COMBAT_HEALING,
			minDamage = 100,
			maxDamage = 195,
			effect = CONST_ME_MAGIC_BLUE
		},
	{
			name = "invisible",
			interval = 3 * 1000,
			chance = 30,
			effect = CONST_ME_MAGIC_BLUE
		},
}

monster.elements = {
{
	type = COMBAT_PHYSICALDAMAGE,
	percent = 20
},
{
	type = COMBAT_HOLYDAMAGE,
	percent = -20
}
}

monster.immunities = {
{
	type = "lifedrain",
	combat = true
},
{
	type = "death",
	combat = true,
	condition = true
},
{
	type = "invisible",
	condition = true
}
}

mType:register(monster)
