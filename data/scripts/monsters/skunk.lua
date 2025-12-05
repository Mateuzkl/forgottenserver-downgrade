local mType = Game.createMonsterType("Skunk")
local monster = {}
monster.description = "a skunk"
monster.experience = 3
monster.outfit = {lookType = 106}

monster.health = 20
monster.maxHealth = monster.health
monster.race = "blood"
monster.corpse = 6035
monster.speed = 136

monster.flags = {
	summonable = true,
	attackable = true,
	hostile = true,
	illusionable = true,
	convinceable = true,
	pushable = true,
	canpushitems = false,
	canpushcreatures = false,
	targetDistance = 1,
	staticAttackChance = 90,
	canwalkonenergy = false,
	canwalkonfire = false,
	canwalkonpoison = false
}

monster.loot = {
{
	id = "bulb of garlic",
	chance = 4472
},
{
	id = "skunk tail",
	chance = 884
}
}

monster.attacks = {
{
	name = "melee",
	interval = 2 * 1000,
	attack = 5,
	skill = 70,
	effect = CONST_ME_DRAWBLOOD
},
{
	name = "combat",
	interval = 2 * 1000,
	chance = 10,
	minDamage = -1,
	maxDamage = -3,
	range = 1,
	target = true,
	type = COMBAT_EARTHDAMAGE
}
}

monster.defenses = {
	defense = 1,
	armor = 1,
}

mType:register(monster)
