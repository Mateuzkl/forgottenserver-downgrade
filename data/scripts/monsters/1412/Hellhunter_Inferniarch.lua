local mType = Game.createMonsterType("Hellhunter Inferniarch")
local monster = {}

monster.name = "Hellhunter Inferniarch"
monster.description = "a hellhunter inferniarch"
monster.experience = 8100
monster.outfit = { lookType = 1793 }

monster.health = 11300
monster.maxHealth = 11300
monster.runHealth = 0
monster.race = "undead"
monster.corpse = 54985
monster.speed = 350
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
	{ text = "Ardash... El...!", yell = true },
	{ text = "Urrrglll!", yell = true },
}

monster.immunities = {
	{type = "paralyze", condition = true},
	{type = "outfit", condition = false},
	{type = "invisible", condition = true},
	{type = "drunk", condition = true},
	{type = "bleed", condition = false}
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 10},
	{type = COMBAT_ENERGYDAMAGE, percent = 15},
	{type = COMBAT_EARTHDAMAGE, percent = -15},
	{type = COMBAT_FIREDAMAGE, percent = 0},
	{type = COMBAT_LIFEDRAIN, percent = 0},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = 5},
	{type = COMBAT_HOLYDAMAGE , percent = 0},
	{type = COMBAT_DEATHDAMAGE , percent = -15}
}

monster.attacks = {
	{ name = "melee", interval = 2000, chance = 0, minDamage = 250, maxDamage = -400 },
	{ name = "extended white chain", interval = 2000, chance = 15, minDamage = -275, maxDamage = -438, range = 4 },
	{ name = "combat", interval = 3000, chance = 20, type = COMBAT_DEATHDAMAGE, minDamage = -340, maxDamage = -470, range = 4, effect = CONST_ME_MORTAREA, target = true },
	{ name = "combat", interval = 2000, chance = 25, type = COMBAT_ENERGYDAMAGE, minDamage = -350, maxDamage = -430, range = 4, radius = 4, shootEffect = CONST_ANI_DIAMONDARROW, effect = CONST_ME_ENERGYAREA, target = true },
	{ name = "combat", interval = 2000, chance = 100, type = COMBAT_DEATHDAMAGE, minDamage = -240, maxDamage = -370, range = 4, radius = 4, shootEffect = CONST_ANI_SNIPERARROW, effect = CONST_ME_BLACK_BLOOD, target = true },
}

monster.defenses = {
	defense = 73,
	armor = 73
}

monster.loot = {
	{id = 2152, chance = 100000, maxCount = 35},
	{id = 7365, chance = 10113, maxCount = 5},
	{id = 7368, chance = 8521, maxCount = 10},
	{id = 2150, chance = 7125, maxCount = 4},
	{id = 18419, chance = 4114},
	{id = 54900, chance = 2963},
	{id = 7364, chance = 2767, maxCount = 5},
	{id = 2490, chance = 1959},
	{id = 6300, chance = 1053},
	{id = 54899, chance = 1028},
	{id = 54885, chance = 686},
	{id = 55046, chance = 490},
	{id = 8855, chance = 73}
}

mType:register(monster)
