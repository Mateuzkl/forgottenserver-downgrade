local mType = Game.createMonsterType("Death Blob")
local monster = {}
monster.description = "a death blob"
monster.experience = 300
monster.outfit = {lookType = 315}

monster.health = 320
monster.maxHealth = monster.health
monster.race = "undead"
monster.corpse = 9960
monster.speed = 180
monster.maxSummons = 3

monster.flags = {
	summonable = false,
	attackable = true,
	hostile = true,
	illusionable = false,
	convinceable = false,
	pushable = false,
	canpushitems = true,
	canpushcreatures = false,
	targetDistance = 1,
	staticAttackChance = 85,
	canwalkonenergy = false,
	canwalkonfire = false
}

monster.summons = {
{
	name = "Death Blob",
	chance = 10,
	interval = 2 * 1000
}
}

monster.loot = {
{
	id = "glob of tar",
	chance = 14285
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
	chance = 25,
	minDamage = -35,
	maxDamage = -60,
	range = 3,
	radius = 4,
	target = false,
	type = COMBAT_PHYSICALDAMAGE,
	effect = CONST_ME_POFF
}
}

monster.defenses = {
	defense = 15,
	armor = 15,
	{
			name = "combat",
			interval = 2 * 1000,
			chance = 5,
			type = COMBAT_HEALING,
			minDamage = 20,
			maxDamage = 30,
			effect = CONST_ME_MAGIC_BLUE
		},
}

monster.elements = {
{
	type = COMBAT_PHYSICALDAMAGE,
	percent = 30
},
{
	type = COMBAT_ICEDAMAGE,
	percent = 10
},
{
	type = COMBAT_FIREDAMAGE,
	percent = -10
},
{
	type = COMBAT_HOLYDAMAGE,
	percent = -10
},
{
	type = COMBAT_ENERGYDAMAGE,
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
}
}

mType:register(monster)
