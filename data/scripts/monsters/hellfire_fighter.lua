local mType = Game.createMonsterType("Hellfire Fighter")
local monster = {}
monster.description = "a hellfire fighter"
monster.experience = 3900
monster.outfit = {lookType = 243}

monster.health = 3800
monster.maxHealth = monster.health
monster.race = "fire"
monster.corpse = 6324
monster.speed = 220

monster.changeTarget = {interval = 4 * 1000, chance = 10}

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
	canwalkonenergy = false,
	canwalkonpoison = false
}

monster.loot = {
{
	id = "emerald bangle",
	chance = 2200
},
{
	id = 2136,
	chance = 190
},
{
	id = "small diamond",
	chance = 1400
},
{
	id = "gold coin",
	chance = 50000,
	maxCount = 100
},
{
	id = "gold coin",
	chance = 40000,
	maxCount = 100
},
{
	id = "gold coin",
	chance = 10000,
	maxCount = 46
},
{
	id = "bronze amulet",
	chance = 1000
},
{
	id = "wand of inferno",
	chance = 9450
},
{
	id = "burnt scroll",
	chance = 50000
},
{
	id = "blank rune",
	chance = 30000,
	maxCount = 2
},
{
	id = "fire sword",
	chance = 4140
},
{
	id = "fire axe",
	chance = 440
},
{
	id = "soul orb",
	chance = 12150
},
{
	id = "demonic essence",
	chance = 14500
},
{
	id = "magma legs",
	chance = 730
},
{
	id = "magma coat",
	chance = 470
},
{
	id = "fiery heart",
	chance = 9570
},
{
	id = "piece of hellfire armor",
	chance = 5060
}
}

monster.attacks = {
{
	name = "melee",
	interval = 2 * 1000,
	attack = 520,
	skill = 70,
	effect = CONST_ME_DRAWBLOOD
},
{
	name = "firefield",
	interval = 2 * 1000,
	chance = 10,
	range = 7,
	radius = 3,
	target = false,
	shootEffect = CONST_ANI_FIRE
},
{
	name = "combat",
	interval = 2 * 1000,
	chance = 10,
	minDamage = -392,
	maxDamage = -1500,
	target = false,
	length = 8,
	spread = 0,
	type = COMBAT_FIREDAMAGE,
	effect = CONST_ME_FIREATTACK
},
{
	name = "combat",
	interval = 2 * 1000,
	chance = 15,
	minDamage = -60,
	maxDamage = -330,
	range = 7,
	radius = 3,
	target = false,
	type = COMBAT_FIREDAMAGE,
	effect = CONST_ANI_FIRE
}
}

monster.defenses = {
	defense = 35,
	armor = 35,
}

monster.elements = {
{
	type = COMBAT_ENERGYDAMAGE,
	percent = 25
},
{
	type = COMBAT_PHYSICALDAMAGE,
	percent = 50
},
{
	type = COMBAT_DEATHDAMAGE,
	percent = 20
},
{
	type = COMBAT_ICEDAMAGE,
	percent = -25
}
}

monster.immunities = {
{
	type = "fire",
	combat = true,
	condition = true
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
