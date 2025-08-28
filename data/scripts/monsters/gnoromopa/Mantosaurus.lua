local mType = Game.createMonsterType("Mantosaurus")
local monster = {}

monster.name = "Mantosaurus"
monster.description = "a mantosaurus"
monster.experience = 11569
monster.outfit = { lookType = 1556 }

monster.health = 19400
monster.maxHealth = 19400
monster.runHealth = 0
monster.race = "blood"
monster.corpse = 44346
monster.speed = 410
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
	{text = "Klkkk... Klkkk...", yell = false}
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
	{type = COMBAT_EARTHDAMAGE, percent = 5},
	{type = COMBAT_FIREDAMAGE, percent = 0},
	{type = COMBAT_LIFEDRAIN, percent = 0},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = -15},
	{type = COMBAT_HOLYDAMAGE , percent = -15},
	{type = COMBAT_DEATHDAMAGE , percent = 5}
}

monster.attacks = {
	{ name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -1000 },
	{ name = "combat", interval = 3500, chance = 47, type = COMBAT_PHYSICALDAMAGE, minDamage = -750, maxDamage = -1100, radius = 4, effect = CONST_ME_YELLOWSMOKE, target = false },
	{ name = "combat", interval = 2500, chance = 31, type = COMBAT_EARTHDAMAGE, minDamage = -550, maxDamage = -800, radius = 4, effect = CONST_ME_HITBYPOISON, target = true },
	{ name = "mantosaurus ring", interval = 4000, chance = 25, minDamage = -500, maxDamage = -700, range = 4, target = true }
}

monster.defenses = {
	defense = 65,
	armor = 65
}

monster.loot = {
	{id = 2160, chance = 25523, maxCount = 2},
	{id = 44417, chance = 19237},
	{id = 26029, chance = 9618, maxCount = 3},
	{id = 2134, chance = 3991},
	{id = 18420, chance = 3700},
	{id = 18415, chance = 3022},
	{id = 18419, chance = 2993},
	{id = 27047, chance = 2441},
	{id = 2124, chance = 1414},
	{id = 2179, chance = 1327},
	{id = 2173, chance = 165}
}

mType:register(monster)
