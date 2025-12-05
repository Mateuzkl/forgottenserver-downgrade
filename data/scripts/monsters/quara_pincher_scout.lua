local mType = Game.createMonsterType("Quara Pincher Scout")
local monster = {}
monster.description = "a quara pincher scout"
monster.experience = 600
monster.outfit = {lookType = 77}

monster.health = 775
monster.maxHealth = monster.health
monster.race = "blood"
monster.corpse = 6063
monster.speed = 156

monster.changeTarget = {interval = 4 * 1000, chance = 10}

monster.flags = {
	summonable = false,
	attackable = true,
	hostile = true,
	illusionable = false,
	convinceable = false,
	pushable = false,
	canpushitems = true,
	canpushcreatures = false,
	staticAttackChance = 90,
	targetDistance = 1,
	canwalkonenergy = false,
	canwalkonpoison = false
}

monster.voices = {
	interval = 5000,
	chance = 10,
	{text = "Clank clank!", yell = false},
	{text = "Clap!", yell = false},
	{text = "Crrrk! Crrrk!", yell = false},
}

monster.loot = {
{
	id = "gold coin",
	chance = 89910,
	maxCount = 129
},
{
	id = "quara pincers",
	chance = 9912
},
{
	id = "plate armor",
	chance = 4965
},
{
	id = "small ruby",
	chance = 3836,
	maxCount = 2
},
{
	id = "halberd",
	chance = 2056
},
{
	id = "fish fin",
	chance = 808
},
{
	id = "life crystal",
	chance = 781
}
}

monster.attacks = {
{
	name = "melee",
	interval = 2 * 1000,
	attack = 240,
	skill = 70,
	effect = CONST_ME_DRAWBLOOD
},
{
	name = "speed",
	interval = 2 * 1000,
	chance = 20,
	range = 1,
	speed = -600,
	duration = 3 * 1000,
	effect = CONST_ME_MAGIC_RED
}
}

monster.defenses = {
	defense = 45,
	armor = 45,
}

monster.elements = {
{
	type = COMBAT_ENERGYDAMAGE,
	percent = -10
},
{
	type = COMBAT_PHYSICALDAMAGE,
	percent = 10
}
}

monster.immunities = {
{
	type = "ice",
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
