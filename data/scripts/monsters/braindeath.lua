local mType = Game.createMonsterType("Braindeath")
local monster = {}
monster.description = "a braindeath"
monster.experience = 985
monster.outfit = {lookType = 256}

monster.health = 1225
monster.maxHealth = monster.health
monster.race = "venom"
monster.corpse = 7256
monster.speed = 218
monster.maxSummons = 2

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
	targetDistance = 4,
	staticAttackChance = 80,
	canwalkonenergy = true,
	canwalkonfire = true,
	canwalkonpoison = true
}

monster.summons = {
{
	name = "Vampire",
	chance = 10,
	interval = 2 * 1000
}
}

monster.voices = {
	interval = 5000,
	chance = 10,
	{text = "You have disturbed my thoughts!", yell = false},
	{text = "Let me turn you into something more useful!", yell = false},
	{text = "Let me taste your brain!", yell = false},
	{text = "You will be punished!", yell = false},
}

monster.loot = {
{
	id = "gold coin",
	chance = 99448,
	maxCount = 90
},
{
	id = "bone sword",
	chance = 14985
},
{
	id = "sniper arrow",
	chance = 9593,
	maxCount = 4
},
{
	id = "steel shield",
	chance = 5899
},
{
	id = "piece of dead brain",
	chance = 5041
},
{
	id = "bonelord eye",
	chance = 2967
},
{
	id = "clerical mace",
	chance = 1965
},
{
	id = "haunted blade",
	chance = 1446
},
{
	id = "spellbook",
	chance = 958
},
{
	id = "spiked squelcher",
	chance = 178
},
{
	id = "bonelord shield",
	chance = 102
},
{
	id = "bonelord helmet",
	chance = 99
}
}

monster.attacks = {
{
	name = "melee",
	interval = 2 * 1000,
	attack = 100,
	skill = 70,
	effect = CONST_ME_DRAWBLOOD
},
{
	name = "combat",
	interval = 2 * 1000,
	chance = 10,
	minDamage = -93,
	maxDamage = -170,
	range = 7,
	type = COMBAT_ENERGYDAMAGE,
	shootEffect = CONST_ANI_ENERGY
},
{
	name = "combat",
	interval = 2 * 1000,
	chance = 10,
	minDamage = -75,
	maxDamage = -125,
	range = 7,
	type = COMBAT_FIREDAMAGE,
	shootEffect = CONST_ANI_FIRE
},
{
	name = "combat",
	interval = 2 * 1000,
	chance = 10,
	minDamage = -85,
	maxDamage = -170,
	range = 7,
	type = COMBAT_DEATHDAMAGE,
	shootEffect = CONST_ANI_SUDDENDEATH,
	effect = CONST_ME_SMALLCLOUDS
},
{
	name = "combat",
	interval = 2 * 1000,
	chance = 10,
	minDamage = -65,
	maxDamage = -125,
	range = 7,
	type = COMBAT_EARTHDAMAGE,
	shootEffect = CONST_ANI_POISON
},
{
	name = "combat",
	interval = 2 * 1000,
	chance = 10,
	minDamage = -75,
	maxDamage = -85,
	range = 7,
	type = COMBAT_LIFEDRAIN,
	effect = CONST_ME_MAGIC_RED
},
{
	name = "combat",
	interval = 2 * 1000,
	chance = 10,
	minDamage = 0,
	maxDamage = -155,
	range = 7,
	type = COMBAT_MANADRAIN
}
}

monster.defenses = {
	defense = 12,
	armor = 12,
	{
			name = "combat",
			interval = 2 * 1000,
			chance = 15,
			type = COMBAT_HEALING,
			minDamage = 150,
			maxDamage = 200,
			effect = CONST_ME_MAGIC_BLUE
		},
	{
			name = "speed",
			interval = 2 * 1000,
			chance = 15,
			speed = 260,
			duration = 5 * 1000,
			effect = CONST_ME_MAGIC_RED
		},
}

monster.elements = {
{
	type = COMBAT_PHYSICALDAMAGE,
	percent = 15
},
{
	type = COMBAT_ENERGYDAMAGE,
	percent = 10
},
{
	type = COMBAT_FIREDAMAGE,
	percent = -15
},
{
	type = COMBAT_ICEDAMAGE,
	percent = 20
},
{
	type = COMBAT_HOLYDAMAGE,
	percent = -20
}
}

monster.immunities = {
{
	type = "earth",
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
