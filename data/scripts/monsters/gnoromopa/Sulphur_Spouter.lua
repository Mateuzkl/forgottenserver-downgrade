local mType = Game.createMonsterType("Sulphur Spouter")
local monster = {}

monster.name = "Sulphur Spouter"
monster.description = "a sulphur spouter"
monster.experience = 11517
monster.outfit = { lookType = 1547 }

monster.health = 19000
monster.maxHealth = 19000
monster.runHealth = 0
monster.race = "blood"
monster.corpse = 44310
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
	{text = "Gruugl...", yell = false}
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
	{type = COMBAT_ENERGYDAMAGE, percent = 0},
	{type = COMBAT_EARTHDAMAGE, percent = 0},
	{type = COMBAT_FIREDAMAGE, percent = 25},
	{type = COMBAT_LIFEDRAIN, percent = 0},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = 0},
	{type = COMBAT_HOLYDAMAGE , percent = -20},
	{type = COMBAT_DEATHDAMAGE , percent = 0}
}

monster.attacks = {
	{ name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -801 },
	{ name = "combat", interval = 3500, chance = 35, type = COMBAT_PHYSICALDAMAGE, minDamage = -800, maxDamage = -1200, range = 4, shootEffect = CONST_ANI_HOLY, effect = CONST_ME_YELLOW_RINGS, target = true },
	{ name = "combat", interval = 4000, chance = 20, type = COMBAT_FIREDAMAGE, minDamage = -800, maxDamage = -1200, radius = 4, effect = CONST_ME_YELLOWSMOKE, target = true },
	{ name = "sulphur spouter wave", interval = 4500, chance = 30, minDamage = -650, maxDamage = -900 }
}

monster.defenses = {
	defense = 84,
	armor = 84
}

monster.loot = {
	{id = 44407, chance = 40909},
	{id = 2160, chance = 15152, maxCount = 2},
	{id = 26029, chance = 12121, maxCount = 2},
	{id = 15453, chance = 4545},
	{id = 2164, chance = 4545},
	{id = 7632, chance = 3030},
	{id = 2477, chance = 3030},
	{id = 9813, chance = 3030},
	{id = 26189, chance = 3030},
	{id = 2154, chance = 1515},
	{id = 2156, chance = 1515},
	{id = 2392, chance = 1515},
	{id = 18453, chance = 1515}
}

mType:register(monster)
