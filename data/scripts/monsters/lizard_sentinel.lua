local mType = Game.createMonsterType("Lizard Sentinel")
local monster = {}
monster.description = "a lizard sentinel"
monster.experience = 110
monster.outfit = {lookType = 114}

monster.health = 265
monster.maxHealth = monster.health
monster.race = "blood"
monster.corpse = 6040
monster.speed = 180

monster.changeTarget = {interval = 4 * 1000, chance = 10}

monster.flags = {
	summonable = false,
	attackable = true,
	hostile = true,
	illusionable = true,
	convinceable = true,
	pushable = true,
	canpushitems = true,
	canpushcreatures = false,
	targetDistance = 4,
	staticAttackChance = 90,
	canwalkonenergy = false,
	canwalkonfire = false
}

monster.voices = {
	interval = 5000,
	chance = 10,
	{text = "Tssss!", yell = false},
}

monster.loot = {
{
	id = "gold coin",
	chance = 86497,
	maxCount = 54
},
{
	id = "spear",
	chance = 10100,
	maxCount = 3
},
{
	id = "chain armor",
	chance = 9189
},
{
	id = "scale armor",
	chance = 8069
},
{
	id = "hunting spear",
	chance = 4424
},
{
	id = "lizard leather",
	chance = 2207
},
{
	id = "lizard scale",
	chance = 2031
},
{
	id = "halberd",
	chance = 1504
},
{
	id = "obsidian lance",
	chance = 1317
},
{
	id = "health potion",
	chance = 1219
},
{
	id = "sentinel shield",
	chance = 373
},
{
	id = "small diamond",
	chance = 88
}
}

monster.attacks = {
{
	name = "melee",
	interval = 2 * 1000,
	attack = 45,
	skill = 70,
	effect = CONST_ME_DRAWBLOOD
},
{
	name = "combat",
	interval = 2 * 1000,
	chance = 30,
	minDamage = 0,
	maxDamage = -70,
	range = 7,
	type = COMBAT_PHYSICALDAMAGE,
	shootEffect = CONST_ANI_SPEAR
}
}

monster.defenses = {
	defense = 17,
	armor = 17,
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
	percent = -10
}
}

monster.immunities = {
{
	type = "invisible",
	condition = true
},
{
	type = "earth",
	combat = true,
	condition = true
}
}

mType:register(monster)
