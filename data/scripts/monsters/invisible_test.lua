local mType = Game.createMonsterType("Invisible Test")
local monster = {}

monster.description = "an invisible test"
monster.experience = 0
monster.outfit = {lookType = 130}
monster.health = 9999999
monster.maxHealth = monster.health
monster.race = "undead"
monster.corpse = 0
monster.speed = 200
monster.maxSummons = 0

monster.changeTarget = {
	interval = 2000,
	chance = 50
}

monster.flags = {
	summonable = false,
	attackable = true,
	hostile = true,
	challengeable = false,
	convinceable = false,
	ignoreSpawnBlock = true,
	illusionable = false,
	canPushItems = true,
	canPushCreatures = true,
	targetDistance = 1,
	staticAttackChance = 90
}

monster.summons = {}

monster.voices = {
	interval = 3000,
	chance = 30,
	{text = "Testing conditions!", yell = false},
	{text = "STRESS TEST!", yell = true},
	{text = "Can you see me?", yell = false}
}

monster.loot = {}

monster.attacks = {
	{name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = 0},
	{name = "combat", interval = 1500, chance = 80, type = COMBAT_NONE, effect = CONST_ME_POFF, target = true},
	{name = "combat", interval = 1500, chance = 80, type = COMBAT_NONE, effect = CONST_ME_MAGIC_BLUE, target = true},
	{name = "combat", interval = 1500, chance = 80, type = COMBAT_NONE, effect = CONST_ME_MAGIC_RED, target = true},
	{name = "combat", interval = 1500, chance = 80, type = COMBAT_NONE, effect = CONST_ME_MAGIC_GREEN, target = true},
	{name = "combat", interval = 1500, chance = 80, type = COMBAT_NONE, effect = CONST_ME_TELEPORT, target = true},
	{name = "combat", interval = 1500, chance = 80, type = COMBAT_NONE, effect = CONST_ME_ENERGYHIT, target = true},
	{name = "combat", interval = 2000, chance = 70, type = COMBAT_NONE, effect = CONST_ME_EXPLOSIONAREA, target = false, range = 5, shootEffect = CONST_ANI_FIRE},
	{name = "combat", interval = 2000, chance = 70, type = COMBAT_NONE, effect = CONST_ME_FIREAREA, target = false, range = 5, shootEffect = CONST_ANI_ENERGY},
	{name = "combat", interval = 2000, chance = 70, type = COMBAT_NONE, effect = CONST_ME_ICEAREA, target = false, range = 5, shootEffect = CONST_ANI_ICE},
	{name = "speed", interval = 3000, chance = 60, speed = -400, range = 7, duration = 5000, effect = CONST_ME_MAGIC_RED, target = true, shootEffect = CONST_ANI_DEATH},
	{name = "speed", interval = 3000, chance = 60, speed = -600, range = 7, duration = 3000, effect = CONST_ME_BLOCKHIT, target = true},
	{name = "outfit", interval = 5000, chance = 40, effect = CONST_ME_MAGIC_BLUE, target = true, duration = 4000, outfitMonster = "rat"},
	{name = "outfit", interval = 5000, chance = 40, effect = CONST_ME_MAGIC_GREEN, target = true, duration = 4000, outfitMonster = "deer"},
	{name = "drunk", interval = 4000, chance = 50, duration = 5000, effect = CONST_ME_SOUND_YELLOW, target = true, drunkenness = 25}
}

monster.defenses = {
	defense = 0,
	armor = 0,
	{name = "invisible", interval = 8000, chance = 80, duration = 5000},
	{name = "speed", interval = 4000, chance = 70, speed = 400, effect = CONST_ME_MAGIC_GREEN, duration = 3000},
	{name = "outfit", interval = 6000, chance = 50, effect = CONST_ME_MAGIC_BLUE, duration = 3000, outfitMonster = "demon"},
	{name = "outfit", interval = 6000, chance = 50, effect = CONST_ME_MAGIC_RED, duration = 3000, outfitMonster = "dragon"},
	{name = "combat", interval = 2000, chance = 80, type = COMBAT_NONE, effect = CONST_ME_POFF, target = false}
}

monster.elements = {}
monster.immunities = {}

mType:register(monster)
