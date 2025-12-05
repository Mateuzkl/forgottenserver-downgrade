local mType = Game.createMonsterType("Grorlam")
local monster = {}
monster.description = "Grorlam"
monster.experience = 2400
monster.outfit = {lookType = 205}

monster.health = 3000
monster.maxHealth = monster.health
monster.race = "undead"
monster.corpse = 6005
monster.speed = 240

monster.changeTarget = {interval = 5 * 1000, chance = 3}

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
	staticAttackChance = 90,
	isboss = true
}

monster.loot = {
{
	id = "gold coin",
	chance = 100000,
	maxCount = 98
},
{
	id = "platinum coin",
	chance = 100000,
	maxCount = 6
},
{
	id = "shiny stone",
	chance = 100000
},
{
	id = "small amethyst",
	chance = 73077,
	maxCount = 2
},
{
	id = "steel shield",
	chance = 65385
},
{
	id = "sulphurous stone",
	chance = 65385
},
{
	id = "red gem",
	chance = 57692
},
{
	id = "power ring",
	chance = 42308
},
{
	id = "steel boots",
	chance = 11538
},
{
	id = "crystal ring",
	chance = 3846
},
{
	id = "small stone",
	chance = 3846,
	maxCount = 3
}
}

monster.attacks = {
{
	name = "melee",
	interval = 2 * 1000,
	attack = 300,
	skill = 70,
	effect = CONST_ME_DRAWBLOOD
},
{
	name = "combat",
	interval = 1 * 1000,
	chance = 15,
	minDamage = -150,
	maxDamage = -200,
	range = 7,
	type = COMBAT_PHYSICALDAMAGE,
	shootEffect = CONST_ANI_LARGEROCK
}
}

monster.defenses = {
	defense = 25,
	armor = 15,
	{
			name = "combat",
			interval = 1 * 1000,
			chance = 25,
			type = COMBAT_HEALING,
			minDamage = 100,
			maxDamage = 150,
			effect = CONST_ME_MAGIC_BLUE
		},
	{
			name = "speed",
			interval = 1 * 1000,
			chance = 6,
			speed = 270,
			duration = 6 * 1000,
			effect = CONST_ME_MAGIC_RED
		},
}

monster.elements = {
{
	type = COMBAT_PHYSICALDAMAGE,
	percent = 30
},
{
	type = COMBAT_HOLYDAMAGE,
	percent = 20
},
{
	type = COMBAT_ENERGYDAMAGE,
	percent = 20
},
{
	type = COMBAT_DEATHDAMAGE,
	percent = -5
},
{
	type = COMBAT_FIREDAMAGE,
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
	type = "paralyze",
	condition = true
},
{
	type = "invisible",
	condition = true
}
}

mType:register(monster)
