local mType = Game.createMonsterType("Bog Raider")
local monster = {}
monster.description = "a bog raider"
monster.experience = 800
monster.outfit = {lookType = 299}

monster.health = 1300
monster.maxHealth = monster.health
monster.race = "venom"
monster.corpse = 8951
monster.speed = 250

monster.changeTarget = {interval = 4 * 1000, chance = 10}

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
	canwalkonenergy = false,
	canwalkonfire = false,
	canwalkonpoison = false
}

monster.voices = {
	interval = 5000,
	chance = 10,
	{text = "Tchhh!", yell = false},
	{text = "Slurp!", yell = false},
}

monster.loot = {
{
	id = "gold coin",
	chance = 50750,
	maxCount = 100
},
{
	id = "gold coin",
	chance = 50750,
	maxCount = 5
},
{
	id = "boggy dreads",
	chance = 9870
},
{
	id = "great health potion",
	chance = 2030
},
{
	id = "plate legs",
	chance = 2020
},
{
	id = "great spirit potion",
	chance = 2000
},
{
	id = "springsprout rod",
	chance = 1030
},
{
	id = "ultimate health potion",
	chance = 770
},
{
	id = "belted cape",
	chance = 590
},
{
	id = "paladin armor",
	chance = 140
}
}

monster.attacks = {
{
	name = "melee",
	interval = 2 * 1000,
	attack = 180,
	skill = 70,
	effect = CONST_ME_DRAWBLOOD
},
{
	name = "combat",
	interval = 2 * 1000,
	chance = 10,
	minDamage = -90,
	maxDamage = -140,
	range = 7,
	target = true,
	type = COMBAT_LIFEDRAIN,
	effect = CONST_ME_MAGIC_RED
},
{
	name = "combat",
	interval = 2 * 1000,
	chance = 10,
	minDamage = -100,
	maxDamage = -175,
	radius = 3,
	target = false,
	type = COMBAT_EARTHDAMAGE,
	effect = CONST_ME_BUBBLES
},
{
	name = "combat",
	interval = 2 * 1000,
	chance = 15,
	minDamage = -96,
	maxDamage = -110,
	range = 7,
	target = true,
	type = COMBAT_EARTHDAMAGE,
	shootEffect = CONST_ANI_SMALLEARTH
},
{
	name = "speed",
	interval = 2 * 1000,
	chance = 15,
	range = 7,
	target = true,
	speed = -600,
	duration = 15 * 1000,
	effect = CONST_ME_SMALLPLANTS
}
}

monster.defenses = {
	defense = 20,
	armor = 20,
	{
			name = "combat",
			interval = 2 * 1000,
			chance = 10,
			type = COMBAT_HEALING,
			minDamage = 65,
			maxDamage = 95,
			effect = CONST_ME_MAGIC_BLUE
		},
}

monster.elements = {
{
	type = COMBAT_ENERGYDAMAGE,
	percent = -10
},
{
	type = COMBAT_EARTHDAMAGE,
	percent = 30
},
{
	type = COMBAT_ICEDAMAGE,
	percent = -5
},
{
	type = COMBAT_PHYSICALDAMAGE,
	percent = -5
},
{
	type = COMBAT_HOLYDAMAGE,
	percent = -5
},
{
	type = COMBAT_DEATHDAMAGE,
	percent = 5
},
{
	type = COMBAT_FIREDAMAGE,
	percent = 85
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
