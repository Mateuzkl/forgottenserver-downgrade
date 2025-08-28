local mType = Game.createMonsterType("Mega Dragon")
local monster = {}

monster.name = "Mega Dragon"
monster.description = "a mega dragon"
monster.experience = 7810
monster.outfit = {
	lookType = 0,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}

monster.health = 7920
monster.maxHealth = 7920
monster.runHealth = 0
monster.race = "blood"
monster.corpse = 0
monster.speed = 340
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
	{text = "It's heart will be mine!", yell = false},
	{text = "Just leave it to me!", yell = false},
	{text = "Stop playing with the food, I'm hungry!", yell = false}
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
	{type = COMBAT_ENERGYDAMAGE, percent = -10},
	{type = COMBAT_EARTHDAMAGE, percent = -10},
	{type = COMBAT_FIREDAMAGE, percent = 20},
	{type = COMBAT_LIFEDRAIN, percent = 0},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = 20},
	{type = COMBAT_HOLYDAMAGE , percent = -10},
	{type = COMBAT_DEATHDAMAGE , percent = 20}
}

monster.attacks = {
}

monster.defenses = {
	defense = 76,
	armor = 76
}

monster.loot = {
	{id = 2152, chance = 50249, maxCount = 24},
	{id = 49734, chance = 8618},
	{id = 8473, chance = 5502},
	{id = 2156, chance = 5138},
	{id = 49735, chance = 4707},
	{id = 27618, chance = 4674},
	{id = 26029, chance = 4342},
	{id = 28393, chance = 3944, maxCount = 2},
	{id = 2158, chance = 3580},
	{id = 49736, chance = 1956},
	{id = 2153, chance = 1260},
	{id = 7402, chance = 99},
	{id = 53088, chance = 33},
	{id = 54155, chance = 33}
}

mType:register(monster)
