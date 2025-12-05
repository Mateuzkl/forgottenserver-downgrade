local mType = Game.createMonsterType("Nightstalker")
local monster = {}
monster.description = "a nightstalker"
monster.experience = 500
monster.outfit = {lookType = 320}

monster.health = 700
monster.maxHealth = monster.health
monster.race = "undead"
monster.corpse = 9915
monster.speed = 260

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
	canwalkonfire = false,
	canwalkonpoison = false
}

monster.voices = {
	interval = 5000,
	chance = 10,
	{text = "The sunlight is so depressing.", yell = false},
	{text = "Come with me, my child.", yell = false},
	{text = "I've been in the shadow under your bed last night.", yell = false},
	{text = "You never know what hides in the night.", yell = false},
	{text = "I remember your face - and I know where you sleep.", yell = false},
	{text = "Only the sweetest and cruelest dreams for you, my love.", yell = false},
}

monster.loot = {
{
	id = 2124,
	chance = 1030
},
{
	id = "gold coin",
	chance = 50000,
	maxCount = 100
},
{
	id = "gold coin",
	chance = 50000,
	maxCount = 10
},
{
	id = "platinum amulet",
	chance = 121
},
{
	id = "boots of haste",
	chance = 121
},
{
	id = "protection amulet",
	chance = 847
},
{
	id = "shadow herb",
	chance = 4761
},
{
	id = "haunted blade",
	chance = 318
},
{
	id = "chaos mace",
	chance = 121
},
{
	id = "strong mana potion",
	chance = 1612
},
{
	id = "spirit cloak",
	chance = 520
},
{
	id = "crystal of balance",
	chance = 127
}
}

monster.attacks = {
{
	name = "melee",
	interval = 2 * 1000,
	attack = 90,
	skill = 70,
	effect = CONST_ME_DRAWBLOOD
},
{
	name = "combat",
	interval = 2 * 1000,
	chance = 20,
	minDamage = -60,
	maxDamage = -170,
	range = 7,
	target = true,
	type = COMBAT_LIFEDRAIN,
	effect = CONST_ME_HOLYAREA
},
{
	name = "speed",
	interval = 2 * 1000,
	chance = 15,
	target = true,
	speed = -600,
	duration = 15 * 1000,
	effect = CONST_ME_SLEEP
}
}

monster.defenses = {
	defense = 15,
	armor = 15,
	{
			name = "speed",
			interval = 2 * 1000,
			chance = 15,
			speed = 240,
			duration = 5 * 1000,
			effect = CONST_ME_MAGIC_RED
		},
	{
			name = "invisible",
			interval = 2 * 1000,
			chance = 10,
			effect = CONST_ME_YELLOWBUBBLE
		},
	{
			name = "outfit",
			interval = 5 * 1000,
			chance = 10
		},
	{
			name = "outfit",
			interval = 5 * 1000,
			chance = 10
		},
	{
			name = "outfit",
			interval = 5 * 1000,
			chance = 10
		},
	{
			name = "outfit",
			interval = 5 * 1000,
			chance = 10
		},
	{
			name = "outfit",
			interval = 5 * 1000,
			chance = 10
		},
	{
			name = "outfit",
			interval = 5 * 1000,
			chance = 1
		},
}

monster.elements = {
{
	type = COMBAT_PHYSICALDAMAGE,
	percent = -5
},
{
	type = COMBAT_ENERGYDAMAGE,
	percent = -5
},
{
	type = COMBAT_DEATHDAMAGE,
	percent = -5
},
{
	type = COMBAT_ICEDAMAGE,
	percent = 20
},
{
	type = COMBAT_HOLYDAMAGE,
	percent = 20
}
}

monster.immunities = {
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
