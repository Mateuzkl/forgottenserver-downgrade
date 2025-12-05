local mType = Game.createMonsterType("Fire Elemental")
local monster = {}
monster.description = "a fire elemental"
monster.experience = 220
monster.outfit = {lookType = 49}

monster.health = 280
monster.maxHealth = monster.health
monster.race = "fire"
monster.corpse = 8964
monster.speed = 190

monster.changeTarget = {interval = 4 * 1000, chance = 10}

monster.flags = {
	summonable = true,
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
	chance = 20,
	minDamage = -45,
	maxDamage = -160,
	range = 7,
	radius = 2,
	target = true,
	type = COMBAT_FIREDAMAGE,
	shootEffect = CONST_ANI_FIRE,
	effect = CONST_ME_FIREAREA
},
{
	name = "firefield",
	interval = 2 * 1000,
	chance = 25,
	range = 7,
	radius = 1,
	target = true,
	shootEffect = CONST_ANI_FIRE
}
}

monster.defenses = {
	defense = 18,
	armor = 18,
}

monster.elements = {
{
	type = COMBAT_ICEDAMAGE,
	percent = -25
}
}

monster.immunities = {
{
	type = "death",
	combat = true,
	condition = true
},
{
	type = "fire",
	combat = true,
	condition = true
},
{
	type = "lifedrain",
	combat = true
},
{
	type = "paralyze",
	condition = true
},
{
	type = "invisible",
	condition = true
}
}

mType:register(monster)
