local mType = Game.createMonsterType("Spectre")
local monster = {}
monster.description = "a spectre"
monster.experience = 2100
monster.outfit = {lookType = 235}

monster.health = 1350
monster.maxHealth = monster.health
monster.race = "undead"
monster.corpse = 6348
monster.speed = 230

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
	{text = "Revenge ... is so ... sweet!", yell = false},
	{text = "Life...force! Feed me your... lifeforce!", yell = false},
}

monster.loot = {
{
	id = 2071,
	chance = 9620
},
{
	id = "silver brooch",
	chance = 850
},
{
	id = "silver brooch",
	chance = 110
},
{
	id = 2136,
	chance = 110
},
{
	id = "gold coin",
	chance = 33000,
	maxCount = 100
},
{
	id = "gold coin",
	chance = 33000,
	maxCount = 100
},
{
	id = "gold coin",
	chance = 33000,
	maxCount = 97
},
{
	id = "platinum coin",
	chance = 3850,
	maxCount = 7
},
{
	id = "stealth ring",
	chance = 190
},
{
	id = "wand of cosmic energy",
	chance = 9800
},
{
	id = "blank rune",
	chance = 30310,
	maxCount = 2
},
{
	id = "white piece of cloth",
	chance = 3800
},
{
	id = "soul orb",
	chance = 6005
},
{
	id = 6300,
	chance = 280
},
{
	id = "demonic essence",
	chance = 6270
},
{
	id = "relic sword",
	chance = 700
},
{
	id = "great mana potion",
	chance = 920
},
{
	id = "shiny stone",
	chance = 1000
}
}

monster.attacks = {
{
	name = "melee",
	interval = 2 * 1000,
	attack = 308,
	skill = 70,
	effect = CONST_ME_DRAWBLOOD
},
{
	name = "drunk",
	interval = 2 * 1000,
	chance = 15,
	radius = 4,
	target = false,
	duration = 6 * 1000,
	effect = CONST_ME_PURPLENOTE
},
{
	name = "combat",
	interval = 2 * 1000,
	chance = 15,
	minDamage = -100,
	maxDamage = -400,
	range = 7,
	type = COMBAT_MANADRAIN
},
{
	name = "combat",
	interval = 2 * 1000,
	chance = 20,
	minDamage = -300,
	maxDamage = -550,
	range = 7,
	type = COMBAT_LIFEDRAIN,
	effect = CONST_ME_MAGIC_RED
}
}

monster.defenses = {
	defense = 35,
	armor = 35,
	{
			name = "combat",
			interval = 2 * 1000,
			chance = 25,
			type = COMBAT_HEALING,
			minDamage = 100,
			maxDamage = 250,
			effect = CONST_ME_MAGIC_BLUE
		},
	{
			name = "combat",
			interval = 2 * 1000,
			chance = 10,
			type = COMBAT_HEALING,
			minDamage = 370,
			maxDamage = 700,
			effect = CONST_ME_MAGIC_BLUE
		},
	{
			name = "speed",
			interval = 2 * 1000,
			chance = 15,
			speed = 290,
			duration = 5 * 1000,
			effect = CONST_ME_MAGIC_RED
		},
}

monster.elements = {
{
	type = COMBAT_PHYSICALDAMAGE,
	percent = 90
},
{
	type = COMBAT_ICEDAMAGE,
	percent = 1
},
{
	type = COMBAT_FIREDAMAGE,
	percent = -8
},
{
	type = COMBAT_ENERGYDAMAGE,
	percent = -8
}
}

monster.immunities = {
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
},
{
	type = "lifedrain",
	combat = true
},
{
	type = "earth",
	combat = true,
	condition = true
},
{
	type = "death",
	combat = true,
	condition = true
},
{
	type = "drunk",
	condition = true
}
}

mType:register(monster)
