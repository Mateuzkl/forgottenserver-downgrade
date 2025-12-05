local mType = Game.createMonsterType("Blood Crab")
local monster = {}
monster.description = "a blood crab"
monster.experience = 160
monster.outfit = {lookType = 200}

monster.health = 290
monster.maxHealth = monster.health
monster.race = "blood"
monster.corpse = 6075
monster.speed = 160

monster.changeTarget = {interval = 4 * 1000, chance = 10}

monster.flags = {
	summonable = true,
	attackable = true,
	hostile = true,
	illusionable = true,
	convinceable = true,
	pushable = false,
	canpushitems = true,
	canpushcreatures = false,
	staticAttackChance = 90,
	targetDistance = 1,
	canwalkonenergy = false,
	canwalkonfire = false
}

monster.loot = {
{
	id = "gold coin",
	chance = 85818,
	maxCount = 20
},
{
	id = "fish",
	chance = 14803
},
{
	id = "bloody pincers",
	chance = 6053
},
{
	id = "chain armor",
	chance = 5122
},
{
	id = "brass legs",
	chance = 2143
},
{
	id = "white pearl",
	chance = 517
}
}

monster.attacks = {
{
	name = "melee",
	interval = 2 * 1000,
	attack = 110,
	skill = 70,
	effect = CONST_ME_DRAWBLOOD
}
}

monster.defenses = {
	defense = 28,
	armor = 28,
}

monster.elements = {
{
	type = COMBAT_PHYSICALDAMAGE,
	percent = 5
},
{
	type = COMBAT_FIREDAMAGE,
	percent = -10
},
{
	type = COMBAT_ENERGYDAMAGE,
	percent = -5
}
}

monster.immunities = {
{
	type = "ice",
	combat = true,
	condition = true
},
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
