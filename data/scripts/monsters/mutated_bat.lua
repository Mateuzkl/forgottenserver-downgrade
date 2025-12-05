local mType = Game.createMonsterType("Mutated Bat")
local monster = {}
monster.description = "a mutated bat"
monster.experience = 615
monster.outfit = {lookType = 307}

monster.health = 900
monster.maxHealth = monster.health
monster.race = "blood"
monster.corpse = 9829
monster.speed = 210

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
	canwalkonfire = false
}

monster.voices = {
	interval = 5000,
	chance = 10,
	{text = "Shriiiiiek", yell = false},
}

monster.loot = {
{
	id = "gold coin",
	chance = 92495,
	maxCount = 130
},
{
	id = "heavily rusted armor",
	chance = 12568
},
{
	id = "battle shield",
	chance = 8554
},
{
	id = "obsidian lance",
	chance = 6597
},
{
	id = "mutated bat ear",
	chance = 5205
},
{
	id = "star herb",
	chance = 4862
},
{
	id = "bat wing",
	chance = 4761,
	maxCount = 2
},
{
	id = "energy ring",
	chance = 1029
},
{
	id = "black pearl",
	chance = 908,
	maxCount = 3
},
{
	id = "rusted armor",
	chance = 726
},
{
	id = "small amethyst",
	chance = 625,
	maxCount = 2
},
{
	id = "batwing hat",
	chance = 141
},
{
	id = "black shield",
	chance = 121
},
{
	id = "mercenary sword",
	chance = 121
}
}

monster.attacks = {
{
	name = "melee",
	interval = 2 * 1000,
	attack = 168,
	skill = 70,
	effect = CONST_ME_DRAWBLOOD
},
{
	name = "combat",
	interval = 2 * 1000,
	chance = 15,
	minDamage = -70,
	maxDamage = -180,
	range = 7,
	type = COMBAT_EARTHDAMAGE,
	shootEffect = CONST_ANI_POISON
},
{
	name = "drown",
	interval = 2 * 1000,
	chance = 15,
	minDamage = -30,
	maxDamage = -90,
	radius = 6,
	target = false,
	effect = CONST_ME_WHITENOTE
},
{
	name = "combat",
	type = COMBAT_EARTHDAMAGE,
	conditionType = CONDITION_POISON,
	conditionMinDamage = -190,
	conditionMaxDamage = -240,
	conditionTickInterval = 2000,
	interval = 2 * 1000,
	chance = 15,
	target = false,
	length = 4,
	spread = 3,
	effect = CONST_ME_POISON
}
}

monster.defenses = {
	defense = 19,
	armor = 19,
	{
			name = "combat",
			interval = 2 * 1000,
			chance = 10,
			type = COMBAT_HEALING,
			minDamage = 80,
			maxDamage = 95,
			effect = CONST_ME_MAGIC_BLUE
		},
}

monster.elements = {
{
	type = COMBAT_FIREDAMAGE,
	percent = -10
}
}

monster.immunities = {
{
	type = "death",
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
	type = "invisible",
	condition = true
}
}

mType:register(monster)
