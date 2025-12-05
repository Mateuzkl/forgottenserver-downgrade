local mType = Game.createMonsterType("Carniphila")
local monster = {}
monster.description = "a carniphila"
monster.experience = 150
monster.outfit = {lookType = 120}

monster.health = 255
monster.maxHealth = monster.health
monster.race = "venom"
monster.corpse = 6047
monster.speed = 110

monster.changeTarget = {interval = 4 * 1000, chance = 10}

monster.flags = {
	summonable = false,
	attackable = true,
	hostile = true,
	illusionable = false,
	convinceable = false,
	pushable = false,
	canpushitems = true,
	canpushcreatures = true,
	targetDistance = 1,
	staticAttackChance = 90,
	canwalkonenergy = false,
	canwalkonfire = false
}

monster.loot = {
{
	id = "gold coin",
	chance = 87000,
	maxCount = 40
},
{
	id = "dark mushroom",
	chance = 8000
},
{
	id = "carniphila seeds",
	chance = 4000
},
{
	id = "shadow herb",
	chance = 1000
},
{
	id = "corncob",
	chance = 1000
},
{
	id = "sling herb",
	chance = 500,
	maxCount = 2
},
{
	id = "seeds",
	chance = 500
}
}

monster.attacks = {
{
	name = "melee",
	interval = 2 * 1000,
	attack = 100,
	skill = 70,
	effect = CONST_ME_DRAWBLOOD
},
{
	name = "combat",
	interval = 2 * 1000,
	chance = 15,
	minDamage = -60,
	maxDamage = -95,
	range = 7,
	type = COMBAT_EARTHDAMAGE,
	shootEffect = CONST_ANI_POISON,
	effect = CONST_ME_GREENBUBBLE
},
{
	name = "speed",
	interval = 2 * 1000,
	chance = 15,
	range = 7,
	speed = -800,
	duration = 30 * 1000,
	shootEffect = CONST_ANI_POISON,
	effect = CONST_ME_GREENBUBBLE
},
{
	name = "combat",
	interval = 2 * 1000,
	chance = 10,
	minDamage = -40,
	maxDamage = -130,
	radius = 3,
	target = false,
	type = COMBAT_EARTHDAMAGE,
	effect = CONST_ME_POISON
}
}

monster.defenses = {
	defense = 22,
	armor = 22,
}

monster.elements = {
{
	type = COMBAT_ENERGYDAMAGE,
	percent = 10
},
{
	type = COMBAT_ICEDAMAGE,
	percent = 20
},
{
	type = COMBAT_FIREDAMAGE,
	percent = -20
}
}

monster.immunities = {
{
	type = "earth",
	combat = true,
	condition = true
},
{
	type = "invisible",
	condition = true
}
}

mType:register(monster)
