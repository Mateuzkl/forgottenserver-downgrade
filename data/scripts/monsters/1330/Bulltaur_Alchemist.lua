local mType = Game.createMonsterType("Bulltaur Alchemist")
local monster = {}

monster.name = "Bulltaur Alchemist"
monster.description = "a bulltaur alchemist"
monster.experience = 4500
monster.outfit = { lookType = 1718 }

monster.health = 5690
monster.maxHealth = 5690
monster.runHealth = 0
monster.race = "blood"
monster.corpse = 49703
monster.speed = 320
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
	staticAttackChance = 80,
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
	{text = "Your misfortune is setteled!", yell = false},
	{text = "Soon I will harvest you for ingredients!", yell = false},
	{text = "I have just the solution for this problem!", yell = false}
}

monster.immunities = {
	{type = "paralyze", condition = true},
	{type = "outfit", condition = false},
	{type = "invisible", condition = true},
	{type = "drunk", condition = true},
	{type = "bleed", condition = false}
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 30},
	{type = COMBAT_ENERGYDAMAGE, percent = 0},
	{type = COMBAT_EARTHDAMAGE, percent = -20},
	{type = COMBAT_FIREDAMAGE, percent = 0},
	{type = COMBAT_LIFEDRAIN, percent = 0},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = 15},
	{type = COMBAT_HOLYDAMAGE , percent = -5},
	{type = COMBAT_DEATHDAMAGE , percent = -5}
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -270},
	{name ="combat", interval = 2000, chance = 15, type = COMBAT_ICEDAMAGE, minDamage = 0, maxDamage = -350, effect = CONST_ME_ICEAREA},
	{name ="combat", interval = 2000, chance = 15, type = COMBAT_ENERGYDAMAGE, minDamage = 0, maxDamage = -280, radius = 4, target = true, shootEffect = CONST_ANI_ENERGYBALL, effect = CONST_ME_PURPLESMOKE},
	{name ="speed", interval = 2000, chance = 15, speed = {min = -400, max = -400}, duration = 20000, radius = 4, target = true, effect = CONST_ME_YELLOWSMOKE},
	{name ="combat", interval = 2000, chance = 15, type = COMBAT_ENERGYDAMAGE, minDamage = 0, maxDamage = -300, radius = 3, target = true, effect = CONST_ME_REDSMOKE}
}

monster.defenses = {
	defense = 67,
	armor = 67
}

monster.loot = {
	{id = 2152, chance = 51831, maxCount = 30},
	{id = 49727, chance = 14735},
	{id = 49730, chance = 8962},
	{id = 49731, chance = 6161},
	{id = 7591, chance = 5343},
	{id = 9971, chance = 3490},
	{id = 8473, chance = 2757},
	{id = 7590, chance = 1896},
	{id = 2153, chance = 1810},
	{id = 26029, chance = 1293},
	{id = 2158, chance = 991},
	{id = 2179, chance = 948},
	{id = 23539, chance = 905},
	{id = 11355, chance = 732},
	{id = 35425, chance = 646},
	{id = 54155, chance = 43}
}

mType:register(monster)
