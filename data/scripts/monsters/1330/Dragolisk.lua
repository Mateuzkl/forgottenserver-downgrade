local mType = Game.createMonsterType("Dragolisk")
local monster = {}

monster.name = "Dragolisk"
monster.description = "a dragolisk"
monster.experience = 5050
monster.outfit = {
	lookType = 0,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}

monster.health = 6180
monster.maxHealth = 6180
monster.runHealth = 0
monster.race = "blood"
monster.corpse = 0
monster.speed = 172
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
	{text = "Just look at me!", yell = false},
	{text = "I'll stare you down", yell = false},
	{text = "Let me have a look!", yell = false}
}

monster.immunities = {
	{type = "paralyze", condition = true},
	{type = "outfit", condition = false},
	{type = "invisible", condition = true},
	{type = "drunk", condition = true},
	{type = "bleed", condition = false}
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 15},
	{type = COMBAT_ENERGYDAMAGE, percent = 0},
	{type = COMBAT_EARTHDAMAGE, percent = -10},
	{type = COMBAT_FIREDAMAGE, percent = 40},
	{type = COMBAT_LIFEDRAIN, percent = 0},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = -5},
	{type = COMBAT_HOLYDAMAGE , percent = -15},
	{type = COMBAT_DEATHDAMAGE , percent = -10}
}

monster.attacks = {
}

monster.defenses = {
	defense = 86,
	armor = 86
}

monster.loot = {
	{id = 2152, chance = 50952, maxCount = 36},
	{id = 49738, chance = 14048},
	{id = 49734, chance = 9048},
	{id = "giant shimmering pearl", chance = 6905},
	{id = 2156, chance = 6905},
	{id = 2155, chance = 4048},
	{id = 49737, chance = 3810},
	{id = 12413, chance = 2143},
	{id = 8473, chance = 1667},
	{id = 26029, chance = 714},
	{id = 2516, chance = 714},
	{id = 53086, chance = 238}
}

mType:register(monster)
