local mType = Game.createMonsterType("Bulltaur Forgepriest")
local monster = {}

monster.name = "Bulltaur Forgepriest"
monster.description = "a bulltaur forgepriest"
monster.experience = 6400
monster.outfit = {
	lookType = 0,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}

monster.health = 6840
monster.maxHealth = 6840
monster.runHealth = 0
monster.race = "blood"
monster.corpse = 0
monster.speed = 146
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
	{text = "What a chance to try out my latest work!", yell = false},
	{text = "May the forge be with me!", yell = false},
	{text = "The forge-fire will cleanse you!", yell = false}
}

monster.immunities = {
	{type = "paralyze", condition = true},
	{type = "outfit", condition = false},
	{type = "invisible", condition = true},
	{type = "drunk", condition = true},
	{type = "bleed", condition = false}
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 20},
	{type = COMBAT_ENERGYDAMAGE, percent = 0},
	{type = COMBAT_EARTHDAMAGE, percent = 0},
	{type = COMBAT_FIREDAMAGE, percent = 15},
	{type = COMBAT_LIFEDRAIN, percent = 0},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = -10},
	{type = COMBAT_HOLYDAMAGE , percent = 0},
	{type = COMBAT_DEATHDAMAGE , percent = -10}
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -270},
	{name ="combat", interval = 2000, chance = 15, type = COMBAT_ENERGYDAMAGE, minDamage = -450, maxDamage = -600, effect = CONST_ME_PURPLEENERGY},
	{name ="combat", interval = 2000, chance = 15, type = COMBAT_HOLYDAMAGE, minDamage = 0, maxDamage = -550, radius = 4, target = false, effect = CONST_ME_HOLYDAMAGE},
	{name ="combat", interval = 2000, chance = 15, type = COMBAT_ENERGYDAMAGE, minDamage = 0, maxDamage = -280, radius = 4, target = true, shootEffect = CONST_ANI_ENERGY, effect = CONST_ME_PURPLESMOKE},
	{name ="speed", interval = 2000, chance = 15, speed = {min = -400, max = -400}, duration = 20000, radius = 4, target = true, effect = CONST_ME_YELLOWSMOKE},
	{name ="combat", interval = 2000, chance = 15, type = COMBAT_ENERGYDAMAGE, minDamage = 0, maxDamage = -300, shootEffect = CONST_ANI_ENERGY},
	{name ="combat", interval = 2000, chance = 15, type = COMBAT_ENERGYDAMAGE, minDamage = 0, maxDamage = -300, radius = 3, target = true, shootEffect = CONST_ANI_ENERGY}
}

monster.defenses = {
	defense = 73,
	armor = 73
}

monster.loot = {
	{id = 2152, chance = 52798, maxCount = 45},
	{id = 49727, chance = 15885},
	{id = 9970, chance = 10006, maxCount = 3},
	{id = 49732, chance = 7744},
	{id = 49733, chance = 3618},
	{id = 9971, chance = 2657},
	{id = 5944, chance = 1639},
	{id = 18390, chance = 1244},
	{id = 2158, chance = 1187},
	{id = 7898, chance = 904},
	{id = 8902, chance = 791},
	{id = 2157, chance = 735},
	{id = 2197, chance = 622},
	{id = 35425, chance = 622},
	{id = 2153, chance = 396},
	{id = 53085, chance = 57}
}

mType:register(monster)
