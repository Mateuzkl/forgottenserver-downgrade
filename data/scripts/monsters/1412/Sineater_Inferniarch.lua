local mType = Game.createMonsterType("Sineater Inferniarch")
local monster = {}

monster.name = "Sineater Inferniarch"
monster.description = "a sineater inferniarch"
monster.experience = 6750
monster.outfit = { lookType = 1795 }

monster.health = 9150
monster.maxHealth = 9150
monster.runHealth = 0
monster.race = "undead"
monster.corpse = 54993
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
	{text = "Kah ... Thul... GROAR!", yell = false},
	{text = "Bahrrr... Bharush!", yell = false}
}

monster.immunities = {
	{type = "paralyze", condition = true},
	{type = "outfit", condition = false},
	{type = "invisible", condition = true},
	{type = "drunk", condition = true},
	{type = "bleed", condition = false}
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = -5},
	{type = COMBAT_ENERGYDAMAGE, percent = -10},
	{type = COMBAT_EARTHDAMAGE, percent = 0},
	{type = COMBAT_FIREDAMAGE, percent = 100},
	{type = COMBAT_LIFEDRAIN, percent = 0},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = -5},
	{type = COMBAT_HOLYDAMAGE , percent = -5},
	{type = COMBAT_DEATHDAMAGE , percent = 10}
}

monster.attacks = {
	{ name = "melee", interval = 2000, chance = 100, minDamage = 200, maxDamage = -255 },
	{ name = "combat", interval = 2000, chance = 20, type = COMBAT_FIREDAMAGE, minDamage = -350, maxDamage = -415, range = 7, radius = 4, shootEffect = CONST_ANI_FIRE, effect = CONST_ME_FIREAREA, target = true },
	{ name = "combat", interval = 2000, chance = 10, type = COMBAT_DEATHDAMAGE, minDamage = -350, maxDamage = -450, length = 4, spread = 5, effect = CONST_ME_WHITE_ENERGY_SPARK, target = false },
	{ name = "combat", interval = 2700, chance = 37, type = COMBAT_DEATHDAMAGE, minDamage = -350, maxDamage = -405, radius = 1, effect = CONST_ME_BIG_SCRATCH, range = 1, target = true },
	{ name = "firefield", interval = 2000, chance = 15, range = 7, radius = 1, shootEffect = CONST_ANI_FIRE, effect = CONST_ME_FIREAREA, target = true },
}

monster.defenses = {
	defense = 68,
	armor = 68,
	{name ="combat", interval = 2000, chance = 20, type = COMBAT_HEALING, minDamage = 915, maxDamage = 2287}
}

monster.loot = {
	{id = 2152, chance = 100000, maxCount = 25},
	{id = 7590, chance = 6390},
	{id = 2147, chance = 4738, maxCount = 2},
	{id = 2156, chance = 3612},
	{id = 54900, chance = 2747},
	{id = 55048, chance = 2084},
	{id = 2133, chance = 2022},
	{id = 18390, chance = 1080},
	{id = 54899, chance = 1050},
	{id = 28355, chance = 463},
	{id = 54885, chance = 432}
}

mType:register(monster)
