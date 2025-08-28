local mType = Game.createMonsterType("Mitmah Scout")
local monster = {}

monster.name = "Mitmah Scout"
monster.description = "a mitmah scout"
monster.experience = 3230
monster.outfit = {
	lookType = 0,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}

monster.health = 3940
monster.maxHealth = 3940
monster.runHealth = 0
monster.race = "blood"
monster.corpse = 0
monster.speed = 280
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
	{text = "Die for us!", yell = false},
	{text = "Humans ought to be extinct!", yell = false},
	{text = "This belongs to us now!", yell = false}
}

monster.immunities = {
	{type = "paralyze", condition = true},
	{type = "outfit", condition = false},
	{type = "invisible", condition = true},
	{type = "drunk", condition = true},
	{type = "bleed", condition = false}
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 5},
	{type = COMBAT_ENERGYDAMAGE, percent = -5},
	{type = COMBAT_EARTHDAMAGE, percent = -15},
	{type = COMBAT_FIREDAMAGE, percent = 10},
	{type = COMBAT_LIFEDRAIN, percent = 0},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = 15},
	{type = COMBAT_HOLYDAMAGE , percent = -10},
	{type = COMBAT_DEATHDAMAGE , percent = 15}
}

monster.attacks = {
}

monster.defenses = {
	defense = 45,
	armor = 45
}

monster.loot = {
	{id = 2152, chance = 48144, maxCount = 10},
	{id = 2152, chance = 35000, maxCount = 10},
	{id = 18417, chance = 7511},
	{id = "giant shimmering pearl", chance = 7377},
	{id = 18416, chance = 6837},
	{id = 7588, chance = 6102, maxCount = 3},
	{id = 24850, chance = 4240},
	{id = 24849, chance = 3701},
	{id = 9971, chance = 2855},
	{id = 45520, chance = 2500},
	{id = 2154, chance = 2451},
	{id = 27618, chance = 2438},
	{id = 2133, chance = 1801},
	{id = 18436, chance = 1311, maxCount = 10},
	{id = 2157, chance = 319},
	{id = 15644, chance = 135},
	{id = 53089, chance = 37}
}

mType:register(monster)
