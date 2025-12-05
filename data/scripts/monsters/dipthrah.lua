local mType = Game.createMonsterType("Dipthrah")
local monster = {}
monster.description = "Dipthrah"
monster.experience = 2900
monster.outfit = {lookType = 87}

monster.health = 4200
monster.maxHealth = monster.health
monster.race = "undead"
monster.corpse = 6031
monster.speed = 320
monster.maxSummons = 4

monster.changeTarget = {interval = 5 * 1000, chance = 8}

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
	canwalkonenergy = false,
	canwalkonfire = false,
	canwalkonpoison = false
}

monster.summons = {
{
	name = "Priestess",
	chance = 15,
	interval = 2 * 1000
}
}

monster.voices = {
	interval = 5000,
	chance = 10,
	{text = "Come closer to learn the final lesson.", yell = false},
	{text = "You can't escape death forever.", yell = false},
	{text = "Undeath will shatter my shackles.", yell = false},
	{text = "You don't need this magic anymore.", yell = false},
}

monster.loot = {
{
	id = "ornamented ankh",
	chance = 100000
},
{
	id = "gold coin",
	chance = 90981,
	maxCount = 226
},
{
	id = "small sapphire",
	chance = 9806,
	maxCount = 3
},
{
	id = "great mana potion",
	chance = 8927
},
{
	id = "energy ring",
	chance = 4857
},
{
	id = "mind stone",
	chance = 925
},
{
	id = "blue gem",
	chance = 833
},
{
	id = "ankh",
	chance = 601
},
{
	id = "skull staff",
	chance = 555
},
{
	id = "mini mummy",
	chance = 93
},
{
	id = "pharaoh sword",
	chance = 93
}
}

monster.attacks = {
{
	name = "melee",
	interval = 2 * 1000,
	attack = 200,
	skill = 70,
	effect = CONST_ME_DRAWBLOOD
},
{
	name = "combat",
	interval = 4 * 1000,
	chance = 20,
	minDamage = -100,
	maxDamage = -800,
	range = 1,
	type = COMBAT_LIFEDRAIN
},
{
	name = "combat",
	interval = 2 * 1000,
	chance = 15,
	minDamage = -100,
	maxDamage = -500,
	range = 7,
	type = COMBAT_MANADRAIN,
	effect = CONST_ME_MAGIC_RED
},
{
	name = "speed",
	interval = 1 * 1000,
	chance = 15,
	range = 7,
	speed = -650,
	duration = 50 * 1000,
	effect = CONST_ME_MAGIC_RED
},
{
	name = "drunk",
	interval = 1 * 1000,
	chance = 12,
	radius = 7,
	target = false,
	effect = CONST_ME_BLUEBUBBLE
},
{
	name = "melee",
	interval = 3 * 1000,
	chance = 34,
	radius = 3,
	target = false,
	attack = 600,
	skill = 70,
	effect = CONST_ME_BLUEBUBBLE
}
}

monster.defenses = {
	defense = 25,
	armor = 25,
	{
			name = "combat",
			interval = 1 * 1000,
			chance = 25,
			type = COMBAT_HEALING,
			minDamage = 100,
			maxDamage = 200,
			effect = CONST_ME_MAGIC_BLUE
		},
}

monster.elements = {
{
	type = COMBAT_HOLYDAMAGE,
	percent = -10
},
{
	type = COMBAT_ENERGYDAMAGE,
	percent = 20
},
{
	type = COMBAT_EARTHDAMAGE,
	percent = 20
}
}

monster.immunities = {
{
	type = "physical",
	combat = true,
	condition = true
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
