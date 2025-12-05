local mType = Game.createMonsterType("Dark Apprentice")
local monster = {}
monster.description = "a dark apprentice"
monster.experience = 100
monster.outfit = {lookType = 133}

monster.health = 225
monster.maxHealth = monster.health
monster.race = "blood"
monster.corpse = 20363
monster.speed = 190

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
	targetDistance = 4,
	staticAttackChance = 90,
	canwalkonenergy = false,
	canwalkonfire = false,
	canwalkonpoison = false
}

monster.voices = {
	interval = 5000,
	chance = 10,
	{text = "Outch!", yell = false},
	{text = "Oops, I did it again.", yell = false},
	{text = "From the spirits that I called Sir, deliver me!", yell = false},
	{text = "I must dispose of my masters enemies!", yell = false},
}

monster.loot = {
{
	id = "gold coin",
	chance = 75041,
	maxCount = 45
},
{
	id = "blank rune",
	chance = 8034,
	maxCount = 3
},
{
	id = "mana potion",
	chance = 2995
},
{
	id = "health potion",
	chance = 2884
},
{
	id = "wand of dragonbreath",
	chance = 2004
},
{
	id = "wand of decay",
	chance = 108
}
}

monster.attacks = {
{
	name = "melee",
	interval = 2 * 1000,
	attack = 60,
	skill = 70,
	effect = CONST_ME_DRAWBLOOD
},
{
	name = "combat",
	interval = 2 * 1000,
	chance = 10,
	minDamage = -2,
	maxDamage = -26,
	range = 7,
	type = COMBAT_FIREDAMAGE,
	shootEffect = CONST_ANI_FIRE
},
{
	name = "combat",
	interval = 2 * 1000,
	chance = 10,
	minDamage = -10,
	maxDamage = -20,
	range = 7,
	type = COMBAT_ENERGYDAMAGE,
	shootEffect = CONST_ANI_ENERGY
},
{
	name = "combat",
	interval = 2 * 1000,
	chance = 10,
	minDamage = 0,
	maxDamage = -24,
	range = 7,
	type = COMBAT_PHYSICALDAMAGE,
	shootEffect = CONST_ANI_SMALLSTONE
},
{
	name = "outfit",
	interval = 2 * 1000,
	chance = 1,
	range = 3,
	target = true,
	duration = 2 * 1000,
	shootEffect = CONST_ANI_EXPLOSION
},
{
	name = "outfit",
	interval = 2 * 1000,
	chance = 1,
	radius = 4,
	target = false,
	duration = 2 * 1000,
	effect = CONST_ME_MAGIC_BLUE
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
			minDamage = 30,
			maxDamage = 40,
			effect = CONST_ME_MAGIC_GREEN
		},
	{
			name = "outfit",
			interval = 2 * 1000,
			chance = 5
		},
}

monster.elements = {
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
