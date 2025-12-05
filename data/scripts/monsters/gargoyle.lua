local mType = Game.createMonsterType("Gargoyle")
local monster = {}
monster.description = "a gargoyle"
monster.experience = 150
monster.outfit = {lookType = 95}

monster.health = 250
monster.maxHealth = monster.health
monster.race = "undead"
monster.corpse = 6027
monster.speed = 200

monster.changeTarget = {interval = 4 * 1000, chance = 10}

monster.flags = {
	summonable = false,
	attackable = true,
	hostile = true,
	illusionable = true,
	convinceable = false,
	pushable = false,
	canpushitems = true,
	canpushcreatures = true,
	targetDistance = 1,
	staticAttackChance = 90,
	canwalkonenergy = false,
	canwalkonfire = false
}

monster.voices = {
	interval = 5000,
	chance = 10,
	{text = "Harrrr Harrrr!", yell = false},
	{text = "Stone sweet stone.", yell = false},
	{text = "Feel my claws, softskin.", yell = false},
	{text = "Chhhhhrrrrk!", yell = false},
	{text = "There is a stone in your shoe!", yell = false},
}

monster.loot = {
{
	id = "gold coin",
	chance = 88000,
	maxCount = 30
},
{
	id = "small stone",
	chance = 15800,
	maxCount = 10
},
{
	id = "stone wing",
	chance = 11730
},
{
	id = "potato",
	chance = 9220,
	maxCount = 2
},
{
	id = "strawberry",
	chance = 1910,
	maxCount = 5
},
{
	id = "morning star",
	chance = 1500
},
{
	id = "battle shield",
	chance = 1300
},
{
	id = "wolf tooth chain",
	chance = 1180
},
{
	id = "steel helmet",
	chance = 850
},
{
	id = "piece of marble rock",
	chance = 450
},
{
	id = "dark armor",
	chance = 300
},
{
	id = "club ring",
	chance = 260
},
{
	id = "shiny stone",
	chance = 190
}
}

monster.attacks = {
{
	name = "melee",
	interval = 2 * 1000,
	attack = 65,
	skill = 70,
	effect = CONST_ME_DRAWBLOOD
}
}

monster.defenses = {
	defense = 26,
	armor = 26,
	{
			name = "combat",
			interval = 2 * 1000,
			chance = 20,
			type = COMBAT_HEALING,
			minDamage = 5,
			maxDamage = 15,
			effect = CONST_ME_MAGIC_BLUE
		},
}

monster.elements = {
{
	type = COMBAT_PHYSICALDAMAGE,
	percent = 20
},
{
	type = COMBAT_DEATHDAMAGE,
	percent = 40
},
{
	type = COMBAT_FIREDAMAGE,
	percent = -10
}
}

monster.immunities = {
{
	type = "lifedrain",
	combat = true
},
{
	type = "earth",
	combat = true,
	condition = true
}
}

mType:register(monster)
