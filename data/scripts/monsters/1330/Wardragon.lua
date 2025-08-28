local mType = Game.createMonsterType("Wardragon")
local monster = {}

monster.name = "Wardragon"
monster.description = "a wardragon"
monster.experience = 5810
monster.outfit = {
	lookType = 0,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}

monster.health = 6960
monster.maxHealth = 6960
monster.runHealth = 0
monster.race = "blood"
monster.corpse = 0
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
	{text = "AHHH ... THAT RAGE!", yell = false},
	{text = "SUFFER!", yell = false},
	{text = "DESSSTRUCTIOOON!!", yell = false}
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
	{type = COMBAT_EARTHDAMAGE, percent = -10},
	{type = COMBAT_FIREDAMAGE, percent = 40},
	{type = COMBAT_LIFEDRAIN, percent = 0},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = -10},
	{type = COMBAT_HOLYDAMAGE , percent = -5},
	{type = COMBAT_DEATHDAMAGE , percent = 15}
}

monster.attacks = {
}

monster.defenses = {
	defense = 80,
	armor = 80
}

monster.loot = {
	{id = 2152, chance = 54362, maxCount = 30},
	{id = 49734, chance = 13199},
	{id = 49739, chance = 11633},
	{id = 27594, chance = 7606},
	{id = 9971, chance = 6711},
	{id = 49740, chance = 6040},
	{id = 8473, chance = 5593},
	{id = 2144, chance = 5145},
	{id = 24849, chance = 4251, maxCount = 2},
	{id = 26029, chance = 2013},
	{id = 35425, chance = 895},
	{id = 7430, chance = 224}
}

mType:register(monster)
