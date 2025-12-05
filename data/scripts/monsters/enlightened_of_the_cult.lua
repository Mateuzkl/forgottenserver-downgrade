local mType = Game.createMonsterType("Enlightened of the Cult")
local monster = {}
monster.description = "an enlightened of the cult"
monster.experience = 500
monster.outfit = {lookType = 193}

monster.health = 700
monster.maxHealth = monster.health
monster.race = "blood"
monster.corpse = 20391
monster.speed = 210
monster.maxSummons = 2

monster.changeTarget = {interval = 4 * 1000, chance = 10}

monster.flags = {
	summonable = false,
	attackable = true,
	hostile = true,
	illusionable = false,
	convinceable = false,
	pushable = false,
	canpushitems = true,
	canpushcreatures = true,
	staticAttackChance = 50,
	targetDistance = 4,
	canwalkonenergy = false,
	canwalkonfire = false,
	canwalkonpoison = false
}

monster.summons = {
{
	name = "Crypt Shambler",
	chance = 10,
	interval = 2 * 1000
},
{
	name = "Ghost",
	chance = 10,
	interval = 2 * 1000
}
}

monster.voices = {
	interval = 5000,
	chance = 10,
	{text = "Praise to my master Urgith!", yell = false},
	{text = "You will rise as my servant!", yell = false},
	{text = "Praise to my masters! Long live the triangle!", yell = false},
	{text = "You will die in the name of the triangle!", yell = false},
}

monster.loot = {
{
	id = 1962,
	chance = 910
},
{
	id = "piggy bank",
	chance = 130
},
{
	id = "small sapphire",
	chance = 550
},
{
	id = "gold coin",
	chance = 64550,
	maxCount = 70
},
{
	id = "energy ring",
	chance = 450
},
{
	id = "platinum amulet",
	chance = 200
},
{
	id = "wand of inferno",
	chance = 180
},
{
	id = "protection amulet",
	chance = 790
},
{
	id = "skull staff",
	chance = 350
},
{
	id = "blue robe",
	chance = 40
},
{
	id = "enigmatic voodoo skull",
	chance = 130
},
{
	id = "jewelled backpack",
	chance = 100
},
{
	id = "pirate voodoo doll",
	chance = 430
},
{
	id = 6090,
	chance = 490
},
{
	id = "amber staff",
	chance = 100
},
{
	id = "strong mana potion",
	chance = 740
},
{
	id = "cultish mask",
	chance = 10250
},
{
	id = "cultish symbol",
	chance = 890
},
{
	id = "broken key ring",
	chance = 100
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
	minDamage = -70,
	maxDamage = -185,
	range = 1,
	radius = 1,
	target = true,
	type = COMBAT_LIFEDRAIN,
	shootEffect = CONST_ANI_HOLY,
	effect = CONST_ME_HOLYAREA
},
{
	name = "drunk",
	interval = 2 * 1000,
	chance = 10,
	range = 7,
	target = true,
	duration = 5 * 1000,
	shootEffect = CONST_ANI_HOLY,
	effect = CONST_ME_HOLYDAMAGE
},
{
	name = "speed",
	interval = 2 * 1000,
	chance = 10,
	range = 7,
	target = true,
	speed = -360,
	duration = 6 * 1000,
	effect = CONST_ME_MAGIC_RED
}
}

monster.defenses = {
	defense = 25,
	armor = 25,
	{
			name = "combat",
			interval = 2 * 1000,
			chance = 25,
			type = COMBAT_HEALING,
			minDamage = 60,
			maxDamage = 90,
			effect = CONST_ME_MAGIC_BLUE
		},
	{
			name = "invisible",
			interval = 2 * 1000,
			chance = 15,
			effect = CONST_ME_YELLOWBUBBLE
		},
}

monster.elements = {
{
	type = COMBAT_HOLYDAMAGE,
	percent = 20
},
{
	type = COMBAT_ICEDAMAGE,
	percent = 5
},
{
	type = COMBAT_PHYSICALDAMAGE,
	percent = 10
},
{
	type = COMBAT_ENERGYDAMAGE,
	percent = -5
},
{
	type = COMBAT_DEATHDAMAGE,
	percent = -5
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
