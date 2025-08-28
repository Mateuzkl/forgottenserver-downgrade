local mType = Game.createMonsterType("Frazzlemaw")
local monster = {}

monster.name = "Frazzlemaw"
monster.description = "a frazzlemaw"
monster.experience = 3740
monster.outfit = { lookType = 594 }

monster.health = 4100
monster.maxHealth = 4100
monster.runHealth = 0
monster.race = "blood"
monster.corpse = 0
monster.speed = 1900
monster.summonCost = 0

monster.changeTarget = {
	interval = 4000,
	chance = 10,
}

monster.flags = {
	summonable = false,
	attackable = true,
	hostile = true,
	convinceable = false,
	pushable = false,
	rewardBoss = false,
	illusionable = false,
	canPushItems = true,
	canPushCreatures = true,
	staticAttackChance = 90,
	targetDistance = 1,
	healthHidden = false,
	isBlockable = false,
	canWalkOnEnergy = true,
	canWalkOnFire = true,
	canWalkOnPoison = true,
}

monster.light = {
	level = 0,
	color = 0,
}

monster.voices = {
	interval = 5000,
	chance = 10,
	{ text = "Mwaaahgod! Overmwaaaaah! *gurgle*", yell = false },
	{ text = "Mwaaaahnducate youuuuuu *gurgle*, mwaaah!", yell = false },
	{ text = "MMMWAHMWAHMWAHMWAAAAH!", yell = true },
	{ text = "Mmmwhamwhamwhah, mwaaah!", yell = false },
}

-- monster.loot = {
	-- { name = "gold coin", chance = 100000, maxCount = 100 },
	-- { name = "platinum coin", chance = 100000, maxCount = 7 },
	-- { name = "banana skin", chance = 9500 },
	-- { name = "piece of iron", chance = 10400 },
	-- { name = "fishbone", chance = 10000 },
	-- { id = 3114, chance = 12680 },
	-- { id = 3115, chance = 10000 },
	-- { id = 3116, chance = 5500 },
	-- { name = "two handed sword", chance = 3200 },
	-- { id = 3578, chance = 6750, maxCount = 3 },
	-- { name = "ham", chance = 6000, maxCount = 2 },
	-- { name = "iron ore", chance = 3000 },
	-- { name = "fish fin", chance = 4700 },
	-- { name = "hardened bone", chance = 5000 },
	-- { id = 5951, chance = 10800 },
	-- { name = "assassin dagger", chance = 1000 },
	-- { name = "haunted blade", chance = 2240 },
	-- { name = "nightmare blade", chance = 1100 },
	-- { name = "great mana potion", chance = 15000, maxCount = 3 },
	-- { name = "great health potion", chance = 15000, maxCount = 2 },
	-- { name = "gold ingot", chance = 2300 },
	-- { name = "sai", chance = 1460 },
	-- { name = "violet crystal shard", chance = 3000 },
	-- { name = "brown crystal splinter", chance = 16000 },
	-- { name = "red crystal fragment", chance = 7600 },
	-- { id = 16279, chance = 10000 },
	-- { name = "cluster of solace", chance = 4450 },
	-- { name = "frazzle tongue", chance = 18760 },
	-- { name = "frazzle skin", chance = 16000 },
-- }

monster.attacks = {
	{ name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -400 },
	{ name = "condition", interval = 2000, chance = 100, target = false, condition = { type = CONDITION_BLEEDING, startDamage = 0, tick = 4000, minDamage = -300, maxDamage = -400, radius = 3, effect = CONST_ME_DRAWBLOOD } },
	{ name = "combat", interval = 2000, chance = 10, type = COMBAT_LIFEDRAIN, minDamage = 0, maxDamage = -700, length = 5, spread = 0, effect = CONST_ME_EXPLOSIONAREA, target = false },
	{ name = "combat", interval = 2000, chance = 15, type = COMBAT_PHYSICALDAMAGE, minDamage = 0, maxDamage = -400, radius = 2, shootEffect = CONST_ANI_LARGEROCK, effect = CONST_ME_STONES, target = true },
	{ name = "speed", interval = 2000, chance = 15, speed = -600, radius = 5, effect = CONST_ME_MAGIC_RED, target = false, duration = 15000 },
	{ name = "combat", interval = 2000, chance = 10, type = COMBAT_MANADRAIN, minDamage = -80, maxDamage = -150, radius = 4, effect = CONST_ME_MAGIC_RED, target = false },
}

monster.defenses = {
	defense = 30,
	armor = 74,
	{ name = "combat", interval = 2000, chance = 15, type = COMBAT_HEALING, minDamage = 250, maxDamage = 425, effect = CONST_ME_HITBYPOISON, target = false },
}

monster.elements = {
	{ type = COMBAT_PHYSICALDAMAGE, percent = 5 },
	{ type = COMBAT_ENERGYDAMAGE, percent = 15 },
	{ type = COMBAT_EARTHDAMAGE, percent = 20 },
	{ type = COMBAT_FIREDAMAGE, percent = 10 },
	{ type = COMBAT_LIFEDRAIN, percent = 0 },
	{ type = COMBAT_MANADRAIN, percent = 0 },
	{ type = COMBAT_DROWNDAMAGE, percent = 0 },
	{ type = COMBAT_ICEDAMAGE, percent = 5 },
	{ type = COMBAT_HOLYDAMAGE, percent = -5 },
	{ type = COMBAT_DEATHDAMAGE, percent = 10 },
}

monster.immunities = {
	{ type = "paralyze", condition = true },
	{ type = "outfit", condition = false },
	{ type = "invisible", condition = true },
	{ type = "bleed", condition = false },
}

mType:register(monster)
