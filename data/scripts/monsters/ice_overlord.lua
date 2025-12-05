local mType = Game.createMonsterType("Ice Overlord")
local monster = {}
monster.description = "an Ice Overlord"
monster.experience = 2800
monster.outfit = {lookType = 11}

monster.health = 4000
monster.maxHealth = monster.health
monster.race = "undead"
monster.corpse = 8965
monster.speed = 390

monster.changeTarget = {interval = 20 * 1000, chance = 15}

monster.flags = {
	summonable = false,
	attackable = true,
	hostile = true,
	illusionable = false,
	convinceable = false,
	pushable = false,
	canpushitems = true,
	staticAttackChance = 85,
	targetDistance = 1,
	canwalkonenergy = false
}

monster.loot = {
{
	id = "gold coin",
	chance = 50000,
	maxCount = 38
},
{
	id = "platinum coin",
	chance = 50000,
	maxCount = 3
},
{
	id = "flawless ice crystal",
	chance = 100000
}
}

monster.attacks = {
{
	name = "melee",
	interval = 2 * 1000,
	attack = 400,
	skill = 70,
	effect = CONST_ME_DRAWBLOOD
},
{
	name = "speed",
	interval = 2 * 1000,
	chance = 18,
	radius = 6,
	target = false,
	speed = -800,
	duration = 5 * 1000,
	effect = CONST_ME_ICETORNADO
},
{
	name = "combat",
	interval = 1 * 1000,
	chance = 9,
	minDamage = -50,
	maxDamage = -400,
	range = 7,
	target = true,
	type = COMBAT_ICEDAMAGE,
	shootEffect = CONST_ANI_SMALLICE,
	effect = CONST_ME_ICEATTACK
}
}

monster.defenses = {
	defense = 30,
	armor = 30,
	{
			name = "combat",
			interval = 2 * 1000,
			chance = 15,
			type = COMBAT_HEALING,
			minDamage = 90,
			maxDamage = 150,
			effect = CONST_ME_MAGIC_BLUE
		},
}

monster.elements = {
{
	type = COMBAT_PHYSICALDAMAGE,
	percent = 50
},
{
	type = COMBAT_ENERGYDAMAGE,
	percent = -25
}
}

monster.immunities = {
{
	type = "fire",
	combat = true,
	condition = true
},
{
	type = "ice",
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
