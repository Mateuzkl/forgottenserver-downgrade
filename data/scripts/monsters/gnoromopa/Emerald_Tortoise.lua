local mType = Game.createMonsterType("Emerald Tortoise")
local monster = {}

monster.name = "Emerald Tortoise"
monster.description = "an emerald tortoise"
monster.experience = 12129
monster.outfit = { lookType = 1550 }

monster.health = 22300
monster.maxHealth = 22300
monster.runHealth = 0
monster.race = "blood"
monster.corpse = 44322
monster.speed = 358
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
	{text = "Shllpp...", yell = false}
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
	{type = COMBAT_EARTHDAMAGE, percent = -15},
	{type = COMBAT_FIREDAMAGE, percent = 10},
	{type = COMBAT_LIFEDRAIN, percent = 0},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = 10},
	{type = COMBAT_HOLYDAMAGE , percent = 10},
	{type = COMBAT_DEATHDAMAGE , percent = 0}
}

monster.attacks = {
	{ name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -1250 },
	{ name = "energy chain", interval = 5000, chance = 37, minDamage = -750, maxDamage = -1000, range = 3, target = true },
	{ name = "combat", interval = 2700, chance = 35, type = COMBAT_ENERGYDAMAGE, minDamage = -500, maxDamage = -600, range = 5, shootEffect = CONST_ANI_ENERGY, target = true },
	{ name = "emerald tortoise large ring", interval = 3500, chance = 35, minDamage = -550, maxDamage = -1000 },
	{ name = "emerald tortoise small ring", interval = 4500, chance = 20, minDamage = -550, maxDamage = -700 },
	{ name = "emerald tortoise small explosion", interval = 3800, chance = 30, minDamage = -400, maxDamage = -600 },
	{ name = "combat", interval = 4100, chance = 30, type = COMBAT_ENERGYDAMAGE, minDamage = -450, maxDamage = -750, radius = 3, effect = CONST_ME_BLUE_ENERGY_SPARK, target = false }
}

monster.defenses = {
	defense = 97,
	armor = 97
}

monster.loot = {
	{id = 44410, chance = 28571},
	{id = 8472, chance = 17857, maxCount = 2},
	{id = 2160, chance = 14286, maxCount = 3},
	{id = 2156, chance = 7143},
	{id = 18420, chance = 7143},
	{id = 7632, chance = 7143},
	{id = 2155, chance = 7143},
	{id = 2143, chance = 3571},
	{id = 2144, chance = 3571, maxCount = 2},
	{id = 18421, chance = 3571},
	{id = 18413, chance = 3571},
	{id = 2154, chance = 3571},
	{id = 2153, chance = 2500},
	{id = 18415, chance = 2500},
	{id = 5022, chance = 2500, maxCount = 2}
}

mType:register(monster)
