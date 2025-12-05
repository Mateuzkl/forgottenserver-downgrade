local mType = Game.createMonsterType("Dworc Voodoomaster")
local monster = {}
monster.description = "a dworc voodoomaster"
monster.experience = 55
monster.outfit = {lookType = 214}

monster.health = 80
monster.maxHealth = monster.health
monster.race = "blood"
monster.corpse = 6055
monster.speed = 150

monster.changeTarget = {interval = 4 * 1000, chance = 10}

monster.flags = {
	summonable = false,
	attackable = true,
	hostile = true,
	illusionable = true,
	convinceable = false,
	pushable = true,
	canpushitems = false,
	canpushcreatures = false,
	targetDistance = 4,
	staticAttackChance = 80,
	canwalkonenergy = false,
	canwalkonfire = false
}

monster.voices = {
	interval = 5000,
	chance = 10,
	{text = "Brak brrretz!", yell = false},
	{text = "Grow truk grrrrr.", yell = false},
	{text = "Prek tars, dekklep zurk.", yell = false},
}

monster.loot = {
{
	id = "gold coin",
	chance = 74835,
	maxCount = 17
},
{
	id = "leather armor",
	chance = 10093
},
{
	id = "bone",
	chance = 5812
},
{
	id = "torch",
	chance = 5547
},
{
	id = "big bone",
	chance = 3066
},
{
	id = "skull (item)",
	chance = 1973,
	maxCount = 3
},
{
	id = "poison dagger",
	chance = 1009
},
{
	id = "health potion",
	chance = 586
},
{
	id = "strange symbol",
	chance = 503
},
{
	id = "tribal mask",
	chance = 486
},
{
	id = "voodoo doll",
	chance = 120
}
}

monster.attacks = {
{
	name = "melee",
	interval = 2 * 1000,
	attack = 20,
	skill = 70,
	effect = CONST_ME_DRAWBLOOD
},
{
	name = "combat",
	interval = 2 * 1000,
	chance = 10,
	minDamage = 0,
	maxDamage = -40,
	range = 1,
	type = COMBAT_LIFEDRAIN,
	effect = CONST_ME_MAGIC_RED
},
{
	name = "speed",
	interval = 2 * 1000,
	chance = 10,
	range = 7,
	speed = -800,
	duration = 5 * 1000,
	effect = CONST_ME_MAGIC_RED
},
{
	name = "drunk",
	interval = 2 * 1000,
	chance = 10,
	range = 7,
	effect = CONST_ME_TELEPORT
},
{
	name = "outfit",
	interval = 2 * 1000,
	chance = 10,
	range = 7,
	duration = 5 * 1000,
	effect = CONST_ME_MAGIC_BLUE
},
{
	name = "combat",
	interval = 2 * 1000,
	chance = 10,
	minDamage = -6,
	maxDamage = -18,
	radius = 6,
	target = false,
	type = COMBAT_EARTHDAMAGE,
	effect = CONST_ME_GREENBUBBLE
},
{
	name = "poisonfield",
	interval = 2 * 1000,
	chance = 10,
	range = 7,
	radius = 1,
	target = true
}
}

monster.defenses = {
	defense = 3,
	armor = 3,
	{
			name = "combat",
			interval = 2 * 1000,
			chance = 20,
			type = COMBAT_HEALING,
			minDamage = 3,
			maxDamage = 9,
			effect = CONST_ME_MAGIC_BLUE
		},
	{
			name = "speed",
			interval = 2 * 1000,
			chance = 15,
			speed = 200,
			duration = 4 * 1000,
			effect = CONST_ME_MAGIC_RED
		},
	{
			name = "invisible",
			interval = 2 * 1000,
			chance = 15,
			effect = CONST_ME_MAGIC_BLUE
		},
}

monster.elements = {
{
	type = COMBAT_HOLYDAMAGE,
	percent = 35
},
{
	type = COMBAT_FIREDAMAGE,
	percent = -15
},
{
	type = COMBAT_DEATHDAMAGE,
	percent = -10
},
{
	type = COMBAT_ICEDAMAGE,
	percent = -10
}
}

monster.immunities = {
{
	type = "earth",
	combat = true,
	condition = true
}
}

mType:register(monster)
