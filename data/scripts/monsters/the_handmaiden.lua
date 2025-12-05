local mType = Game.createMonsterType("The Handmaiden")
local monster = {}
monster.description = "The Handmaiden"
monster.experience = 7500
monster.outfit = {lookType = 230}

monster.health = 19500
monster.maxHealth = monster.health
monster.race = "blood"
monster.corpse = 6312
monster.speed = 450

monster.changeTarget = {interval = 5 * 1000, chance = 8}

monster.flags = {
	summonable = false,
	attackable = true,
	hostile = true,
	illusionable = true,
	convinceable = false,
	pushable = false,
	canpushitems = true,
	canpushcreatures = true,
	targetDistance = 1,
	staticAttackChance = 70,
	isboss = true
}

monster.loot = {
{
	id = "the Handmaiden's protector",
	chance = 35000
}
}

monster.attacks = {
{
	name = "melee",
	interval = 2 * 1000,
	attack = 800,
	skill = 70,
	effect = CONST_ME_DRAWBLOOD
},
{
	name = "combat",
	interval = 2 * 1000,
	chance = 25,
	minDamage = -150,
	maxDamage = -800,
	range = 7,
	type = COMBAT_MANADRAIN,
	effect = CONST_ME_MAGIC_BLUE
},
{
	name = "drunk",
	interval = 1 * 1000,
	chance = 12,
	range = 1,
	target = true
}
}

monster.defenses = {
	defense = 35,
	armor = 25,
	{
			name = "speed",
			interval = 3 * 1000,
			chance = 12,
			speed = 380,
			duration = 8 * 1000,
			effect = CONST_ME_MAGIC_RED
		},
	{
			name = "invisible",
			interval = 4 * 1000,
			chance = 50,
			effect = CONST_ME_MAGIC_RED
		},
	{
			name = "combat",
			interval = 2 * 1000,
			chance = 50,
			type = COMBAT_HEALING,
			minDamage = 100,
			maxDamage = 250,
			effect = CONST_ME_MAGIC_BLUE
		},
	{
			name = "speed",
			interval = 1 * 1000,
			chance = 35,
			speed = 370,
			duration = 30 * 1000,
			effect = CONST_ME_MAGIC_RED
		},
}

monster.immunities = {
{
	type = "energy",
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
	type = "earth",
	combat = true,
	condition = true
},
{
	type = "lifedrain",
	combat = true
},
{
	type = "paralyze",
	condition = true
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
