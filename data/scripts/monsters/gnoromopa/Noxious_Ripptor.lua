local mType = Game.createMonsterType("Noxious Ripptor")
local monster = {}

monster.name = "Noxious Ripptor"
monster.description = "a noxious ripptor"
monster.experience = 13190
monster.outfit = { lookType = 1558 }

monster.health = 22700
monster.maxHealth = 22700
monster.runHealth = 0
monster.race = "blood"
monster.corpse = 44354
monster.speed = 360
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
	{text = "Krccchht!", yell = false}
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
	{type = COMBAT_EARTHDAMAGE, percent = 10},
	{type = COMBAT_FIREDAMAGE, percent = 0},
	{type = COMBAT_LIFEDRAIN, percent = 0},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = -10},
	{type = COMBAT_HOLYDAMAGE , percent = -10},
	{type = COMBAT_DEATHDAMAGE , percent = -10}
}

monster.attacks = {
	{ name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -1350 },
	{ name = "combat", interval = 2500, chance = 40, type = COMBAT_EARTHDAMAGE, minDamage = -1100, maxDamage = -1700, range = 1, radius = 1, shootEffect = CONST_ANI_POISON, effect = CONST_ME_POISONAREA, target = true },
	{ name = "noxious ripptor wave", interval = 4500, chance = 30, minDamage = -450, maxDamage = -750 }
}

monster.defenses = {
	defense = 82,
	armor = 82
}

monster.loot = {
	{id = 2160, chance = 26842, maxCount = 2},
	{id = 44422, chance = 12765},
	{id = 8473, chance = 10575, maxCount = 2},
	{id = 44420, chance = 8188, maxCount = 2},
	{id = 2409, chance = 1401},
	{id = 10219, chance = 1342},
	{id = 18411, chance = 1273},
	{id = 7885, chance = 750},
	{id = 28355, chance = 454}
}

mType:register(monster)
