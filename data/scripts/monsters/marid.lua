local mType = Game.createMonsterType("Marid")
local monster = {}
monster.description = "a marid"
monster.experience = 410
monster.outfit = {lookType = 104}

monster.health = 550
monster.maxHealth = monster.health
monster.race = "blood"
monster.corpse = 6033
monster.speed = 234
monster.maxSummons = 2

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
	targetDistance = 1,
	staticAttackChance = 90,
	canwalkonenergy = false,
	canwalkonfire = false,
	canwalkonpoison = false
}

monster.summons = {
{
	name = "blue djinn",
	chance = 10,
	interval = 2 * 1000
}
}

monster.voices = {
	interval = 5000,
	chance = 10,
	{text = "Simsalabim", yell = false},
	{text = "Feel the power of my magic, tiny mortal!", yell = false},
	{text = "Wishes can come true.", yell = false},
	{text = "Djinns will soon again be the greatest!", yell = false},
	{text = "Be careful what you wish.", yell = false},
}

monster.loot = {
{
	id = "gold coin",
	chance = 49000,
	maxCount = 100
},
{
	id = "gold coin",
	chance = 49000,
	maxCount = 29
},
{
	id = "blueberry",
	chance = 25000,
	maxCount = 25
},
{
	id = "royal spear",
	chance = 15500,
	maxCount = 3
},
{
	id = "strong mana potion",
	chance = 9800
},
{
	id = "jewelled belt",
	chance = 8000
},
{
	id = "small sapphire",
	chance = 6200
},
{
	id = "heavy machete",
	chance = 4700
},
{
	id = "blue piece of cloth",
	chance = 3750
},
{
	id = 1872,
	chance = 2560
},
{
	id = "seeds",
	chance = 2400
},
{
	id = "hailstorm rod",
	chance = 770
},
{
	id = "noble turban",
	chance = 530
},
{
	id = "mystic turban",
	chance = 290
},
{
	id = "magma monocle",
	chance = 260
},
{
	id = 2374,
	chance = 260
},
{
	id = "small oil lamp",
	chance = 130
},
{
	id = "blue gem",
	chance = 80
}
}

monster.attacks = {
{
	name = "melee",
	interval = 2 * 1000,
	attack = 90,
	skill = 70,
	effect = CONST_ME_DRAWBLOOD
},
{
	name = "combat",
	interval = 2 * 1000,
	chance = 10,
	minDamage = -100,
	maxDamage = -250,
	range = 7,
	type = COMBAT_ENERGYDAMAGE,
	shootEffect = CONST_ANI_ENERGYBALL
},
{
	name = "combat",
	interval = 2 * 1000,
	chance = 15,
	minDamage = -30,
	maxDamage = -90,
	range = 7,
	type = COMBAT_LIFEDRAIN,
	effect = CONST_ME_MAGIC_RED
},
{
	name = "speed",
	interval = 2 * 1000,
	chance = 15,
	range = 7,
	speed = -650,
	duration = 1 * 1000,
	effect = CONST_ME_MAGIC_RED
},
{
	name = "drunk",
	interval = 2 * 1000,
	chance = 10,
	range = 7,
	duration = 6 * 1000,
	shootEffect = CONST_ANI_ENERGY
},
{
	name = "outfit",
	interval = 2 * 1000,
	chance = 1,
	range = 7,
	duration = 4 * 1000,
	effect = CONST_ME_MAGIC_BLUE
},
{
	name = "combat",
	interval = 2 * 1000,
	chance = 15,
	minDamage = -30,
	maxDamage = -90,
	radius = 3,
	target = false,
	type = COMBAT_ENERGYDAMAGE,
	effect = CONST_ANI_ENERGY
}
}

monster.defenses = {
	defense = 24,
	armor = 24,
	{
			name = "combat",
			interval = 2 * 1000,
			chance = 15,
			type = COMBAT_HEALING,
			minDamage = 50,
			maxDamage = 80,
			effect = CONST_ME_MAGIC_BLUE
		},
}

monster.elements = {
{
	type = COMBAT_FIREDAMAGE,
	percent = 90
},
{
	type = COMBAT_EARTHDAMAGE,
	percent = 10
},
{
	type = COMBAT_ENERGYDAMAGE,
	percent = 60
},
{
	type = COMBAT_HOLYDAMAGE,
	percent = 10
},
{
	type = COMBAT_ICEDAMAGE,
	percent = -5
},
{
	type = COMBAT_DEATHDAMAGE,
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
}
}

mType:register(monster)
