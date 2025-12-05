local mType = Game.createMonsterType("Massive Fire Elemental")
local monster = {}
monster.description = "a massive fire elemental"
monster.experience = 1400
monster.outfit = {lookType = 242}

monster.health = 1200
monster.maxHealth = monster.health
monster.race = "fire"
monster.corpse = 6324
monster.speed = 210

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
	id = "small ruby",
	chance = 6100,
	maxCount = 2
},
{
	id = "gold coin",
	chance = 50000,
	maxCount = 100
},
{
	id = "gold coin",
	chance = 25000,
	maxCount = 100
},
{
	id = "gold coin",
	chance = 25000,
	maxCount = 12
},
{
	id = "bronze amulet",
	chance = 15000
},
{
	id = "wand of inferno",
	chance = 2240
},
{
	id = "fire sword",
	chance = 530
},
{
	id = "magma amulet",
	chance = 1300
},
{
	id = "magma boots",
	chance = 560
},
{
	id = "magma legs",
	chance = 210
},
{
	id = 9809,
	chance = 1330
}
}

monster.attacks = {
{
	name = "melee",
	interval = 2 * 1000,
	attack = 300,
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
	name = "firefield",
	interval = 2 * 1000,
	chance = 10,
	range = 7,
	radius = 3,
	target = true,
	shootEffect = CONST_ANI_FIRE
},
{
	name = "combat",
	interval = 2 * 1000,
	chance = 10,
	minDamage = -200,
	maxDamage = -700,
	length = 7,
	spread = 0,
	type = COMBAT_FIREDAMAGE
},
{
	name = "combat",
	interval = 2 * 1000,
	chance = 15,
	minDamage = -60,
	maxDamage = -250,
	radius = 3,
	target = false,
	type = COMBAT_FIREDAMAGE,
	effect = CONST_ME_EXPLOSION
}
}

monster.defenses = {
	defense = 30,
	armor = 30,
}

monster.elements = {
{
	type = COMBAT_ICEDAMAGE,
	percent = -15
},
{
	type = COMBAT_PHYSICALDAMAGE,
	percent = 40
},
{
	type = COMBAT_DEATHDAMAGE,
	percent = 20
},
{
	type = COMBAT_ENERGYDAMAGE,
	percent = 30
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
