local mType = Game.createMonsterType("Gore Horn")
local monster = {}

monster.name = "Gore Horn"
monster.description = "a gore horn"
monster.experience = 12595
monster.outfit = { lookType = 1548 }

monster.health = 20620
monster.maxHealth = 20620
monster.runHealth = 0
monster.race = "blood"
monster.corpse = 44314
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
	{text = "Rraaaaa!", yell = false}
}

monster.immunities = {
	{type = "paralyze", condition = true},
	{type = "outfit", condition = false},
	{type = "invisible", condition = true},
	{type = "drunk", condition = true},
	{type = "bleed", condition = false}
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 0},
	{type = COMBAT_ENERGYDAMAGE, percent = 50},
	{type = COMBAT_EARTHDAMAGE, percent = 0},
	{type = COMBAT_FIREDAMAGE, percent = -10},
	{type = COMBAT_LIFEDRAIN, percent = 0},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = 10},
	{type = COMBAT_HOLYDAMAGE , percent = 0},
	{type = COMBAT_DEATHDAMAGE , percent = 0}
}

monster.attacks = {
	{ name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -1000 },
	{ name = "combat", interval = 3500, chance = 20, type = COMBAT_ENERGYDAMAGE, minDamage = -450, maxDamage = -750, length = 7, spread = 0, effect = CONST_ME_ENERGYAREA, target = false },
	{ name = "combat", interval = 4100, chance = 15, type = COMBAT_PHYSICALDAMAGE, minDamage = -500, maxDamage = -900, radius = 7, effect = CONST_ME_EXPLOSIONAREA, target = false },
	{ name = "combat", interval = 2700, chance = 35, type = COMBAT_ENERGYDAMAGE, minDamage = -500, maxDamage = -850, range = 1, shootEffect = CONST_ANI_ENERGY, target = true },
	{ name = "root", interval = 2000, chance = 15, target = true }
}

monster.defenses = {
	defense = 78,
	armor = 78
}

monster.loot = {
	{id = 44408, chance = 42105},
	{id = 2160, chance = 21053},
	{id = 7387, chance = 7895},
	{id = 2231, chance = 5263},
	{id = 2485, chance = 5263},
	{id = 2444, chance = 2632},
	{id = 2213, chance = 2632},
	{id = 2477, chance = 2500},
	{id = 23540, chance = 2500}
}

mType:register(monster)
