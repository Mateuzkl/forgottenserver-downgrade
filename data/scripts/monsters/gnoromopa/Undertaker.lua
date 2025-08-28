local mType = Game.createMonsterType("Undertaker")
local monster = {}

monster.name = "Undertaker"
monster.description = "an undertaker"
monster.experience = 13543
monster.outfit = { lookType = 1551 }

monster.health = 20100
monster.maxHealth = 20100
monster.runHealth = 0
monster.race = "venom"
monster.corpse = 44326
monster.speed = 410
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
	canWalkOnEnergy = true,
	canWalkOnFire = true,
	canWalkOnPoison = true
}

monster.light = {
	level = 0,
	color = 0
}

monster.voices = {
	interval = 5000,
	chance = 10,
	{text = "Hizzzzz!", yell = false}
}

monster.immunities = {
	{type = "paralyze", condition = true},
	{type = "outfit", condition = false},
	{type = "invisible", condition = true},
	{type = "drunk", condition = true},
	{type = "bleed", condition = false}
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = -15},
	{type = COMBAT_ENERGYDAMAGE, percent = -10},
	{type = COMBAT_EARTHDAMAGE, percent = 10},
	{type = COMBAT_FIREDAMAGE, percent = 0},
	{type = COMBAT_LIFEDRAIN, percent = 0},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = 0},
	{type = COMBAT_HOLYDAMAGE , percent = -5},
	{type = COMBAT_DEATHDAMAGE , percent = 40}
}

monster.attacks = {
	{ name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -1200 },
	{ name = "combat", interval = 4500, chance = 47, type = COMBAT_DEATHDAMAGE, minDamage = -800, maxDamage = -1150, radius = 4, shootEffect = CONST_ANI_SUDDENDEATH, effect = CONST_ME_MORTAREA, target = true },
	{ name = "combat", interval = 3650, chance = 30, type = COMBAT_EARTHDAMAGE, minDamage = -600, maxDamage = -950, radius = 2, effect = CONST_ME_HITBYPOISON, target = true },
	{ name = "undertaker square explosion", interval = 3000, chance = 25, minDamage = -775, maxDamage = -900, range = 4, target = true },
	{ name = "combat", interval = 5000, chance = 40, type = COMBAT_EARTHDAMAGE, minDamage = -1500, maxDamage = -2000, range = 1, radius = 1, shootEffect = CONST_ANI_POISON, effect = CONST_ME_POISONAREA, target = true },
	{ name = "root wave", interval = 2000, chance = 5, target = true }
}

monster.defenses = {
	defense = 77,
	armor = 77
}

monster.loot = {
	{id = 8472, chance = 31061, maxCount = 3},
	{id = 44411, chance = 24242},
	{id = 2160, chance = 9091, maxCount = 3},
	{id = 7886, chance = 4545},
	{id = 5879, chance = 4545},
	{id = 7885, chance = 2500},
	{id = 18413, chance = 2273},
	{id = 28354, chance = 2273},
	{id = 7383, chance = 1515},
	{id = 8922, chance = 1515},
	{id = 2185, chance = 758},
	{id = 2153, chance = 758}
}

mType:register(monster)
