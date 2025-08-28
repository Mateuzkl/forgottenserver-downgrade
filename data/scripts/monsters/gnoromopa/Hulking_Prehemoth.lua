local mType = Game.createMonsterType("Hulking Prehemoth")
local monster = {}

monster.name = "Hulking Prehemoth"
monster.description = "a hulking prehemoth"
monster.experience = 12690
monster.outfit = { lookType = 1553 }

monster.health = 20700
monster.maxHealth = 20700
monster.runHealth = 0
monster.race = "blood"
monster.corpse = 44334
monster.speed = 382
monster.summonCost = 0

monster.changeTarget = {
	interval = 4000,
	chance = 10
}

monster.flags = {
	attackable = true,
	hostile = true,
	summonable = false,
	convinceable = false,
	illusionable = false,
	boss = false,
	ignoreSpawnBlock = false,
	pushable = false,
	canPushItems = true,
	canPushCreatures = true,
	staticAttackChance = 90,
	targetDistance = 1,
	healthHidden = false,
	canWalkOnEnergy = false,
	canWalkOnFire = false,
	canWalkOnPoison = false
}

monster.light = {
	level = 0,
	color = 0
}

monster.voices = {
	interval = 5000,
	chance = 10,
	{text = "SMAASH!", yell = false}
}

monster.immunities = {
	{type = "paralyze", condition = true},
	{type = "outfit", condition = false},
	{type = "invisible", condition = true},
	{type = "drunk", condition = true},
	{type = "bleed", condition = false}
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 5},
	{type = COMBAT_ENERGYDAMAGE, percent = 30},
	{type = COMBAT_EARTHDAMAGE, percent = -20},
	{type = COMBAT_FIREDAMAGE, percent = 40},
	{type = COMBAT_LIFEDRAIN, percent = 0},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = -15},
	{type = COMBAT_HOLYDAMAGE , percent = -15},
	{type = COMBAT_DEATHDAMAGE , percent = -10}
}

monster.attacks = {
	{ name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -1250 },
	{ name = "combat", interval = 3500, chance = 38, type = COMBAT_PHYSICALDAMAGE, minDamage = -850, maxDamage = -1700, range = 4, shootEffect = CONST_ANI_LARGEROCK, target = true },
	{ name = "combat", interval = 4100, chance = 30, type = COMBAT_ENERGYDAMAGE, minDamage = -600, maxDamage = -1200, radius = 5, effect = CONST_ME_EXPLOSIONAREA, target = false }
}

monster.defenses = {
	defense = 84,
	armor = 84
}

monster.loot = {
	{id = 2160, chance = 45161},
	{id = 44413, chance = 25806},
	{id = 8473, chance = 16129},
	{id = 7432, chance = 12903},
	{id = 44414, chance = 12903, maxCount = 2},
	{id = 2485, chance = 6452},
	{id = 2127, chance = 3226},
	{id = 2134, chance = 2500},
	{id = 2391, chance = 2500},
	{id = 2454, chance = 2500}
}

mType:register(monster)
