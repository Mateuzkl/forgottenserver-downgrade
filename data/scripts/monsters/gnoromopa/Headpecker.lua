local mType = Game.createMonsterType("Headpecker")
local monster = {}

monster.name = "Headpecker"
monster.description = "a headpecker"
monster.experience = 12026
monster.outfit = { lookType = 1557 }

monster.health = 16300
monster.maxHealth = 16300
monster.runHealth = 0
monster.race = "blood"
monster.corpse = 44350
monster.speed = 434
monster.summonCost = 0

monster.changeTarget = {
	interval = 4000,
	chance = 70
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
	{text = "PICK!!!", yell = false}
}

monster.immunities = {
	{type = "paralyze", condition = true},
	{type = "outfit", condition = false},
	{type = "invisible", condition = true},
	{type = "drunk", condition = true},
	{type = "bleed", condition = false}
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = -10},
	{type = COMBAT_ENERGYDAMAGE, percent = 10},
	{type = COMBAT_EARTHDAMAGE, percent = 10},
	{type = COMBAT_FIREDAMAGE, percent = -10},
	{type = COMBAT_LIFEDRAIN, percent = 0},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = -10},
	{type = COMBAT_HOLYDAMAGE , percent = 100},
	{type = COMBAT_DEATHDAMAGE , percent = -10}
}

monster.attacks = {
	{ name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -1000 },
	{ name = "combat", interval = 2500, chance = 37, type = COMBAT_EARTHDAMAGE, minDamage = -700, maxDamage = -1100, range = 1, effect = CONST_ME_BLACKSMOKE, target = true },
	{ name = "combat", interval = 4200, chance = 35, type = COMBAT_PHYSICALDAMAGE, minDamage = -700, maxDamage = -1050, length = 4, spread = 3, effect = CONST_ME_SLASH, target = false },
	{ name = "headpecker explosion", interval = 3500, chance = 35, minDamage = -700, maxDamage = -850 }
}

monster.defenses = {
	defense = 68,
	armor = 68
}

monster.loot = {
	{id = 2160, chance = 35337},
	{id = 44418, chance = 11355},
	{id = 44419, chance = 7558, maxCount = 5},
	{id = 7432, chance = 5540},
	{id = 2684, chance = 4955},
	{id = 2403, chance = 4244},
	{id = 2383, chance = 4060},
	{id = 2391, chance = 2294},
	{id = 7413, chance = 1720},
	{id = 2158, chance = 1560},
	{id = 8920, chance = 998},
	{id = 9971, chance = 906}
}

mType:register(monster)
