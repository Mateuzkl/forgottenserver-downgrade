local mType = Game.createMonsterType("Blazing Fire Elemental")
local monster = {}
monster.description = "a blazing fire elemental"
monster.experience = 450
monster.outfit = {lookType = 49}

monster.health = 650
monster.maxHealth = monster.health
monster.race = "fire"
monster.corpse = 8964
monster.speed = 190

monster.changeTarget = {interval = 5 * 1000, chance = 8}

monster.flags = {
	summonable = false,
	attackable = true,
	hostile = true,
	illusionable = true,
	convinceable = false,
	pushable = false,
	canpushitems = true,
	canpushcreatures = false,
	targetDistance = 1,
	staticAttackChance = 90,
	canwalkonenergy = false,
	canwalkonpoison = false
}

monster.loot = {
{
	id = "gold coin",
	chance = 35000,
	maxCount = 100
},
{
	id = "gold coin",
	chance = 35000,
	maxCount = 25
},
{
	id = "fiery heart",
	chance = 6300
},
{
	id = "glimmering soil",
	chance = 4000
},
{
	id = "flaming arrow",
	chance = 3600,
	maxCount = 3
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
	interval = 1 * 1000,
	chance = 13,
	minDamage = -65,
	maxDamage = -205,
	radius = 5,
	target = false,
	type = COMBAT_FIREDAMAGE,
	effect = CONST_ME_FIREAREA
},
{
	name = "combat",
	interval = 1 * 1000,
	chance = 12,
	minDamage = -110,
	maxDamage = -150,
	range = 7,
	radius = 5,
	target = true,
	type = COMBAT_FIREDAMAGE,
	shootEffect = CONST_ANI_FIRE,
	effect = CONST_ME_FIREAREA
},
{
	name = "firefield",
	interval = 1 * 1000,
	chance = 15,
	range = 7,
	radius = 1,
	target = true,
	shootEffect = CONST_ANI_FIRE
}
}

monster.defenses = {
	defense = 20,
	armor = 20,
}

monster.elements = {
{
	type = COMBAT_ICEDAMAGE,
	percent = -25
},
{
	type = COMBAT_ENERGYDAMAGE,
	percent = 20
},
{
	type = COMBAT_DEATHDAMAGE,
	percent = 30
}
}

monster.immunities = {
{
	type = "fire",
	combat = true,
	condition = true
},
{
	type = "invisible",
	condition = true
}
}

mType:register(monster)
