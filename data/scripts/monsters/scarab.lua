local mType = Game.createMonsterType("Scarab")
local monster = {}
monster.description = "a scarab"
monster.experience = 120
monster.outfit = {lookType = 83}

monster.health = 320
monster.maxHealth = monster.health
monster.race = "venom"
monster.corpse = 6024
monster.speed = 160

monster.flags = {
	summonable = true,
	attackable = true,
	hostile = true,
	illusionable = true,
	convinceable = false,
	pushable = true,
	canpushitems = true,
	canpushcreatures = true,
	targetDistance = 1,
	staticAttackChance = 90,
	canwalkonenergy = false,
	canwalkonfire = false
}

monster.loot = {
{
	id = "gold coin",
	chance = 87000,
	maxCount = 52
},
{
	id = "meat",
	chance = 40000,
	maxCount = 2
},
{
	id = "piece of scarab shell",
	chance = 5000
},
{
	id = "scarab coin",
	chance = 1100
},
{
	id = "small amethyst",
	chance = 540
},
{
	id = "small emerald",
	chance = 400
},
{
	id = "daramian mace",
	chance = 300
}
}

monster.attacks = {
{
	name = "melee",
	interval = 2 * 1000,
	attack = 75,
	skill = 70,
	effect = CONST_ME_DRAWBLOOD
},
{
	name = "combat",
	interval = 2 * 1000,
	chance = 10,
	minDamage = 0,
	maxDamage = -35,
	range = 1,
	type = COMBAT_EARTHDAMAGE,
	shootEffect = CONST_ANI_POISON
},
{
	name = "poisonfield",
	interval = 2 * 1000,
	chance = 10,
	radius = 1,
	target = false
}
}

monster.defenses = {
	defense = 21,
	armor = 21,
	{
			name = "speed",
			interval = 2 * 1000,
			chance = 15,
			speed = 200,
			duration = 5 * 1000,
			effect = CONST_ME_MAGIC_RED
		},
}

monster.elements = {
{
	type = COMBAT_ENERGYDAMAGE,
	percent = 10
},
{
	type = COMBAT_ICEDAMAGE,
	percent = 20
},
{
	type = COMBAT_PHYSICALDAMAGE,
	percent = 5
},
{
	type = COMBAT_FIREDAMAGE,
	percent = -18
}
}

monster.immunities = {
{
	type = "earth",
	combat = true,
	condition = true
},
{
	type = "paralyze",
	condition = true
}
}

mType:register(monster)
