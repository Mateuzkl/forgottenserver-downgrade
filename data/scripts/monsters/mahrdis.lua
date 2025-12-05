local mType = Game.createMonsterType("Mahrdis")
local monster = {}
monster.description = "Mahrdis"
monster.experience = 3050
monster.outfit = {lookType = 90}

monster.health = 3900
monster.maxHealth = monster.health
monster.race = "undead"
monster.corpse = 6025
monster.speed = 340
monster.maxSummons = 4

monster.changeTarget = {interval = 5 * 1000, chance = 8}

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
	staticAttackChance = 90,
	canwalkonenergy = false,
	canwalkonpoison = false
}

monster.summons = {
{
	name = "Fire Elemental",
	chance = 30,
	interval = 2 * 1000
}
}

monster.voices = {
	interval = 5000,
	chance = 10,
	{text = "Ashes to ashes!", yell = false},
	{text = "Fire, Fire!", yell = false},
	{text = "The eternal flame demands its due!", yell = false},
	{text = "Burnnnnnnnnn!", yell = false},
	{text = "May my flames engulf you!", yell = false},
	{text = "This is why I'm hot.", yell = false},
}

monster.loot = {
{
	id = "burning heart",
	chance = 100000
},
{
	id = "gold coin",
	chance = 88738,
	maxCount = 230
},
{
	id = "small ruby",
	chance = 12255,
	maxCount = 3
},
{
	id = "great health potion",
	chance = 10213
},
{
	id = "life ring",
	chance = 6752
},
{
	id = "fire axe",
	chance = 936
},
{
	id = "red gem",
	chance = 624
},
{
	id = "holy falcon",
	chance = 142
},
{
	id = "mini mummy",
	chance = 113
},
{
	id = "phoenix shield",
	chance = 113
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
	name = "combat",
	interval = 1 * 1000,
	chance = 7,
	minDamage = -60,
	maxDamage = -600,
	range = 1,
	type = COMBAT_PHYSICALDAMAGE,
	effect = CONST_ME_MAGIC_RED
},
{
	name = "combat",
	interval = 1 * 1000,
	chance = 7,
	minDamage = -60,
	maxDamage = -600,
	range = 7,
	type = COMBAT_FIREDAMAGE,
	shootEffect = CONST_ANI_FIRE,
	effect = CONST_ME_FIREAREA
},
{
	name = "speed",
	interval = 2 * 1000,
	chance = 13,
	range = 7,
	speed = -850,
	duration = 50 * 1000,
	effect = CONST_ME_MAGIC_RED
},
{
	name = "combat",
	interval = 2 * 1000,
	chance = 34,
	minDamage = -80,
	maxDamage = -800,
	radius = 3,
	target = false,
	type = COMBAT_FIREDAMAGE,
	effect = CONST_ME_EXPLOSIONAREA
},
{
	name = "firefield",
	interval = 1 * 1000,
	chance = 12,
	radius = 4,
	target = false,
	effect = CONST_ME_YELLOWSPARK
},
{
	name = "combat",
	type = COMBAT_FIREDAMAGE,
	conditionType = CONDITION_FIRE,
	conditionMinDamage = -50,
	conditionMaxDamage = -500,
	conditionTickInterval = 2000,
	interval = 2 * 1000,
	chance = 13,
	length = 8,
	spread = 3,
	effect = CONST_ME_EXPLOSION
}
}

monster.defenses = {
	defense = 42,
	armor = 42,
	{
			name = "combat",
			interval = 2 * 1000,
			chance = 40,
			type = COMBAT_HEALING,
			minDamage = 150,
			maxDamage = 600,
			effect = CONST_ME_MAGIC_BLUE
		},
}

monster.elements = {
{
	type = COMBAT_ENERGYDAMAGE,
	percent = 20
},
{
	type = COMBAT_EARTHDAMAGE,
	percent = 20
},
{
	type = COMBAT_HOLYDAMAGE,
	percent = -20
},
{
	type = COMBAT_ICEDAMAGE,
	percent = -10
}
}

monster.immunities = {
{
	type = "fire",
	combat = true,
	condition = true
},
{
	type = "death",
	combat = true,
	condition = true
},
{
	type = "invisible",
	condition = true
}
}

mType:register(monster)
