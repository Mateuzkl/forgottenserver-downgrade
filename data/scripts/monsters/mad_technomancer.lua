local mType = Game.createMonsterType("Mad Technomancer")
local monster = {}
monster.description = "a mad technomancer"
monster.experience = 55
monster.outfit = {lookType = 66}

monster.health = 1800
monster.maxHealth = monster.health
monster.race = "blood"
monster.corpse = 6015
monster.speed = 200

monster.changeTarget = {interval = 0 * 1000, chance = 25}

monster.flags = {
	summonable = false,
	attackable = true,
	hostile = true,
	illusionable = true,
	convinceable = false,
	pushable = false,
	canpushitems = true,
	canpushcreatures = true,
	targetDistance = 4,
	staticAttackChance = 90,
	canwalkonenergy = false,
	isboss = true
}

monster.voices = {
	interval = 5000,
	chance = 10,
	{text = "I'm going to make them an offer they can't refuse.", yell = false},
	{text = "My masterplan cannot fail!", yell = false},
	{text = "Gentlemen, you can't fight here! This is the War Room!", yell = false},
}

monster.loot = {
{
	id = "technomancer beard",
	chance = 100000
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
	interval = 1 * 1000,
	chance = 10,
	minDamage = -50,
	maxDamage = -120,
	range = 7,
	radius = 4,
	target = true,
	type = COMBAT_FIREDAMAGE,
	shootEffect = CONST_ANI_FIRE,
	effect = CONST_ME_FIREAREA
},
{
	name = "combat",
	interval = 1 * 1000,
	chance = 34,
	minDamage = -55,
	maxDamage = -105,
	range = 7,
	type = COMBAT_PHYSICALDAMAGE,
	shootEffect = CONST_ANI_LARGEROCK
},
{
	name = "combat",
	interval = 1 * 1000,
	chance = 25,
	minDamage = -50,
	maxDamage = -80,
	range = 7,
	type = COMBAT_MANADRAIN
}
}

monster.defenses = {
	defense = 15,
	armor = 15,
	{
			name = "combat",
			interval = 1 * 1000,
			chance = 50,
			type = COMBAT_HEALING,
			minDamage = 75,
			maxDamage = 325,
			effect = CONST_ME_MAGIC_BLUE
		},
}

monster.elements = {
{
	type = COMBAT_EARTHDAMAGE,
	percent = 80
},
{
	type = COMBAT_FIREDAMAGE,
	percent = 60
},
{
	type = COMBAT_ENERGYDAMAGE,
	percent = 10
},
{
	type = COMBAT_HOLYDAMAGE,
	percent = 10
},
{
	type = COMBAT_ICEDAMAGE,
	percent = -10
},
{
	type = COMBAT_DEATHDAMAGE,
	percent = -5
}
}

monster.immunities = {
{
	type = "invisible",
	condition = true
}
}

mType:register(monster)
