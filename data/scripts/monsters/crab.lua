local mType = Game.createMonsterType("Crab")
local monster = {}
monster.description = "a crab"
monster.experience = 30
monster.outfit = {lookType = 112}

monster.health = 55
monster.maxHealth = monster.health
monster.race = "blood"
monster.corpse = 6039
monster.speed = 144

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
	canwalkonfire = false
}

monster.loot = {
{
	id = "gold coin",
	chance = 80000,
	maxCount = 10
},
{
	id = "crab pincers",
	chance = 20000
},
{
	id = 2667,
	chance = 20000
}
}

monster.attacks = {
{
	name = "melee",
	interval = 2 * 1000,
	attack = 20,
	skill = 70,
	effect = CONST_ME_DRAWBLOOD
}
}

monster.defenses = {
	defense = 8,
	armor = 8,
}

monster.elements = {
{
	type = COMBAT_ICEDAMAGE,
	percent = 20
},
{
	type = COMBAT_FIREDAMAGE,
	percent = -10
},
{
	type = COMBAT_ENERGYDAMAGE,
	percent = -10
}
}

monster.immunities = {
{
	type = "earth",
	combat = true,
	condition = true
},
{
	type = "drown",
	condition = true
}
}

mType:register(monster)
