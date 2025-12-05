local mType = Game.createMonsterType("Frost Dragon Hatchling")
local monster = {}
monster.description = "a frost dragon hatchling"
monster.experience = 745
monster.outfit = {lookType = 283}

monster.health = 800
monster.maxHealth = monster.health
monster.race = "undead"
monster.corpse = 7969
monster.speed = 200

monster.changeTarget = {interval = 4 * 1000, chance = 10}

monster.flags = {
	summonable = false,
	attackable = true,
	hostile = true,
	illusionable = true,
	convinceable = false,
	pushable = false,
	canpushitems = true,
	canpushcreatures = true,
	targetDistance = 1,
	staticAttackChance = 90,
	canwalkonenergy = false
}

monster.voices = {
	interval = 5000,
	chance = 10,
	{text = "Rooawwrr", yell = false},
	{text = "Fchu?", yell = false},
}

monster.loot = {
{
	id = "gold coin",
	chance = 86750,
	maxCount = 55
},
{
	id = "dragon ham",
	chance = 79600
},
{
	id = "health potion",
	chance = 560
},
{
	id = "spellbook of enlightenment",
	chance = 400
},
{
	id = "frosty heart",
	chance = 5000
}
}

monster.attacks = {
{
	name = "melee",
	interval = 2 * 1000,
	attack = 160,
	skill = 70,
	effect = CONST_ME_DRAWBLOOD
},
{
	name = "combat",
	interval = 2 * 1000,
	chance = 10,
	minDamage = -60,
	maxDamage = -110,
	length = 5,
	spread = 2,
	type = COMBAT_ICEDAMAGE,
	effect = CONST_ME_ICEATTACK
},
{
	name = "combat",
	interval = 2 * 1000,
	chance = 15,
	minDamage = -60,
	maxDamage = -110,
	radius = 4,
	target = true,
	type = COMBAT_ICEDAMAGE,
	effect = CONST_ME_ICEAREA
},
{
	name = "speed",
	interval = 2 * 1000,
	chance = 15,
	radius = 4,
	target = true,
	speed = -600,
	duration = 12 * 1000,
	shootEffect = CONST_ANI_ICE,
	effect = CONST_ME_ICEAREA
}
}

monster.defenses = {
	defense = 15,
	armor = 15,
	{
			name = "combat",
			interval = 2 * 1000,
			chance = 15,
			type = COMBAT_HEALING,
			minDamage = 45,
			maxDamage = 50,
			effect = CONST_ME_MAGIC_BLUE
		},
}

monster.elements = {
{
	type = COMBAT_ENERGYDAMAGE,
	percent = -5
}
}

monster.immunities = {
{
	type = "fire",
	combat = true,
	condition = true
},
{
	type = "lifedrain",
	combat = true
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
	type = "invisible",
	condition = true
}
}

mType:register(monster)
