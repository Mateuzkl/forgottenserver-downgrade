local mType = Game.createMonsterType("Blistering Fire Elemental")
local monster = {}
monster.description = "a blistering fire elemental"
monster.experience = 1300
monster.outfit = {lookType = 242}

monster.health = 1500
monster.maxHealth = monster.health
monster.race = "fire"
monster.corpse = 8964
monster.speed = 230

monster.changeTarget = {interval = 5 * 1000, chance = 8}

monster.flags = {
	summonable = false,
	attackable = true,
	hostile = true,
	illusionable = false,
	convinceable = false,
	pushable = false,
	canpushitems = true,
	canpushcreatures = false,
	targetDistance = 1,
	staticAttackChance = 90,
	canwalkonenergy = false,
	canwalkonpoison = false
}

monster.voices = {
	interval = 5000,
	chance = 10,
	{text = "FCHHHRRR", yell = false},
}

monster.loot = {
{
	id = "gold coin",
	chance = 44000,
	maxCount = 100
},
{
	id = "gold coin",
	chance = 44000,
	maxCount = 70
},
{
	id = "fiery heart",
	chance = 10000
},
{
	id = "glimmering soil",
	chance = 9500
},
{
	id = "small ruby",
	chance = 5000,
	maxCount = 3
},
{
	id = "wand of draconia",
	chance = 500
}
}

monster.attacks = {
{
	name = "melee",
	interval = 2 * 1000,
	attack = 350,
	skill = 70,
	effect = CONST_ME_DRAWBLOOD
},
{
	name = "combat",
	interval = 1 * 1000,
	chance = 11,
	minDamage = -65,
	maxDamage = -510,
	length = 7,
	spread = 3,
	type = COMBAT_FIREDAMAGE
},
{
	name = "combat",
	type = COMBAT_FIREDAMAGE,
	conditionType = CONDITION_FIRE,
	conditionMinDamage = -50,
	conditionMaxDamage = -200,
	conditionTickInterval = 2000,
	interval = 1 * 1000,
	chance = 12,
	radius = 6,
	target = false,
	effect = CONST_ME_FIREAREA
},
{
	name = "firefield",
	interval = 1 * 1000,
	chance = 15,
	range = 7,
	radius = 3,
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
	percent = -15
},
{
	type = COMBAT_ENERGYDAMAGE,
	percent = 20
},
{
	type = COMBAT_PHYSICALDAMAGE,
	percent = 25
},
{
	type = COMBAT_DEATHDAMAGE,
	percent = 40
},
{
	type = COMBAT_EARTHDAMAGE,
	percent = 50
}
}

monster.immunities = {
{
	type = "holy",
	combat = true,
	condition = true
},
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
