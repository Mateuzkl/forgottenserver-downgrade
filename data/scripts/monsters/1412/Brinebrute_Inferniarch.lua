local mType = Game.createMonsterType("Brinebrute Inferniarch")
local monster = {}

monster.name = "Brinebrute Inferniarch"
monster.description = "a brinebrute inferniarch"
monster.experience = 20300
monster.outfit = { lookType = 1794 }

monster.health = 32000
monster.maxHealth = 32000
monster.runHealth = 0
monster.race = "undead"
monster.corpse = 54989
monster.speed = 320
monster.summonCost = 0

monster.changeTarget = {
	interval = 2000,
	chance = 0
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
	staticAttackChance = 70,
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
	{text = "Garrr...Garrr!", yell = false}
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
	{type = COMBAT_ENERGYDAMAGE, percent = 15},
	{type = COMBAT_EARTHDAMAGE, percent = -10},
	{type = COMBAT_FIREDAMAGE, percent = 0},
	{type = COMBAT_LIFEDRAIN, percent = 0},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = 10},
	{type = COMBAT_HOLYDAMAGE , percent = 0},
	{type = COMBAT_DEATHDAMAGE , percent = -10}
}

monster.attacks = {
	{ name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -400 },
	{ name = "extended electrify chain", interval = 2000, chance = 15, minDamage = -3, maxDamage = -400, range = 7 },
	{ name = "combat", interval = 2000, chance = 10, type = COMBAT_DEATHDAMAGE, minDamage = -200, maxDamage = -390, length = 8, spread = 0, effect = CONST_ME_MORTAREA, target = false },
	{ name = "combat", interval = 2000, chance = 20, type = COMBAT_DEATHDAMAGE, minDamage = -1, maxDamage = -450, range = 1, effect = CONST_ME_REAPER, target = true },
	{ name = "combat", interval = 1000, chance = 20, type = COMBAT_DEATHDAMAGE, minDamage = -1, maxDamage = -450, radius = 5, effect = CONST_ME_GROUNDSHAKER, target = false },
}

monster.defenses = {
	defense = 80,
	armor = 80
}

monster.loot = {
	{id = 2152, chance = 100000, maxCount = 40},
	{id = 55047, chance = 75796},
	{id = 8472, chance = 73885, maxCount = 5},
	{id = 18417, chance = 21656},
	{id = 18418, chance = 19321},
	{id = 18416, chance = 16348},
	{id = 18415, chance = 15711, maxCount = 2},
	{id = 18413, chance = 14862, maxCount = 2},
	{id = 18414, chance = 14437, maxCount = 2},
	{id = 2156, chance = 9130},
	{id = 2146, chance = 6369, maxCount = 4},
	{id = 8473, chance = 4671, maxCount = 3},
	{id = 54900, chance = 2972},
	{id = 55092, chance = 2548},
	{id = 2197, chance = 2548},
	{id = 2393, chance = 1911},
	{id = 2164, chance = 1486},
	{id = 2155, chance = 1486},
	{id = 2214, chance = 1274},
	{id = 54885, chance = 1062},
	{id = 2179, chance = 1062},
	{id = 54899, chance = 637},
	{id = 2520, chance = 212},
	{id = 2497, chance = 212},
	{id = 7382, chance = 212}
}

mType:register(monster)
