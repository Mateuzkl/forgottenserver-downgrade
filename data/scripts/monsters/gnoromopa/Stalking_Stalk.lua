local mType = Game.createMonsterType("Stalking Stalk")
local monster = {}

monster.name = "Stalking Stalk"
monster.description = "a stalking stalk"
monster.experience = 11569
monster.outfit = { lookType = 1554 }

monster.health = 17100
monster.maxHealth = 17100
monster.runHealth = 0
monster.race = "blood"
monster.corpse = 44338
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
	{text = "Sizzzle...", yell = false},
	{text = "Crackle!", yell = false}
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
	{type = COMBAT_ENERGYDAMAGE, percent = -15},
	{type = COMBAT_EARTHDAMAGE, percent = 25},
	{type = COMBAT_FIREDAMAGE, percent = 25},
	{type = COMBAT_LIFEDRAIN, percent = 0},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = -10},
	{type = COMBAT_HOLYDAMAGE , percent = 0},
	{type = COMBAT_DEATHDAMAGE , percent = 10}
}

monster.attacks = {
	{ name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -400, effect = CONST_ME_CARNIPHILA },
	{ name = "combat", interval = 4000, chance = 40, type = COMBAT_FIREDAMAGE, minDamage = -800, maxDamage = -1050, range = 7, shootEffect = CONST_ANI_FIRE, effect = CONST_ME_HITBYFIRE, target = true },
	{ name = "combat", interval = 2900, chance = 25, type = COMBAT_EARTHDAMAGE, minDamage = -850, maxDamage = -1130, radius = 4, effect = CONST_ME_PLANTATTACK, target = false },
}

monster.defenses = {
	defense = 76,
	armor = 76
}

monster.loot = {
	{id = 44415, chance = 21429, maxCount = 3},
	{id = 2160, chance = 14286, maxCount = 3},
	{id = 2145, chance = 9524, maxCount = 3},
	{id = 24850, chance = 5952, maxCount = 2},
	{id = 2201, chance = 4762},
	{id = 2155, chance = 2381},
	{id = 15451, chance = 2381},
	{id = 18411, chance = 2381},
	{id = 18421, chance = 2381},
	{id = 7899, chance = 1190},
	{id = 2456, chance = 1190}
}

mType:register(monster)
