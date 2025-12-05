local mType = Game.createMonsterType("Ghoul")
local monster = {}
monster.description = "a ghoul"
monster.experience = 85
monster.outfit = {lookType = 18}

monster.health = 100
monster.maxHealth = monster.health
monster.race = "blood"
monster.corpse = 5976
monster.speed = 144

monster.flags = {
	summonable = true,
	attackable = true,
	hostile = true,
	illusionable = true,
	convinceable = true,
	pushable = false,
	canpushitems = true,
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
	chance = 69832,
	maxCount = 30
},
{
	id = "rotten piece of cloth",
	chance = 14661
},
{
	id = "worm",
	chance = 9815,
	maxCount = 2
},
{
	id = "torch",
	chance = 5171
},
{
	id = "ghoul snack",
	chance = 5064
},
{
	id = "pile of grave earth",
	chance = 1028
},
{
	id = "scale armor",
	chance = 1012
},
{
	id = "viking helmet",
	chance = 1012
},
{
	id = "brown piece of cloth",
	chance = 1001
},
{
	id = "skull (item)",
	chance = 320
},
{
	id = "life ring",
	chance = 181
}
}

monster.attacks = {
{
	name = "melee",
	interval = 2 * 1000,
	attack = 70,
	skill = 70,
	effect = CONST_ME_DRAWBLOOD
},
{
	name = "combat",
	interval = 2 * 1000,
	chance = 10,
	minDamage = -15,
	maxDamage = -27,
	range = 1,
	radius = 1,
	target = true,
	type = COMBAT_LIFEDRAIN,
	effect = CONST_ME_SMALLCLOUDS
}
}

monster.defenses = {
	defense = 8,
	armor = 8,
	{
			name = "combat",
			interval = 2 * 1000,
			chance = 5,
			type = COMBAT_HEALING,
			minDamage = 9,
			maxDamage = 15,
			effect = CONST_ME_MAGIC_BLUE
		},
}

monster.elements = {
{
	type = COMBAT_ENERGYDAMAGE,
	percent = 30
},
{
	type = COMBAT_EARTHDAMAGE,
	percent = 20
},
{
	type = COMBAT_ICEDAMAGE,
	percent = 10
},
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
},
{
	type = "drunk",
	condition = true
},
{
	type = "paralyze",
	condition = true
},
{
	type = "invisible",
	condition = true
}
}

mType:register(monster)
