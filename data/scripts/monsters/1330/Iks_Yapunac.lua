local mType = Game.createMonsterType("Iks Yapunac")
local monster = {}

monster.name = "Iks Yapunac"
monster.description = "an iks yapunac"
monster.experience = 2340
monster.outfit = {
	lookType = 0,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}

monster.health = 3125
monster.maxHealth = 3125
monster.runHealth = 0
monster.race = "undead"
monster.corpse = 0
monster.speed = 240
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
	{text = "MIT-MAH!", yell = false},
	{text = "Grrrmh...", yell = false},
	{text = "CHAHAAAR!!!", yell = false}
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
	{type = COMBAT_ENERGYDAMAGE, percent = -10},
	{type = COMBAT_EARTHDAMAGE, percent = 10},
	{type = COMBAT_FIREDAMAGE, percent = 10},
	{type = COMBAT_LIFEDRAIN, percent = 0},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = -5},
	{type = COMBAT_HOLYDAMAGE , percent = 15},
	{type = COMBAT_DEATHDAMAGE , percent = -20}
}

monster.attacks = {
}

monster.defenses = {
	defense = 45,
	armor = 45
}

monster.loot = {
	{id = 2148, chance = 15000, maxCount = 50},
	{id = 2152, chance = 55156, maxCount = 10},
	{id = 2152, chance = 35000, maxCount = 10},
	{id = 2148, chance = 20863, maxCount = 50},
	{id = "giant shimmering pearl", chance = 16307},
	{id = 7591, chance = 12230},
	{id = 18416, chance = 3837},
	{id = 27617, chance = 3118},
	{id = 45519, chance = 3118},
	{id = 18417, chance = 2878},
	{id = 23541, chance = 2638},
	{id = 24849, chance = 2638},
	{id = 24850, chance = 2398, maxCount = 2},
	{id = 7452, chance = 719},
	{id = 12470, chance = 480},
	{id = 2197, chance = 480}
}

mType:register(monster)
