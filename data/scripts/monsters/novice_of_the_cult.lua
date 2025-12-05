local mType = Game.createMonsterType("Novice of the Cult")
local monster = {}
monster.description = "a novice of the cult"
monster.experience = 100
monster.outfit = {lookType = 133}

monster.health = 285
monster.maxHealth = monster.health
monster.race = "blood"
monster.corpse = 20467
monster.speed = 200
monster.maxSummons = 1

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
	staticAttackChance = 90,
	targetDistance = 1,
	canwalkonenergy = false,
	canwalkonfire = false,
	canwalkonpoison = false
}

monster.summons = {
{
	name = "Chicken",
	chance = 10,
	interval = 2 * 1000
}
}

monster.voices = {
	interval = 5000,
	chance = 10,
	{text = "Fear us!", yell = false},
	{text = "You will not tell anyone what you have seen!", yell = false},
	{text = "Your curiosity will be punished!", yell = false},
}

monster.loot = {
{
	id = 1962,
	chance = 700
},
{
	id = "small diamond",
	chance = 210
},
{
	id = "gold coin",
	chance = 43380,
	maxCount = 40
},
{
	id = "wand of vortex",
	chance = 450
},
{
	id = "garlic necklace",
	chance = 420
},
{
	id = "dwarven ring",
	chance = 500
},
{
	id = "scarf",
	chance = 2900
},
{
	id = "pirate voodoo doll",
	chance = 520
},
{
	id = 6087,
	chance = 970
},
{
	id = "cultish robe",
	chance = 1030
},
{
	id = "rope belt",
	chance = 5910
}
}

monster.attacks = {
{
	name = "melee",
	interval = 2 * 1000,
	attack = 65,
	skill = 70,
	effect = CONST_ME_DRAWBLOOD
},
{
	name = "combat",
	interval = 2 * 1000,
	chance = 15,
	minDamage = -20,
	maxDamage = -80,
	range = 7,
	radius = 1,
	target = true,
	type = COMBAT_LIFEDRAIN,
	shootEffect = CONST_ANI_POISON,
	effect = CONST_ME_MAGIC_RED
}
}

monster.defenses = {
	defense = 15,
	armor = 15,
	{
			name = "combat",
			interval = 2 * 1000,
			chance = 15,
			type = COMBAT_HEALING,
			minDamage = 20,
			maxDamage = 40,
			effect = CONST_ME_MAGIC_BLUE
		},
}

monster.elements = {
{
	type = COMBAT_EARTHDAMAGE,
	percent = 10
},
{
	type = COMBAT_ICEDAMAGE,
	percent = 10
},
{
	type = COMBAT_HOLYDAMAGE,
	percent = 10
},
{
	type = COMBAT_PHYSICALDAMAGE,
	percent = -10
},
{
	type = COMBAT_ENERGYDAMAGE,
	percent = -8
},
{
	type = COMBAT_FIREDAMAGE,
	percent = -5
},
{
	type = COMBAT_DEATHDAMAGE,
	percent = -8
}
}

mType:register(monster)
