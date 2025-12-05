local mType = Game.createMonsterType("Fernfang")
local monster = {}
monster.description = "Fernfang"
monster.experience = 600
monster.outfit = {lookType = 206}

monster.health = 400
monster.maxHealth = monster.health
monster.race = "blood"
monster.corpse = 20566
monster.speed = 240
monster.maxSummons = 3

monster.changeTarget = {interval = 5 * 1000, chance = 8}

monster.flags = {
	summonable = false,
	attackable = true,
	hostile = true,
	illusionable = false,
	convinceable = false,
	pushable = false,
	canpushitems = true,
	canpushcreatures = true,
	targetDistance = 4,
	staticAttackChance = 90,
	isboss = true
}

monster.summons = {
{
	name = "War Wolf",
	chance = 13,
	interval = 1 * 1000
}
}

monster.voices = {
	interval = 5000,
	chance = 10,
	{text = "You desecrated this place!", yell = false},
	{text = "I will cleanse this isle!", yell = false},
	{text = "Grrrrrrr", yell = false},
	{text = "Yoooohhuuuu!", yell = true},
}

monster.loot = {
{
	id = "gold coin",
	chance = 100000,
	maxCount = 94
},
{
	id = "book of prayers",
	chance = 100000
},
{
	id = "platinum coin",
	chance = 97000,
	maxCount = 3
},
{
	id = "star herb",
	chance = 92000
},
{
	id = "rope belt",
	chance = 56000
},
{
	id = "yellow gem",
	chance = 43000
},
{
	id = "safety pin",
	chance = 41000
},
{
	id = "power ring",
	chance = 41000
},
{
	id = "blank rune",
	chance = 17000
},
{
	id = "brown flask",
	chance = 12000
},
{
	id = "bread",
	chance = 12000
},
{
	id = 2044,
	chance = 12000
},
{
	id = 2401,
	chance = 12000
},
{
	id = "green tunic",
	chance = 12000
},
{
	id = "strong mana potion",
	chance = 10200
},
{
	id = "wooden whistle",
	chance = 7600
},
{
	id = "sling herb",
	chance = 5100
},
{
	id = "wolf tooth chain",
	chance = 5100
},
{
	id = "life crystal",
	chance = 2500
}
}

monster.attacks = {
{
	name = "melee",
	interval = 2 * 1000,
	attack = 50,
	skill = 70,
	effect = CONST_ME_DRAWBLOOD
},
{
	name = "combat",
	interval = 1 * 1000,
	chance = 25,
	minDamage = -25,
	maxDamage = -45,
	range = 7,
	type = COMBAT_MANADRAIN,
	effect = CONST_ME_MAGIC_RED
},
{
	name = "combat",
	interval = 2 * 1000,
	chance = 80,
	minDamage = -65,
	maxDamage = -180,
	range = 7,
	type = COMBAT_HOLYDAMAGE,
	shootEffect = CONST_ANI_HOLY,
	effect = CONST_ME_HOLYAREA
}
}

monster.defenses = {
	defense = 10,
	armor = 15,
	{
			name = "combat",
			interval = 1 * 1000,
			chance = 15,
			type = COMBAT_HEALING,
			minDamage = 90,
			maxDamage = 120,
			effect = CONST_ME_MAGIC_BLUE
		},
	{
			name = "speed",
			interval = 1 * 1000,
			chance = 7,
			speed = 310,
			duration = 10 * 1000,
			effect = CONST_ME_MAGIC_RED
		},
	{
			name = "effect",
			interval = 1 * 1000,
			chance = 5,
			effect = CONST_ME_MAGIC_RED
		},
	{
			name = "outfit",
			interval = 1 * 1000,
			chance = 5,
			effect = CONST_ME_MAGIC_BLUE
		},
}

monster.elements = {
{
	type = COMBAT_ICEDAMAGE,
	percent = 70
},
{
	type = COMBAT_EARTHDAMAGE,
	percent = 40
}
}

monster.immunities = {
{
	type = "invisible",
	condition = true
},
{
	type = "lifedrain",
	combat = true
}
}

mType:register(monster)
