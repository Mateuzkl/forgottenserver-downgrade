local mType = Game.createMonsterType("Thalas")
local monster = {}
monster.description = "Thalas"
monster.experience = 2950
monster.outfit = {lookType = 90}

monster.health = 4100
monster.maxHealth = monster.health
monster.race = "undead"
monster.corpse = 6025
monster.speed = 320
monster.maxSummons = 8

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
	canwalkonfire = false
}

monster.summons = {
{
	name = "Slime",
	chance = 100,
	interval = 2 * 1000
}
}

monster.voices = {
	interval = 5000,
	chance = 10,
	{text = "You will become a feast for my maggots!", yell = false},
}

monster.loot = {
{
	id = "cobrafang dagger",
	chance = 100000
},
{
	id = "gold coin",
	chance = 30000,
	maxCount = 100
},
{
	id = "gold coin",
	chance = 30000,
	maxCount = 100
},
{
	id = "gold coin",
	chance = 30000,
	maxCount = 38
},
{
	id = "poison dagger",
	chance = 21000
},
{
	id = "small emerald",
	chance = 9000,
	maxCount = 3
},
{
	id = "great health potion",
	chance = 8200
},
{
	id = 2169,
	chance = 5200
},
{
	id = "serpent sword",
	chance = 2700
},
{
	id = "djinn blade",
	chance = 1000
},
{
	id = "green gem",
	chance = 100
}
}

monster.attacks = {
{
	name = "melee",
	interval = 2 * 1000,
	attack = 900,
	skill = 70,
	effect = CONST_ME_DRAWBLOOD
},
{
	name = "combat",
	interval = 2 * 1000,
	chance = 25,
	minDamage = -150,
	maxDamage = -650,
	range = 7,
	type = COMBAT_EARTHDAMAGE,
	shootEffect = CONST_ANI_POISON,
	effect = CONST_ME_POISON
},
{
	name = "melee",
	interval = 3 * 1000,
	chance = 20,
	range = 7,
	radius = 1,
	target = true,
	attack = 650,
	skill = 70,
	effect = CONST_ME_POISON,
	shootEffect = CONST_ANI_POISON
},
{
	name = "speed",
	interval = 1 * 1000,
	chance = 6,
	range = 7,
	speed = -800,
	duration = 20 * 1000,
	effect = CONST_ME_MAGIC_RED
},
{
	name = "combat",
	type = COMBAT_EARTHDAMAGE,
	conditionType = CONDITION_POISON,
	conditionMinDamage = -34,
	conditionMaxDamage = -35,
	conditionTickInterval = 2000,
	interval = 1 * 1000,
	chance = 15,
	radius = 5,
	target = false,
	effect = CONST_ME_POISON
},
{
	name = "combat",
	interval = 3 * 1000,
	chance = 17,
	minDamage = -55,
	maxDamage = -550,
	length = 8,
	spread = 3,
	type = COMBAT_EARTHDAMAGE,
	effect = CONST_ME_POISON
}
}

monster.defenses = {
	defense = 40,
	armor = 40,
	{
			name = "combat",
			interval = 1 * 1000,
			chance = 20,
			type = COMBAT_HEALING,
			minDamage = 150,
			maxDamage = 450,
			effect = CONST_ME_MAGIC_BLUE
		},
}

monster.elements = {
{
	type = COMBAT_HOLYDAMAGE,
	percent = -20
},
{
	type = COMBAT_FIREDAMAGE,
	percent = -10
},
{
	type = COMBAT_ICEDAMAGE,
	percent = -10
},
{
	type = COMBAT_ENERGYDAMAGE,
	percent = 20
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
	type = "invisible",
	condition = true
}
}

mType:register(monster)
