local mType = Game.createMonsterType("Larva")
local monster = {}
monster.description = "a larva"
monster.experience = 44
monster.outfit = {lookType = 82}

monster.health = 70
monster.maxHealth = monster.health
monster.race = "venom"
monster.corpse = 6023
monster.speed = 124

monster.flags = {
	summonable = true,
	attackable = true,
	hostile = true,
	illusionable = true,
	convinceable = false,
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
	chance = 65000,
	maxCount = 15
},
{
	id = "meat",
	chance = 15000
}
}

monster.attacks = {
{
	name = "melee",
	interval = 2 * 1000,
	attack = 35,
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
	type = COMBAT_ENERGYDAMAGE,
	percent = 10
},
{
	type = COMBAT_FIREDAMAGE,
	percent = -10
},
{
	type = COMBAT_ICEDAMAGE,
	percent = -5
}
}

monster.immunities = {
{
	type = "earth",
	combat = true,
	condition = true
},
{
	type = "paralyze",
	condition = true
}
}

mType:register(monster)
