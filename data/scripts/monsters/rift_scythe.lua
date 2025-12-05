local mType = Game.createMonsterType("Rift Scythe")
local monster = {}
monster.description = "Rift Scythe"
monster.experience = 2000
monster.outfit = {lookType = 300}

monster.health = 3600
monster.maxHealth = monster.health
monster.race = "undead"
monster.corpse = 0
monster.speed = 370

monster.changeTarget = {interval = 5 * 1000, chance = 10}

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
	staticAttackChance = 85,
	canwalkonenergy = false,
	canwalkonfire = false,
	canwalkonpoison = false
}

monster.attacks = {
{
	name = "melee",
	interval = 2 * 1000,
	attack = 979,
	skill = 70,
	effect = CONST_ME_DRAWBLOOD
},
{
	name = "combat",
	interval = 2 * 1000,
	chance = 60,
	minDamage = 0,
	maxDamage = -200,
	range = 7,
	target = true,
	type = COMBAT_DEATHDAMAGE,
	shootEffect = CONST_ANI_SUDDENDEATH,
	effect = CONST_ME_MORTAREA
},
{
	name = "combat",
	interval = 2 * 1000,
	chance = 50,
	minDamage = 0,
	maxDamage = -600,
	length = 7,
	spread = 0,
	type = COMBAT_LIFEDRAIN,
	effect = CONST_ME_REDSPARK
},
{
	name = "combat",
	interval = 2 * 1000,
	chance = 40,
	minDamage = 0,
	maxDamage = -395,
	radius = 4,
	target = false,
	type = COMBAT_PHYSICALDAMAGE,
	effect = CONST_ME_REDSPARK
},
{
	name = "combat",
	interval = 3 * 1000,
	chance = 60,
	minDamage = 0,
	maxDamage = -300,
	length = 7,
	spread = 3,
	type = COMBAT_PHYSICALDAMAGE,
	effect = CONST_ME_EXPLOSIONAREA
}
}

monster.defenses = {
	defense = 30,
	armor = 30,
	{
			name = "combat",
			interval = 1 * 1000,
			chance = 25,
			type = COMBAT_HEALING,
			minDamage = 100,
			maxDamage = 195,
			effect = CONST_ME_MAGIC_BLUE
		},
}

monster.elements = {
{
	type = COMBAT_ENERGYDAMAGE,
	percent = -10
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
	percent = -20
},
{
	type = COMBAT_DEATHDAMAGE,
	percent = 60
},
{
	type = COMBAT_FIREDAMAGE,
	percent = -20
}
}

monster.immunities = {
{
	type = "lifedrain",
	combat = true
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
