local mType = Game.createMonsterType("Leviathan")
local monster = {}
monster.description = "Leviathan"
monster.experience = 5000
monster.outfit = {lookType = 275}

monster.health = 6000
monster.maxHealth = monster.health
monster.race = "blood"
monster.corpse = 8307
monster.speed = 758

monster.changeTarget = {interval = 2 * 1000, chance = 50}

monster.flags = {
	summonable = false,
	attackable = true,
	hostile = true,
	illusionable = false,
	convinceable = false,
	pushable = false,
	canpushitems = true,
	canpushcreatures = true,
	targetDistance = 1,
	isboss = true
}

monster.voices = {
	interval = 5000,
	chance = 10,
	{text = "CHHHRRRR", yell = false},
	{text = "HISSSS", yell = false},
}

monster.loot = {
{
	id = "small sapphire",
	chance = 10000,
	maxCount = 3
},
{
	id = "gold coin",
	chance = 40000,
	maxCount = 80
},
{
	id = "gold coin",
	chance = 40000,
	maxCount = 80
},
{
	id = "platinum coin",
	chance = 40000,
	maxCount = 6
}
}

monster.attacks = {
{
	name = "melee",
	interval = 2 * 1000,
	attack = 298,
	skill = 70,
	effect = CONST_ME_DRAWBLOOD
},
{
	name = "combat",
	interval = 1 * 1000,
	chance = 8,
	minDamage = -130,
	maxDamage = -460,
	length = 9,
	spread = 3,
	type = COMBAT_EARTHDAMAGE,
	effect = CONST_ME_BIGPLANTS
},
{
	name = "combat",
	interval = 1 * 1000,
	chance = 10,
	minDamage = -365,
	maxDamage = -491,
	length = 9,
	spread = 3,
	type = COMBAT_ICEDAMAGE,
	effect = CONST_ME_ICEAREA
},
{
	name = "combat",
	interval = 1 * 1000,
	chance = 11,
	minDamage = -15,
	maxDamage = -20,
	radius = 4,
	target = true,
	type = COMBAT_ICEDAMAGE,
	effect = CONST_ME_BLUEBUBBLE
}
}

monster.defenses = {
	defense = 30,
	armor = 20,
	{
			name = "combat",
			interval = 1 * 1000,
			chance = 25,
			type = COMBAT_HEALING,
			minDamage = 50,
			maxDamage = 150,
			effect = CONST_ME_MAGIC_BLUE
		},
}

monster.elements = {
{
	type = COMBAT_FIREDAMAGE,
	percent = 30
},
{
	type = COMBAT_ENERGYDAMAGE,
	percent = -10
},
{
	type = COMBAT_PHYSICALDAMAGE,
	percent = -10
},
{
	type = COMBAT_DEATHDAMAGE,
	percent = -10
}
}

monster.immunities = {
{
	type = "ice",
	combat = true,
	condition = true
},
{
	type = "paralyze",
	condition = true
},
{
	type = "invisible",
	condition = true
},
{
	type = "drown",
	condition = true
}
}

mType:register(monster)
