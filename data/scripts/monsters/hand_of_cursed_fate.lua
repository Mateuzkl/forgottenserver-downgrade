local mType = Game.createMonsterType("Hand Of Cursed Fate")
local monster = {}
monster.description = "a hand of cursed fate"
monster.experience = 5000
monster.outfit = {lookType = 230}

monster.health = 7500
monster.maxHealth = monster.health
monster.race = "blood"
monster.corpse = 6312
monster.speed = 260

monster.changeTarget = {interval = 4 * 1000, chance = 10}

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
	staticAttackChance = 20
}

monster.loot = {
{
	id = "gold coin",
	chance = 100000,
	maxCount = 267
},
{
	id = "platinum coin",
	chance = 98310,
	maxCount = 7
},
{
	id = "soul orb",
	chance = 30516
},
{
	id = "flask of demonic blood",
	chance = 29935
},
{
	id = "great mana potion",
	chance = 19632,
	maxCount = 2
},
{
	id = "ultimate health potion",
	chance = 18835
},
{
	id = "mind stone",
	chance = 15373
},
{
	id = "assassin star",
	chance = 15116,
	maxCount = 5
},
{
	id = "small sapphire",
	chance = 14413,
	maxCount = 4
},
{
	id = "demonic essence",
	chance = 11696
},
{
	id = "protection amulet",
	chance = 10249
},
{
	id = "yellow gem",
	chance = 5773
},
{
	id = "emerald bangle",
	chance = 5219
},
{
	id = "wand of inferno",
	chance = 4800
},
{
	id = "sudden death rune",
	chance = 4381,
	maxCount = 8
},
{
	id = "knight armor",
	chance = 3921
},
{
	id = "energy ring",
	chance = 2177
},
{
	id = "blue gem",
	chance = 1690
},
{
	id = "death ring",
	chance = 1312
},
{
	id = "violet gem",
	chance = 1001
},
{
	id = "platinum amulet",
	chance = 960
},
{
	id = "skull staff",
	chance = 933
},
{
	id = "book (orange)",
	chance = 879
},
{
	id = "crown armor",
	chance = 879
},
{
	id = "gold ingot",
	chance = 568
},
{
	id = "boots of haste",
	chance = 135
},
{
	id = "mysterious voodoo skull",
	chance = 108
},
{
	id = "abyss hammer",
	chance = 68
}
}

monster.attacks = {
{
	name = "melee",
	interval = 2 * 1000,
	attack = 520,
	skill = 70,
	effect = CONST_ME_DRAWBLOOD
},
{
	name = "combat",
	interval = 2 * 1000,
	chance = 15,
	minDamage = 0,
	maxDamage = -920,
	range = 1,
	type = COMBAT_MANADRAIN
},
{
	name = "drunk",
	interval = 2 * 1000,
	chance = 10,
	radius = 4,
	target = false,
	duration = 3 * 1000,
	effect = CONST_ME_SMALLCLOUDS
},
{
	name = "combat",
	interval = 2 * 1000,
	chance = 15,
	minDamage = -220,
	maxDamage = -880,
	range = 1,
	type = COMBAT_LIFEDRAIN,
	effect = CONST_ME_SMALLCLOUDS
}
}

monster.defenses = {
	defense = 53,
	armor = 53,
	{
			name = "speed",
			interval = 2 * 1000,
			chance = 15,
			speed = 1000,
			duration = 5 * 1000,
			effect = CONST_ME_MAGIC_RED
		},
	{
			name = "invisible",
			interval = 2 * 1000,
			chance = 10,
			effect = CONST_ME_MAGIC_BLUE
		},
	{
			name = "combat",
			interval = 2 * 1000,
			chance = 20,
			type = COMBAT_HEALING,
			minDamage = 100,
			maxDamage = 250,
			effect = CONST_ME_MAGIC_BLUE
		},
}

monster.elements = {
{
	type = COMBAT_ICEDAMAGE,
	percent = -10
},
{
	type = COMBAT_HOLYDAMAGE,
	percent = -25
}
}

monster.immunities = {
{
	type = "earth",
	combat = true,
	condition = true
},
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
	type = "death",
	combat = true,
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
