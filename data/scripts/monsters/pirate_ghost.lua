local mType = Game.createMonsterType("Pirate Ghost")
local monster = {}
monster.description = "a pirate ghost"
monster.experience = 250
monster.outfit = {lookType = 196}

monster.health = 275
monster.maxHealth = monster.health
monster.race = "undead"
monster.corpse = 5566
monster.speed = 170

monster.changeTarget = {interval = 4 * 1000, chance = 10}

monster.flags = {
	summonable = false,
	attackable = true,
	hostile = true,
	illusionable = false,
	convinceable = false,
	pushable = true,
	canpushitems = true,
	canpushcreatures = false,
	staticAttackChance = 90,
	targetDistance = 1,
	canwalkonenergy = false,
	canwalkonfire = false
}

monster.voices = {
	interval = 5000,
	chance = 10,
	{text = "Yooh Ho Hooh Ho!", yell = false},
	{text = "Hell is waiting for You!", yell = false},
	{text = "It's alive!", yell = false},
	{text = "The curse! Aww the curse!", yell = false},
	{text = "You will not get my treasure!", yell = false},
}

monster.loot = {
{
	id = 1951,
	chance = 910
},
{
	id = "gold coin",
	chance = 48000,
	maxCount = 67
},
{
	id = "stealth ring",
	chance = 650
},
{
	id = "spike sword",
	chance = 130
},
{
	id = "red robe",
	chance = 130
},
{
	id = "tattered piece of robe",
	chance = 4300
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
	chance = 15,
	minDamage = -40,
	maxDamage = -80,
	radius = 1,
	target = false,
	type = COMBAT_LIFEDRAIN,
	effect = CONST_ME_MAGIC_RED
},
{
	name = "combat",
	interval = 2 * 1000,
	chance = 10,
	minDamage = -50,
	maxDamage = -65,
	range = 7,
	radius = 3,
	target = true,
	type = COMBAT_DEATHDAMAGE,
	effect = CONST_ME_REDNOTE
}
}

monster.defenses = {
	{
			name = "combat",
			interval = 2 * 1000,
			chance = 5,
			type = COMBAT_HEALING,
			minDamage = 40,
			maxDamage = 70,
			effect = CONST_ME_MAGIC_BLUE
		},
}

monster.elements = {
{
	type = COMBAT_HOLYDAMAGE,
	percent = -25
}
}

monster.immunities = {
{
	type = "paralyze",
	condition = true
},
{
	type = "lifedrain",
	combat = true
},
{
	type = "physical",
	combat = true,
	condition = true
},
{
	type = "death",
	combat = true,
	condition = true
},
{
	type = "earth",
	combat = true,
	condition = true
}
}

mType:register(monster)
