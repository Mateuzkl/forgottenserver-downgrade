local mType = Game.createMonsterType("Wyvern")
local monster = {}
monster.description = "a wyvern"
monster.experience = 515
monster.outfit = {lookType = 239}

monster.health = 795
monster.maxHealth = monster.health
monster.race = "blood"
monster.corpse = 6302
monster.speed = 186

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
	canwalkonenergy = false,
	canwalkonfire = false
}

monster.voices = {
	interval = 5000,
	chance = 10,
	{text = "Shriiiek", yell = true},
}

monster.loot = {
{
	id = "gold coin",
	chance = 99981,
	maxCount = 90
},
{
	id = "dragon ham",
	chance = 60229
},
{
	id = "wyvern talisman",
	chance = 11990
},
{
	id = "small sapphire",
	chance = 4949
},
{
	id = "power bolt",
	chance = 3380
},
{
	id = "strong health potion",
	chance = 2473
},
{
	id = "wand of inferno",
	chance = 784
},
{
	id = "emerald bangle",
	chance = 590
},
{
	id = "wyvern fang",
	chance = 459
}
}

monster.attacks = {
{
	name = "melee",
	interval = 2 * 1000,
	attack = 120,
	skill = 70,
	effect = CONST_ME_DRAWBLOOD
},
{
	name = "combat",
	type = COMBAT_EARTHDAMAGE,
	conditionType = CONDITION_POISON,
	conditionMinDamage = -240,
	conditionMaxDamage = -240,
	conditionTickInterval = 2000,
	interval = 2 * 1000,
	chance = 15,
	length = 8,
	spread = 3,
	effect = CONST_ME_POISON
},
{
	name = "drunk",
	interval = 2 * 1000,
	chance = 10,
	length = 3,
	spread = 2,
	duration = 5 * 1000,
	effect = CONST_ME_REDNOTE
}
}

monster.defenses = {
	defense = 25,
	armor = 25,
	{
			name = "combat",
			interval = 2 * 1000,
			chance = 15,
			type = COMBAT_HEALING,
			minDamage = 45,
			maxDamage = 65,
			effect = CONST_ME_MAGIC_BLUE
		},
	{
			name = "speed",
			interval = 2 * 1000,
			chance = 15,
			speed = 300,
			duration = 5 * 1000,
			effect = CONST_ME_MAGIC_GREEN
		},
}

monster.elements = {
{
	type = COMBAT_ENERGYDAMAGE,
	percent = 20
},
{
	type = COMBAT_ICEDAMAGE,
	percent = 10
}
}

monster.immunities = {
{
	type = "drunk",
	condition = true
},
{
	type = "invisible",
	condition = true
},
{
	type = "earth",
	combat = true,
	condition = true
}
}

mType:register(monster)
