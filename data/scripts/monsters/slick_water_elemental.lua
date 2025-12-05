local mType = Game.createMonsterType("Slick Water Elemental")
local monster = {}
monster.description = "a slick water elemental"
monster.experience = 450
monster.outfit = {lookType = 286}

monster.health = 550
monster.maxHealth = monster.health
monster.race = "undead"
monster.corpse = 8965
monster.speed = 280

monster.changeTarget = {interval = 20 * 1000, chance = 15}

monster.flags = {
	summonable = false,
	attackable = true,
	hostile = true,
	illusionable = false,
	convinceable = false,
	pushable = false,
	canpushitems = true,
	staticAttackChance = 90,
	targetDistance = 1,
	canwalkonenergy = false
}

monster.voices = {
	interval = 5000,
	chance = 10,
	{text = "Blubb", yell = false},
	{text = "Splipsh Splash", yell = false},
}

monster.loot = {
{
	id = "gold coin",
	chance = 22500,
	maxCount = 70
},
{
	id = "gold coin",
	chance = 22500,
	maxCount = 60
},
{
	id = "shiver arrow",
	chance = 2575,
	maxCount = 3
},
{
	id = "iced soil",
	chance = 6000
}
}

monster.attacks = {
{
	name = "melee",
	interval = 2 * 1000,
	attack = 175,
	skill = 70,
	effect = CONST_ME_DRAWBLOOD
},
{
	name = "combat",
	interval = 2 * 1000,
	chance = 20,
	minDamage = 0,
	maxDamage = -130,
	range = 7,
	target = true,
	type = COMBAT_EARTHDAMAGE,
	shootEffect = CONST_ANI_EARTH
},
{
	name = "combat",
	interval = 1 * 1000,
	chance = 10,
	minDamage = 0,
	maxDamage = -220,
	range = 6,
	target = true,
	type = COMBAT_ICEDAMAGE,
	shootEffect = CONST_ANI_SNOWBALL
},
{
	name = "combat",
	interval = 2 * 1000,
	chance = 18,
	minDamage = 0,
	maxDamage = -103,
	range = 4,
	target = true,
	type = COMBAT_ICEDAMAGE,
	shootEffect = CONST_ANI_SMALLICE
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
	percent = 40
}
}

monster.immunities = {
{
	type = "ice",
	combat = true,
	condition = true
},
{
	type = "drown",
	condition = true
}
}

mType:register(monster)
