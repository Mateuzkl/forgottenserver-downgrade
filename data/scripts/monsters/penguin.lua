local mType = Game.createMonsterType("Penguin")
local monster = {}
monster.description = "a penguin"
monster.experience = 1
monster.outfit = {lookType = 250}

monster.health = 33
monster.maxHealth = monster.health
monster.race = "blood"
monster.corpse = 7334
monster.speed = 180

monster.flags = {
	summonable = true,
	attackable = true,
	hostile = true,
	illusionable = true,
	convinceable = true,
	pushable = false,
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
	id = 2667,
	chance = 7500,
	maxCount = 2
},
{
	id = "rainbow trout",
	chance = 60
},
{
	id = "green perch",
	chance = 140
}
}

monster.attacks = {
{
	name = "melee",
	interval = 2 * 1000,
	attack = 3,
	skill = 70,
	effect = CONST_ME_DRAWBLOOD
}
}

monster.defenses = {
	defense = 5,
	armor = 5,
}

monster.elements = {
{
	type = COMBAT_ICEDAMAGE,
	percent = 5
},
{
	type = COMBAT_ENERGYDAMAGE,
	percent = -5
}
}

mType:register(monster)
