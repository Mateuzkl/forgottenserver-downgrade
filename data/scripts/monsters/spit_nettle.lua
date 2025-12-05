local mType = Game.createMonsterType("Spit Nettle")
local monster = {}
monster.description = "a spit nettle"
monster.experience = 20
monster.outfit = {lookType = 221}

monster.health = 150
monster.maxHealth = monster.health
monster.race = "venom"
monster.corpse = 6062
monster.speed = 0

monster.changeTarget = {interval = 4 * 1000, chance = 20}

monster.flags = {
	summonable = false,
	attackable = true,
	hostile = true,
	illusionable = false,
	convinceable = false,
	pushable = false,
	canpushitems = false,
	canpushcreatures = false,
	targetDistance = 1,
	staticAttackChance = 90,
	canwalkonenergy = false,
	canwalkonfire = false,
	canwalkonpoison = false
}

monster.loot = {
{
	id = "shadow herb",
	chance = 10954
},
{
	id = "gold coin",
	chance = 10703,
	maxCount = 5
},
{
	id = "nettle spit",
	chance = 9840
},
{
	id = "sling herb",
	chance = 5556,
	maxCount = 2
},
{
	id = "grave flower",
	chance = 989
},
{
	id = "nettle blossom",
	chance = 910
},
{
	id = "seeds",
	chance = 361
}
}

monster.attacks = {
{
	name = "combat",
	interval = 1 * 1000,
	chance = 20,
	minDamage = -15,
	maxDamage = -40,
	range = 7,
	target = true,
	type = COMBAT_EARTHDAMAGE,
	shootEffect = CONST_ANI_POISON
},
{
	name = "combat",
	type = COMBAT_EARTHDAMAGE,
	conditionType = CONDITION_POISON,
	conditionMinDamage = -40,
	conditionMaxDamage = -100,
	conditionTickInterval = 2000,
	interval = 2 * 1000,
	chance = 15,
	range = 7,
	target = true,
	shootEffect = CONST_ANI_POISON
}
}

monster.defenses = {
	defense = 12,
	armor = 12,
	{
			name = "combat",
			interval = 2 * 1000,
			chance = 10,
			type = COMBAT_HEALING,
			minDamage = 15,
			maxDamage = 37,
			effect = CONST_ME_MAGIC_BLUE
		},
}

monster.elements = {
{
	type = COMBAT_ICEDAMAGE,
	percent = 20
},
{
	type = COMBAT_FIREDAMAGE,
	percent = -10
}
}

monster.immunities = {
{
	type = "energy",
	combat = true,
	condition = true
},
{
	type = "earth",
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
