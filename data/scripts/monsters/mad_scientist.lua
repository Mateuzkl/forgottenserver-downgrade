local mType = Game.createMonsterType("Mad Scientist")
local monster = {}
monster.description = "a mad scientist"
monster.experience = 205
monster.outfit = {lookType = 133}

monster.health = 325
monster.maxHealth = monster.health
monster.race = "blood"
monster.corpse = 20439
monster.speed = 190

monster.changeTarget = {interval = 4 * 1000, chance = 10}

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

monster.voices = {
	interval = 5000,
	chance = 10,
	{text = "Die in the name of Science!", yell = false},
	{text = "You will regret interrupting my studies!", yell = false},
	{text = "Let me test this!", yell = false},
	{text = "I will study your corpse!", yell = false},
}

monster.loot = {
{
	id = "gold coin",
	chance = 30000,
	maxCount = 65
},
{
	id = "gold coin",
	chance = 30000,
	maxCount = 50
},
{
	id = 2162,
	chance = 2000
},
{
	id = "life crystal",
	chance = 2000
},
{
	id = "soulfire rune",
	chance = 6000
},
{
	id = "cookie",
	chance = 1200,
	maxCount = 5
},
{
	id = "white mushroom",
	chance = 8000,
	maxCount = 3
},
{
	id = 6324,
	chance = 820
},
{
	id = "mastermind potion",
	chance = 130
},
{
	id = "health potion",
	chance = 19000
},
{
	id = "mana potion",
	chance = 19000
},
{
	id = "small enchanted amethyst",
	chance = 470
}
}

monster.attacks = {
{
	name = "melee",
	interval = 2 * 1000,
	attack = 35,
	skill = 70,
	effect = CONST_ME_DRAWBLOOD
},
{
	name = "combat",
	interval = 2 * 1000,
	chance = 15,
	minDamage = -20,
	maxDamage = -56,
	range = 7,
	radius = 3,
	target = true,
	type = COMBAT_EARTHDAMAGE,
	shootEffect = CONST_ANI_SMALLEARTH,
	effect = CONST_ME_POFF
},
{
	name = "combat",
	interval = 2 * 1000,
	chance = 15,
	minDamage = -20,
	maxDamage = -36,
	type = COMBAT_EARTHDAMAGE,
	shootEffect = CONST_ANI_POISON,
	effect = CONST_ANI_ENERGY
},
{
	name = "speed",
	interval = 2 * 1000,
	chance = 10,
	range = 7,
	target = true,
	speed = -300,
	duration = 2 * 1000,
	shootEffect = CONST_ANI_POISON,
	effect = CONST_ME_SMALLPLANTS
}
}

monster.defenses = {
	defense = 15,
	armor = 15,
	{
			name = "combat",
			interval = 2 * 1000,
			chance = 15,
			type = COMBAT_HEALING,
			minDamage = 10,
			maxDamage = 30,
			effect = CONST_ME_MAGIC_BLUE
		},
}

monster.elements = {
{
	type = COMBAT_FIREDAMAGE,
	percent = 10
},
{
	type = COMBAT_EARTHDAMAGE,
	percent = 20
},
{
	type = COMBAT_ENERGYDAMAGE,
	percent = 20
},
{
	type = COMBAT_ICEDAMAGE,
	percent = 10
},
{
	type = COMBAT_HOLYDAMAGE,
	percent = 20
},
{
	type = COMBAT_DEATHDAMAGE,
	percent = -5
}
}

monster.immunities = {
{
	type = "invisible",
	condition = true
},
{
	type = "drown",
	condition = true
}
}

mType:register(monster)
