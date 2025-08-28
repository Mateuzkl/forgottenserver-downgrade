local mType = Game.createMonsterType("Sabretooth")
local monster = {}

monster.name = "Sabretooth"
monster.description = "a sabretooth"
monster.experience = 11931
monster.outfit = { lookType = 1549 }

monster.health = 17300
monster.maxHealth = 17300
monster.runHealth = 0
monster.race = "blood"
monster.corpse = 44318
monster.speed = 450
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
	{type = COMBAT_EARTHDAMAGE, percent = -10},
	{type = COMBAT_FIREDAMAGE, percent = -10},
	{type = COMBAT_LIFEDRAIN, percent = 0},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = -10},
	{type = COMBAT_HOLYDAMAGE , percent = 0},
	{type = COMBAT_DEATHDAMAGE , percent = 0}
}

monster.attacks = {
	{ name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -1100 },
	{ name = "sabretooth wave", interval = 5000, chance = 35, minDamage = -600, maxDamage = -1000 },
	{ name = "combat", interval = 3500, chance = 30, type = COMBAT_PHYSICALDAMAGE, minDamage = -800, maxDamage = -1500, range = 1, effect = CONST_ME_BIG_SCRATCH, target = true },
	{ name = "combat", interval = 2700, chance = 35, type = COMBAT_FIREDAMAGE, minDamage = -900, maxDamage = -1350, range = 1, target = true }
}

monster.defenses = {
	defense = 63,
	armor = 63
}

monster.loot = {
	{id = 44409, chance = 23591},
	{id = 2160, chance = 23057, maxCount = 2},
	{id = 2198, chance = 5104},
	{id = 2187, chance = 4799},
	{id = 2201, chance = 3885},
	{id = 7899, chance = 3860},
	{id = 10219, chance = 2768},
	{id = 2392, chance = 2616},
	{id = 2191, chance = 2362},
	{id = 23540, chance = 2285},
	{id = 53033, chance = 25}
}

mType:register(monster)
