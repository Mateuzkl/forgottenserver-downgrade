local mType = Game.createMonsterType("Mercury Blob")
local monster = {}
monster.description = "a mercury blob"
monster.experience = 180
monster.outfit = {lookType = 316}

monster.health = 150
monster.maxHealth = monster.health
monster.race = "undead"
monster.corpse = 9961
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
	canwalkonfire = false,
	canwalkonpoison = false
}

monster.summons = {
{
	name = "Mercury Blob",
	chance = 10,
	interval = 2 * 1000
}
}

monster.voices = {
	interval = 5000,
	chance = 10,
	{text = "Crackle", yell = false},
}

monster.loot = {
{
	id = "glob of mercury",
	chance = 17966
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
	name = "drunk",
	interval = 2 * 1000,
	chance = 10,
	range = 7,
	target = true,
	duration = 3 * 1000,
	effect = CONST_ME_STUN,
	shootEffect = CONST_ANI_HOLY
},
{
	name = "combat",
	interval = 2 * 1000,
	chance = 20,
	minDamage = -10,
	maxDamage = -30,
	range = 7,
	target = true,
	type = COMBAT_ENERGYDAMAGE,
	effect = CONST_ANI_ENERGY,
	shootEffect = CONST_ANI_ENERGY
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
	type = COMBAT_FIREDAMAGE,
	percent = 10
},
{
	type = COMBAT_EARTHDAMAGE,
	percent = 65
},
{
	type = COMBAT_ICEDAMAGE,
	percent = 15
},
{
	type = COMBAT_PHYSICALDAMAGE,
	percent = 5
},
{
	type = COMBAT_HOLYDAMAGE,
	percent = 65
}
}

monster.immunities = {
{
	type = "death",
	combat = true,
	condition = true
}
}

mType:register(monster)
