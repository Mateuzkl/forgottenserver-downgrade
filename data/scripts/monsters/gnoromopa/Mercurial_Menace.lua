local mType = Game.createMonsterType("Mercurial Menace")
local monster = {}

monster.name = "Mercurial Menace"
monster.description = "a mercurial menace"
monster.experience = 12095
monster.outfit = { lookType = 1561 }

monster.health = 18500
monster.maxHealth = 18500
monster.runHealth = 0
monster.race = "blood"
monster.corpse = 44366
monster.speed = 380
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
	{text = "Shwooo...", yell = false}
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
	{type = COMBAT_ENERGYDAMAGE, percent = -20},
	{type = COMBAT_EARTHDAMAGE, percent = -10},
	{type = COMBAT_FIREDAMAGE, percent = 20},
	{type = COMBAT_LIFEDRAIN, percent = 0},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = 10},
	{type = COMBAT_HOLYDAMAGE , percent = 100},
	{type = COMBAT_DEATHDAMAGE , percent = -5}
}

monster.attacks = {
	{ name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -900 },
	{ name = "combat", interval = 2000, chance = 75, type = COMBAT_PHYSICALDAMAGE, minDamage = 0, maxDamage = -750, range = 4, shootEffect = CONST_ANI_SMALLSTONE, target = true },
	{ name = "combat", interval = 3000, chance = 40, type = COMBAT_ENERGYDAMAGE, minDamage = -800, maxDamage = -1500, range = 3, effect = CONST_ME_BLUE_ENERGY_SPARK, target = true },
	{ name = "mercurial menace ring", interval = 4500, chance = 37, minDamage = -500, maxDamage = -700 }
}

monster.defenses = {
	defense = 91,
	armor = 91
}

monster.loot = {
	{id = 2160, chance = 24847, maxCount = 2},
	{id = 44426, chance = 21648},
	{id = 7886, chance = 4425},
	{id = 2134, chance = 2746},
	{id = 2181, chance = 1626},
	{id = 18390, chance = 1226},
	{id = 27047, chance = 1146},
	{id = 28356, chance = 1093},
	{id = 7893, chance = 933},
	{id = 2189, chance = 906},
	{id = 27048, chance = 826},
	{id = 28354, chance = 773}
}

mType:register(monster)
