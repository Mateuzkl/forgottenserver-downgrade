local mType = Game.createMonsterType("Raids")
local monster = {}

monster.description = "Raids"
monster.experience = 250
monster.outfit = {
    lookType = 591,
	lookHead = 87,
	lookBody = 85,
	lookLegs = 79,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}

monster.raceId = 513
monster.Bestiary = {
}

monster.health = 250
monster.maxHealth = 250
monster.race = "ink"
monster.corpse = 9049
monster.speed = 60
monster.manaCost = 0

monster.changeTarget = {
    interval = 0,
    chance = 0
}

monster.strategiesTarget = {
    nearest = 70,
    health = 10,
    damage = 10,
    random = 10
}

monster.flags = {
    summonable = false,
    attackable = false,
    hostile = false,
    convinceable = false,
    pushable = false,
    rewardBoss = false,
    illusionable = false,
    canPushItems = false,
    canPushCreatures = false,
    staticAttackChance = 0,
    targetDistance = 0,
    runHealth = 0,
    healthHidden = false,
    isBlockable = false,
    canWalkOnEnergy = false,
    canWalkOnFire = false,
    canWalkOnPoison = false
}

monster.light = {
    level = 0,
    color = 0
}

monster.summon = {}

monster.voices = {
    interval = 5000,
    chance = 10,
    {
        text = "Hunts",
        yell = false
    }
}

monster.loot = {}

monster.attacks = {}

monster.defenses = {
    defense = 1,
    armor = 1
}

monster.elements = {}

monster.immunities = {{
    type = "paralyze",
    condition = false
}, {
    type = "outfit",
    condition = false
}, {
    type = "invisible",
    condition = false
}, {
    type = "bleed",
    condition = false
}}

mType:register(monster)
