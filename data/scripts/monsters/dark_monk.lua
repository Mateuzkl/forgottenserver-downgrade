local mType = Game.createMonsterType("Dark Monk")
local monster = {}
monster.description = "a dark monk"
monster.experience = 145
monster.outfit = {lookType = 225}

monster.health = 190
monster.maxHealth = monster.health
monster.race = "blood"
monster.corpse = 20562
monster.speed = 230

monster.flags = {
	summonable = false,
	attackable = true,
	hostile = true,
	illusionable = true,
	convinceable = true,
	pushable = false,
	canpushitems = true,
	canpushcreatures = true,
	targetDistance = 1,
	staticAttackChance = 90,
	canwalkonenergy = false,
	canwalkonfire = false,
	canwalkonpoison = false
}

monster.voices = {
	interval = 5000,
	chance = 10,
	{text = "You are no match to us!", yell = false},
	{text = "This is where your path will end!", yell = false},
	{text = "Your end has come!", yell = false},
}

monster.loot = {
{
	id = "bread",
	chance = 20550
},
{
	id = "gold coin",
	chance = 14600,
	maxCount = 18
},
{
	id = "dark rosary",
	chance = 10500
},
{
	id = "rope belt",
	chance = 6666
},
{
	id = "book of prayers",
	chance = 1900
},
{
	id = 1949,
	chance = 1790
},
{
	id = "life crystal",
	chance = 990
},
{
	id = "safety pin",
	chance = 990
},
{
	id = "ankh",
	chance = 900
},
{
	id = "mana potion",
	chance = 850
},
{
	id = "sandals",
	chance = 850
},
{
	id = 2044,
	chance = 550
},
{
	id = "brown flask",
	chance = 390
},
{
	id = "power ring",
	chance = 120
}
}

monster.attacks = {
{
	name = "melee",
	interval = 2 * 1000,
	attack = 100,
	skill = 70,
	effect = CONST_ME_DRAWBLOOD
},
{
	name = "combat",
	interval = 2 * 1000,
	chance = 15,
	minDamage = -20,
	maxDamage = -50,
	range = 1,
	type = COMBAT_LIFEDRAIN,
	effect = CONST_ME_MAGIC_RED
}
}

monster.defenses = {
	defense = 22,
	armor = 22,
	{
			name = "combat",
			interval = 2 * 1000,
			chance = 15,
			type = COMBAT_HEALING,
			minDamage = 25,
			maxDamage = 49,
			effect = CONST_ME_MAGIC_BLUE
		},
	{
			name = "speed",
			interval = 2 * 1000,
			chance = 15,
			speed = 300,
			duration = 6 * 1000,
			effect = CONST_ME_MAGIC_RED
		},
}

monster.elements = {
{
	type = COMBAT_DEATHDAMAGE,
	percent = 40
},
{
	type = COMBAT_HOLYDAMAGE,
	percent = -10
},
{
	type = COMBAT_PHYSICALDAMAGE,
	percent = -10
}
}

monster.immunities = {
{
	type = "invisible",
	condition = true
}
}

mType:register(monster)
