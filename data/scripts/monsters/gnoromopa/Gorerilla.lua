local mType = Game.createMonsterType("Gorerilla")
local monster = {}

monster.name = "Gorerilla"
monster.description = "a gorerilla"
monster.experience = 13172
monster.outfit = { lookType = 1559 }

monster.health = 16850
monster.maxHealth = 16850
monster.runHealth = 0
monster.race = "blood"
monster.corpse = 44358
monster.speed = 430
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
	{text = "Shwooosh!", yell = false}
}

monster.immunities = {
	{type = "paralyze", condition = true},
	{type = "outfit", condition = false},
	{type = "invisible", condition = true},
	{type = "drunk", condition = true},
	{type = "bleed", condition = false}
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 30},
	{type = COMBAT_ENERGYDAMAGE, percent = 0},
	{type = COMBAT_EARTHDAMAGE, percent = 0},
	{type = COMBAT_FIREDAMAGE, percent = 20},
	{type = COMBAT_LIFEDRAIN, percent = 0},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = -5},
	{type = COMBAT_HOLYDAMAGE , percent = -5},
	{type = COMBAT_DEATHDAMAGE , percent = 0}
}

monster.attacks = {
	{ name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -950 },
	{ name = "combat", interval = 2200, chance = 60, type = COMBAT_PHYSICALDAMAGE, minDamage = -300, maxDamage = -750, range = 7, shootEffect = CONST_ANI_LARGEROCK, target = true },
	{ name = "combat", interval = 3100, chance = 35, type = COMBAT_FIREDAMAGE, minDamage = -650, maxDamage = -850, range = 7, radius = 3, shootEffect = CONST_ANI_FIRE, effect = CONST_ME_FIREATTACK, target = true },
	{ name = "gorerilla large ring", interval = 3500, chance = 35, minDamage = -600, maxDamage = -1000 },
	{ name = "gorerilla small ring", interval = 3800, chance = 20, minDamage = -600, maxDamage = -1000 }
}

monster.defenses = {
	defense = 76,
	armor = 76
}

monster.loot = {
	{id = 2160, chance = 20700, maxCount = 2},
	{id = 2485, chance = 8000},
	{id = 44423, chance = 8000},
	{id = 44424, chance = 8000},
	{id = 2144, chance = 7500, maxCount = 2},
	{id = 26029, chance = 4000, maxCount = 3},
	{id = 7899, chance = 4000},
	{id = 18453, chance = 4000},
	{id = 15644, chance = 4000},
	{id = 8855, chance = 4000}
}

mType:register(monster)
