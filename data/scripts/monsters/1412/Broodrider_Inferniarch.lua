local mType = Game.createMonsterType("Broodrider Inferniarch")
local monster = {}

monster.name = "Broodrider Inferniarch"
monster.description = "a broodrider inferniarch"
monster.experience = 7400
monster.outfit = { lookType = 1796 }

monster.health = 9600
monster.maxHealth = 9600
monster.runHealth = 0
monster.race = "undead"
monster.corpse = 54997
monster.speed = 330
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
	{text = "Mah...Hun Hur...!", yell = false}
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
	{type = COMBAT_ENERGYDAMAGE, percent = -5},
	{type = COMBAT_EARTHDAMAGE, percent = 10},
	{type = COMBAT_FIREDAMAGE, percent = 20},
	{type = COMBAT_LIFEDRAIN, percent = 0},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = -15},
	{type = COMBAT_HOLYDAMAGE , percent = -10},
	{type = COMBAT_DEATHDAMAGE , percent = 15}
}

monster.attacks = {
	{ name = "melee", interval = 2000, chance = 100, minDamage = 250, maxDamage = -400 },
	{ name = "combat", interval = 3000, chance = 20, type = COMBAT_PHYSICALDAMAGE, minDamage = -400, maxDamage = -470, range = 1, effect = CONST_ME_BITE, target = true },
	{ name = "combat", interval = 2000, chance = 25, type = COMBAT_DEATHDAMAGE, minDamage = -340, maxDamage = -370, range = 7, shootEffect = CONST_ANI_INFERNALBOLT, effect = CONST_ME_MORTAREA, target = true },
}

monster.defenses = {
	defense = 70,
	armor = 70
}

monster.loot = {
	{id = 2152, chance = 100000, maxCount = 25},
	{id = 18418, chance = 5265},
	{id = 24849, chance = 5134, maxCount = 3},
	{id = 2547, chance = 2844, maxCount = 5},
	{id = 18436, chance = 2698, maxCount = 5},
	{id = 54900, chance = 2625},
	{id = 55049, chance = 1998},
	{id = 54899, chance = 1123},
	{id = 7894, chance = 700},
	{id = 54885, chance = 452},
	{id = 5803, chance = 73}
}

mType:register(monster)
