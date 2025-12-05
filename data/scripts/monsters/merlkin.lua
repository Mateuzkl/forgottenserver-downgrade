local mType = Game.createMonsterType("Merlkin")
local monster = {}
monster.description = "a merlkin"
monster.experience = 145
monster.outfit = {lookType = 117}

monster.health = 235
monster.maxHealth = monster.health
monster.race = "blood"
monster.corpse = 6044
monster.speed = 194

monster.changeTarget = {interval = 4 * 1000, chance = 10}

monster.flags = {
	summonable = false,
	attackable = true,
	hostile = true,
	illusionable = true,
	convinceable = false,
	pushable = false,
	canpushitems = true,
	canpushcreatures = false,
	targetDistance = 4,
	staticAttackChance = 70,
	canwalkonenergy = false,
	canwalkonfire = false,
	canwalkonpoison = false
}

monster.voices = {
	interval = 5000,
	chance = 10,
	{text = "Ugh! Ugh! Ugh!", yell = false},
	{text = "Holy banana!", yell = false},
	{text = "Chakka! Chakka!", yell = false},
}

monster.loot = {
{
	id = "gold coin",
	chance = 82947,
	maxCount = 45
},
{
	id = "banana",
	chance = 30430,
	maxCount = 12
},
{
	id = "magic light wand",
	chance = 3020
},
{
	id = "banana sash",
	chance = 1918
},
{
	id = "ape fur",
	chance = 1014
},
{
	id = "orange",
	chance = 1010,
	maxCount = 5
},
{
	id = "wand of decay",
	chance = 980
},
{
	id = "mana potion",
	chance = 693
},
{
	id = "small amethyst",
	chance = 310
},
{
	id = "banana staff",
	chance = 102
}
}

monster.attacks = {
{
	name = "melee",
	interval = 2 * 1000,
	attack = 30,
	skill = 70,
	effect = CONST_ME_DRAWBLOOD
},
{
	name = "combat",
	interval = 2 * 1000,
	chance = 15,
	minDamage = -60,
	maxDamage = -90,
	range = 7,
	type = COMBAT_FIREDAMAGE,
	shootEffect = CONST_ANI_FIRE,
	effect = CONST_ANI_FIRE
},
{
	name = "combat",
	interval = 2 * 1000,
	chance = 20,
	minDamage = -15,
	maxDamage = -45,
	range = 7,
	type = COMBAT_ENERGYDAMAGE,
	shootEffect = CONST_ANI_ENERGY,
	effect = CONST_ANI_ENERGY
},
{
	name = "poisonfield",
	interval = 2 * 1000,
	chance = 15,
	range = 7,
	radius = 1,
	target = true,
	shootEffect = CONST_ANI_POISON
}
}

monster.defenses = {
	defense = 16,
	armor = 16,
	{
			name = "combat",
			interval = 2 * 1000,
			chance = 25,
			type = COMBAT_HEALING,
			minDamage = 30,
			maxDamage = 40,
			effect = CONST_ME_MAGIC_BLUE
		},
}

monster.elements = {
{
	type = COMBAT_ENERGYDAMAGE,
	percent = 10
},
{
	type = COMBAT_FIREDAMAGE,
	percent = 20
},
{
	type = COMBAT_ICEDAMAGE,
	percent = -15
},
{
	type = COMBAT_HOLYDAMAGE,
	percent = 10
},
{
	type = COMBAT_DEATHDAMAGE,
	percent = -5
}
}

monster.immunities = {
{
	type = "outfit",
	condition = true
},
{
	type = "drunk",
	condition = true
},
{
	type = "invisible",
	condition = true
}
}

mType:register(monster)
