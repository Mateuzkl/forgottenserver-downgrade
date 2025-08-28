local mType = Game.createMonsterType("Rotrender")
local monster = {}

monster.name = "Rotrender"
monster.description = "an rotrender"
monster.experience = 500000
monster.outfit = { lookType = 1803}

monster.health = 12000000
monster.maxHealth = 12000000
monster.runHealth = 0
monster.race = "blood"
monster.corpse = 55024
monster.speed = 290
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
	boss = true,
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
	{text = "AZAL HIH CHEMEK DOOL!", yell = false},
	{text = "KARGAH ATHUM BAJI THEMM!", yell = false},
	{text = "CHAMEK HAZIL THAJ!", yell = false}
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
	{type = COMBAT_FIREDAMAGE, percent = 0},
	{type = COMBAT_LIFEDRAIN, percent = 0},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = 0},
	{type = COMBAT_HOLYDAMAGE , percent = 0},
	{type = COMBAT_DEATHDAMAGE , percent = 0}
}

monster.attacks = {
}

monster.defenses = {
	defense = 5,
	armor = 10
}

monster.loot = {
	{id = 2160, chance = 100000, maxCount = 3},
	{id = 2152, chance = 100000, maxCount = 98},
	{id = 7589, chance = 50000, maxCount = 19},
	{id = 7590, chance = 50000, maxCount = 14},
	{id = 2158, chance = 42857, maxCount = 2},
	{id = 2154, chance = 42857, maxCount = 2},
	{id = 26030, chance = 35714, maxCount = 14},
	{id = 8473, chance = 35714, maxCount = 20},
	{id = 26029, chance = 21429, maxCount = 29},
	{id = 2197, chance = 21429},
	{id = 2152, chance = 20000, maxCount = 98},
	{id = 2462, chance = 14286},
	{id = 2393, chance = 14286},
	{id = 2432, chance = 14286},
	{id = 8472, chance = 14286, maxCount = 4},
	{id = 2156, chance = 14286, maxCount = 2},
	{id = 26031, chance = 14286, maxCount = 8},
	{id = 7890, chance = 7143},
	{id = 6300, chance = 7143},
	{id = 2168, chance = 7143},
	{id = 2479, chance = 7143},
	{id = 2396, chance = 7143}
}

mType:register(monster)
