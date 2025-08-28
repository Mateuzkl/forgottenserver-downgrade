local mType = Game.createMonsterType("Sulphider")
local monster = {}

monster.name = "Sulphider"
monster.description = "a sulphider"
monster.experience = 13328
monster.outfit = { lookType = 1546 }

monster.health = 21000
monster.maxHealth = 21000
monster.runHealth = 0
monster.race = "blood"
monster.corpse = 44306
monster.speed = 430
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
	{text = "Tikkee...Takka...", yell = false}
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
	{type = COMBAT_FIREDAMAGE, percent = 20},
	{type = COMBAT_LIFEDRAIN, percent = 0},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = -20},
	{type = COMBAT_HOLYDAMAGE , percent = -10},
	{type = COMBAT_DEATHDAMAGE , percent = 20}
}

monster.attacks = {
	{ name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -1000 },
	{ name = "combat", interval = 3500, chance = 40, type = COMBAT_FIREDAMAGE, minDamage = -650, maxDamage = -1060, range = 7, radius = 4, shootEffect = CONST_ANI_FIRE, effect = CONST_ME_FIREAREA, target = true },
	{ name = "blast ring", interval = 4000, chance = 35, minDamage = -600, maxDamage = -1100 }
}

monster.defenses = {
	defense = 83,
	armor = 83
}

monster.loot = {
	{id = 44407, chance = 33945},
	{id = 44406, chance = 22018},
	{id = 26029, chance = 11927},
	{id = 2160, chance = 11009, maxCount = 3},
	{id = 2143, chance = 5505},
	{id = 2519, chance = 2752},
	{id = 2173, chance = 2752},
	{id = 7891, chance = 917},
	{id = 2432, chance = 917},
	{id = 7426, chance = 917}
}

mType:register(monster)
