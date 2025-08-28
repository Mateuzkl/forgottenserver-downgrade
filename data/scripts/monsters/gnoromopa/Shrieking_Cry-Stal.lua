local mType = Game.createMonsterType("Shrieking Cry-Stal")
local monster = {}

monster.name = "Shrieking Cry-Stal"
monster.description = "a shrieking cry-stal"
monster.experience = 13560
monster.outfit = { lookType = 1560 }

monster.health = 20650
monster.maxHealth = 20650
monster.runHealth = 0
monster.race = "energy"
monster.corpse = 44362
monster.speed = 414
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
	targetDistance = 4,
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
	{text = "La-la-la..AAAHHHH!!!", yell = false},
	{text = "SCREEECH...", yell = false}
}

monster.immunities = {
	{type = "paralyze", condition = true},
	{type = "outfit", condition = false},
	{type = "invisible", condition = true},
	{type = "drunk", condition = true},
	{type = "bleed", condition = false}
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 20},
	{type = COMBAT_ENERGYDAMAGE, percent = 10},
	{type = COMBAT_EARTHDAMAGE, percent = -5},
	{type = COMBAT_FIREDAMAGE, percent = 5},
	{type = COMBAT_LIFEDRAIN, percent = 0},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = 5},
	{type = COMBAT_HOLYDAMAGE , percent = 100},
	{type = COMBAT_DEATHDAMAGE , percent = 0}
}

monster.attacks = {
	{ name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -400 },
	{ name = "combat", interval = 5000, chance = 47, type = COMBAT_ENERGYDAMAGE, minDamage = -650, maxDamage = -900, range = 6, shootEffect = CONST_ANI_ENERGYBALL },
	{ name = "combat", interval = 3500, chance = 30, type = COMBAT_DEATHDAMAGE, minDamage = -500, maxDamage = -700, radius = 6, effect = CONST_ME_MORTAREA, target = false },
	{ name = "energy chain", interval = 2000, chance = 20, minDamage = -425, maxDamage = -550, range = 3, target = true },
	{ name = "combat", interval = 3000, chance = 30, type = COMBAT_ENERGYDAMAGE, minDamage = -700, maxDamage = -1000, length = 5, spread = 2, effect = CONST_ME_SOUND_PURPLE, target = false },
	{ name = "fear", interval = 2000, chance = 1, target = true }
}

monster.defenses = {
	defense = 95,
	armor = 95
}

monster.loot = {
	{id = 2160, chance = 23616, maxCount = 2},
	{id = 8472, chance = 20640},
	{id = 44425, chance = 15000, maxCount = 2},
	{id = 2145, chance = 6092, maxCount = 3},
	{id = 9809, chance = 5563},
	{id = 18421, chance = 4423},
	{id = 7886, chance = 4312},
	{id = 2200, chance = 2281},
	{id = 2153, chance = 1280},
	{id = 2179, chance = 584},
	{id = 2155, chance = 417},
	{id = 2123, chance = 223}
}

mType:register(monster)
