local mType = Game.createMonsterType("Priestess")
local monster = {}
monster.description = "a priestess"
monster.experience = 420
monster.outfit = {lookType = 58}

monster.health = 390
monster.maxHealth = monster.health
monster.race = "blood"
monster.corpse = 20491
monster.speed = 170
monster.maxSummons = 2

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
	targetDistance = 4,
	staticAttackChance = 90,
	canwalkonenergy = false,
	canwalkonfire = false,
	canwalkonpoison = false
}

monster.summons = {
{
	name = "ghoul",
	chance = 10,
	interval = 2 * 1000
}
}

monster.voices = {
	interval = 5000,
	chance = 10,
	{text = "Your energy is mine.", yell = false},
	{text = "Now your life is come to the end, hahahaha!", yell = false},
	{text = "Throw the soul on the altar!", yell = false},
}

monster.loot = {
{
	id = "sling herb",
	chance = 13494
},
{
	id = "goat grass",
	chance = 12093
},
{
	id = "dark rosary",
	chance = 9795
},
{
	id = "red apple",
	chance = 7403,
	maxCount = 2
},
{
	id = "powder herb",
	chance = 6183
},
{
	id = "black hood",
	chance = 5036
},
{
	id = "wood mushroom",
	chance = 3343
},
{
	id = "cultish robe",
	chance = 1796
},
{
	id = "clerical mace",
	chance = 1484
},
{
	id = "wooden flute",
	chance = 1425
},
{
	id = "crystal ball",
	chance = 1132
},
{
	id = "hailstorm rod",
	chance = 1069
},
{
	id = "book",
	chance = 932
},
{
	id = "mana potion",
	chance = 932
},
{
	id = "talon",
	chance = 717
},
{
	id = "crystal necklace",
	chance = 615
},
{
	id = "black shield",
	chance = 210
},
{
	id = "piggy bank",
	chance = 68
}
}

monster.attacks = {
{
	name = "melee",
	interval = 2 * 1000,
	attack = 75,
	skill = 70,
	effect = CONST_ME_DRAWBLOOD
},
{
	name = "combat",
	interval = 2 * 1000,
	chance = 20,
	minDamage = -55,
	maxDamage = -120,
	range = 7,
	type = COMBAT_DEATHDAMAGE,
	shootEffect = CONST_ANI_SUDDENDEATH,
	effect = CONST_ME_MORTAREA
},
{
	name = "combat",
	interval = 2 * 1000,
	chance = 15,
	minDamage = -2,
	maxDamage = -170,
	range = 7,
	type = COMBAT_MANADRAIN
},
{
	name = "combat",
	type = COMBAT_EARTHDAMAGE,
	conditionType = CONDITION_POISON,
	conditionMinDamage = -200,
	conditionTickInterval = 2000,
	interval = 2 * 1000,
	chance = 15,
	range = 7,
	shootEffect = CONST_ANI_POISON
}
}

monster.defenses = {
	defense = 30,
	armor = 30,
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
	percent = 40
},
{
	type = COMBAT_EARTHDAMAGE,
	percent = 70
},
{
	type = COMBAT_DEATHDAMAGE,
	percent = 10
},
{
	type = COMBAT_PHYSICALDAMAGE,
	percent = -10
},
{
	type = COMBAT_HOLYDAMAGE,
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
