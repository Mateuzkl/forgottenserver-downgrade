local mType = Game.createMonsterType("Sibang")
local monster = {}
monster.description = "a sibang"
monster.experience = 105
monster.outfit = {lookType = 118}

monster.health = 225
monster.maxHealth = monster.health
monster.race = "blood"
monster.corpse = 6045
monster.speed = 214

monster.changeTarget = {interval = 4 * 1000, chance = 10}

monster.flags = {
	summonable = false,
	attackable = true,
	hostile = true,
	illusionable = true,
	convinceable = false,
	pushable = false,
	canpushitems = true,
	canpushcreatures = false,
	targetDistance = 4,
	staticAttackChance = 70,
	canwalkonenergy = false,
	canwalkonfire = false,
	canwalkonpoison = false
}

monster.voices = {
	interval = 5000,
	chance = 10,
	{text = "Eeeeek! Eeeeek", yell = false},
	{text = "Huh! Huh! Huh!", yell = false},
	{text = "Ahhuuaaa!", yell = false},
}

monster.loot = {
{
	id = "gold coin",
	chance = 88771,
	maxCount = 35
},
{
	id = "banana",
	chance = 30452,
	maxCount = 12
},
{
	id = "small stone",
	chance = 29967,
	maxCount = 3
},
{
	id = "orange",
	chance = 19971,
	maxCount = 5
},
{
	id = "banana sash",
	chance = 4948
},
{
	id = "coconut",
	chance = 1968,
	maxCount = 3
},
{
	id = "melon",
	chance = 1001
},
{
	id = "ape fur",
	chance = 988
}
}

monster.attacks = {
{
	name = "melee",
	interval = 2 * 1000,
	attack = 40,
	skill = 70,
	effect = CONST_ME_DRAWBLOOD
},
{
	name = "combat",
	interval = 2 * 1000,
	chance = 35,
	minDamage = 0,
	maxDamage = -55,
	range = 7,
	type = COMBAT_PHYSICALDAMAGE,
	shootEffect = CONST_ANI_SMALLSTONE
}
}

monster.defenses = {
	defense = 15,
	armor = 15,
	{
			name = "speed",
			interval = 2 * 1000,
			chance = 15,
			speed = 380,
			duration = 5 * 1000,
			effect = CONST_ME_MAGIC_RED
		},
}

monster.elements = {
{
	type = COMBAT_FIREDAMAGE,
	percent = 25
},
{
	type = COMBAT_HOLYDAMAGE,
	percent = 10
},
{
	type = COMBAT_ICEDAMAGE,
	percent = -15
},
{
	type = COMBAT_DEATHDAMAGE,
	percent = -5
}
}

monster.immunities = {
{
	type = "outfit",
	condition = true
},
{
	type = "drunk",
	condition = true
},
{
	type = "invisible",
	condition = true
}
}

mType:register(monster)
