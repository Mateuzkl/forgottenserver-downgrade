local mType = Game.createMonsterType("The Plasmother")
local monster = {}
monster.description = "The Plasmother"
monster.experience = 12000
monster.outfit = {lookType = 238}

monster.health = 7500
monster.maxHealth = monster.health
monster.race = "venom"
monster.corpse = 6532
monster.speed = 310

monster.changeTarget = {interval = 5 * 1000, chance = 10}

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
	isboss = true
}

monster.voices = {
	interval = 5000,
	chance = 10,
	{text = "Blubb", yell = false},
}

monster.loot = {
{
	id = "black pearl",
	chance = 5000,
	maxCount = 3
},
{
	id = "small sapphire",
	chance = 5000,
	maxCount = 3
},
{
	id = "gold coin",
	chance = 20000,
	maxCount = 70
},
{
	id = "gold coin",
	chance = 20000,
	maxCount = 60
},
{
	id = "gold coin",
	chance = 20000,
	maxCount = 45
},
{
	id = "platinum coin",
	chance = 25000,
	maxCount = 13
},
{
	id = "soul orb",
	chance = 35000
},
{
	id = "demonic essence",
	chance = 45000
},
{
	id = "the Plasmother's remains",
	chance = 100000
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
	name = "speed",
	interval = 1 * 1000,
	chance = 8,
	radius = 6,
	target = false,
	speed = -800,
	duration = 10 * 1000,
	effect = CONST_ME_POISON
},
{
	name = "combat",
	interval = 2 * 1000,
	chance = 15,
	minDamage = -200,
	maxDamage = -350,
	radius = 4,
	target = false,
	type = COMBAT_EARTHDAMAGE,
	effect = CONST_ME_POISON
},
{
	name = "combat",
	interval = 3 * 1000,
	chance = 15,
	minDamage = -200,
	maxDamage = -530,
	radius = 4,
	target = true,
	type = COMBAT_EARTHDAMAGE,
	effect = CONST_ME_GREENSPARK,
	shootEffect = CONST_ANI_POISON
}
}

monster.defenses = {
	defense = 30,
	armor = 30,
	{
			name = "combat",
			interval = 1 * 1000,
			chance = 75,
			type = COMBAT_HEALING,
			minDamage = 505,
			maxDamage = 605,
			effect = CONST_ME_MAGIC_BLUE
		},
}

monster.elements = {
{
	type = COMBAT_FIREDAMAGE,
	percent = -20
},
{
	type = COMBAT_ENERGYDAMAGE,
	percent = 15
}
}

monster.immunities = {
{
	type = "earth",
	combat = true,
	condition = true
},
{
	type = "lifedrain",
	combat = true
},
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
