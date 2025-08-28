local mType = Game.createMonsterType("Spellreaper Inferniarch")
local monster = {}

monster.name = "Spellreaper Inferniarch"
monster.description = "a spellreaper inferniarch"
monster.experience = 8350
monster.outfit = { lookType = 1792 }

monster.health = 11800
monster.maxHealth = 11800
monster.runHealth = 0
monster.race = "undead"
monster.corpse = 54981
monster.speed = 360
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
	{text = "CHA..RAK!", yell = false},
	{text = "Garrr!", yell = false}
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
	{type = COMBAT_ENERGYDAMAGE, percent = 100},
	{type = COMBAT_EARTHDAMAGE, percent = -15},
	{type = COMBAT_FIREDAMAGE, percent = 0},
	{type = COMBAT_LIFEDRAIN, percent = 0},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = 10},
	{type = COMBAT_HOLYDAMAGE , percent = 0},
	{type = COMBAT_DEATHDAMAGE , percent = -15}
}

monster.attacks = {
	{ name = "melee", interval = 2000, chance = 0, minDamage = 250, maxDamage = -400 },
	{ name = "extended white chain", interval = 2000, chance = 15, minDamage = -275, maxDamage = -438, range = 4 },
	{ name = "combat", interval = 2000, chance = 20, type = COMBAT_DEATHDAMAGE, minDamage = -250, maxDamage = -350, range = 7, radius = 4, shootEffect = CONST_ANI_DEATH, effect = CONST_ME_DRAWBLOOD, target = true },
	{ name = "combat", interval = 2000, chance = 20, type = COMBAT_EARTHDAMAGE, minDamage = -250, maxDamage = -350, range = 7, radius = 4, shootEffect = CONST_ANI_POISON, effect = CONST_ME_HITBYPOISON, target = true },
}

monster.defenses = {
	defense = 74,
	armor = 74
}

monster.loot = {
	{id = 2152, chance = 100000, maxCount = 34},
	{id = 2795, chance = 7051},
	{id = 2147, chance = 5933, maxCount = 4},
	{id = 27618, chance = 3323},
	{id = 2144, chance = 3210},
	{id = 54900, chance = 3096},
	{id = 2187, chance = 2124},
	{id = 54899, chance = 892},
	{id = 54885, chance = 843},
	{id = 8902, chance = 600},
	{id = 55045, chance = 438}
}

mType:register(monster)
