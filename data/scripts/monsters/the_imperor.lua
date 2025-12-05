local mType = Game.createMonsterType("The Imperor")
local monster = {}
monster.description = "The Imperor"
monster.experience = 8000
monster.outfit = {lookType = 237}

monster.health = 15000
monster.maxHealth = monster.health
monster.race = "fire"
monster.corpse = 6364
monster.speed = 330
monster.maxSummons = 2

monster.changeTarget = {interval = 5 * 1000, chance = 5}

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
	isboss = true
}

monster.summons = {
{
	name = "diabolic imp",
	chance = 30,
	interval = 5 * 1000
}
}

monster.voices = {
	interval = 5000,
	chance = 10,
	{text = "Muahaha!", yell = false},
	{text = "He he he!", yell = false},
}

monster.loot = {
{
	id = 2050,
	chance = 15000
},
{
	id = "gold coin",
	chance = 100000,
	maxCount = 79
},
{
	id = "small amethyst",
	chance = 8888
},
{
	id = "stealth ring",
	chance = 4555
},
{
	id = "necrotic rod",
	chance = 833
},
{
	id = "blank rune",
	chance = 18000
},
{
	id = "chain armor",
	chance = 7887
},
{
	id = "brass armor",
	chance = 6577
},
{
	id = "brass armor",
	chance = 6577
},
{
	id = "pitchfork",
	chance = 20000
},
{
	id = "soul orb",
	chance = 5666
},
{
	id = 6300,
	chance = 999
},
{
	id = "demonic essence",
	chance = 7777
},
{
	id = "infernal bolt",
	chance = 5000,
	maxCount = 5
},
{
	id = "the Imperor's trident",
	chance = 100000
},
{
	id = "flask of demonic blood",
	chance = 2222
},
{
	id = "magma boots",
	chance = 2000
},
{
	id = "magma coat",
	chance = 2000
},
{
	id = "magma monocle",
	chance = 2000
}
}

monster.attacks = {
{
	name = "melee",
	interval = 2 * 1000,
	attack = 660,
	skill = 70,
	effect = CONST_ME_DRAWBLOOD
},
{
	name = "combat",
	interval = 1 * 1000,
	chance = 13,
	minDamage = -50,
	maxDamage = -800,
	range = 1,
	target = true,
	type = COMBAT_FIREDAMAGE,
	shootEffect = CONST_ANI_FIRE,
	effect = CONST_ME_FIREATTACK
},
{
	name = "combat",
	interval = 2 * 1000,
	chance = 20,
	minDamage = -50,
	maxDamage = -800,
	range = 7,
	radius = 6,
	target = true,
	type = COMBAT_FIREDAMAGE,
	shootEffect = CONST_ANI_FIRE,
	effect = CONST_ME_FIREAREA
},
{
	name = "combat",
	interval = 2 * 1000,
	chance = 30,
	minDamage = -90,
	maxDamage = -350,
	target = true,
	length = 4,
	spread = 2,
	type = COMBAT_FIREDAMAGE,
	shootEffect = CONST_ANI_FIRE,
	effect = CONST_ME_FIREAREA
}
}

monster.defenses = {
	defense = 15,
	armor = 15,
	{
			name = "combat",
			interval = 2 * 1000,
			chance = 50,
			type = COMBAT_HEALING,
			minDamage = 175,
			maxDamage = 505,
			effect = CONST_ME_MAGIC_BLUE
		},
	{
			name = "speed",
			interval = 2 * 1000,
			chance = 12,
			speed = 380,
			duration = 4 * 1000,
			effect = CONST_ME_MAGIC_RED
		},
	{
			name = "invisible",
			interval = 3 * 1000,
			chance = 20,
			effect = CONST_ME_MAGIC_RED
		},
}

monster.elements = {
{
	type = COMBAT_ICEDAMAGE,
	percent = -20
},
{
	type = COMBAT_HOLYDAMAGE,
	percent = -20
},
{
	type = COMBAT_DEATHDAMAGE,
	percent = 20
}
}

monster.immunities = {
{
	type = "fire",
	combat = true,
	condition = true
},
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
