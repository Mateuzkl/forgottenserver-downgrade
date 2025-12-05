local mType = Game.createMonsterType("Quara Predator")
local monster = {}
monster.description = "a quara predator"
monster.experience = 1600
monster.outfit = {lookType = 20}

monster.health = 2200
monster.maxHealth = monster.health
monster.race = "blood"
monster.corpse = 6067
monster.speed = 450

monster.changeTarget = {interval = 4 * 1000, chance = 10}

monster.flags = {
	summonable = false,
	attackable = true,
	hostile = true,
	illusionable = false,
	convinceable = false,
	pushable = false,
	canpushitems = true,
	canpushcreatures = true,
	staticAttackChance = 90,
	targetDistance = 1,
	canwalkonenergy = false,
	canwalkonpoison = false
}

monster.voices = {
	interval = 5000,
	chance = 10,
	{text = "Rrrah!", yell = false},
	{text = "Rraaar!", yell = false},
}

monster.loot = {
{
	id = "gold coin",
	chance = 78107,
	maxCount = 154
},
{
	id = "quara bone",
	chance = 9797
},
{
	id = "royal spear",
	chance = 9260,
	maxCount = 7
},
{
	id = "small diamond",
	chance = 5322,
	maxCount = 2
},
{
	id = "shrimp",
	chance = 4985
},
{
	id = "double axe",
	chance = 3005
},
{
	id = "fish fin",
	chance = 1922
},
{
	id = "great health potion",
	chance = 1034
},
{
	id = "relic sword",
	chance = 657
},
{
	id = "assassin star",
	chance = 528
},
{
	id = "glacier robe",
	chance = 462
},
{
	id = "skull helmet",
	chance = 382
}
}

monster.attacks = {
{
	name = "melee",
	interval = 2 * 1000,
	attack = 470,
	skill = 70,
	effect = CONST_ME_DRAWBLOOD
}
}

monster.defenses = {
	defense = 40,
	armor = 40,
	{
			name = "speed",
			interval = 2 * 1000,
			chance = 15,
			speed = 270,
			duration = 5 * 1000,
			effect = CONST_ME_MAGIC_GREEN
		},
	{
			name = "combat",
			interval = 2 * 1000,
			chance = 10,
			type = COMBAT_HEALING,
			minDamage = 25,
			maxDamage = 75,
			effect = CONST_ME_MAGIC_BLUE
		},
}

monster.elements = {
{
	type = COMBAT_EARTHDAMAGE,
	percent = -10
},
{
	type = COMBAT_ENERGYDAMAGE,
	percent = -25
}
}

monster.immunities = {
{
	type = "lifedrain",
	combat = true
},
{
	type = "invisible",
	condition = true
},
{
	type = "drown",
	condition = true
},
{
	type = "fire",
	combat = true,
	condition = true
},
{
	type = "ice",
	combat = true,
	condition = true
}
}

mType:register(monster)
