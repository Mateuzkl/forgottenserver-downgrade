local mType = Game.createMonsterType("Orc Shaman")
local monster = {}
monster.description = "an orc shaman"
monster.experience = 110
monster.outfit = {lookType = 6}

monster.health = 115
monster.maxHealth = monster.health
monster.race = "blood"
monster.corpse = 5978
monster.speed = 140
monster.maxSummons = 4

monster.changeTarget = {interval = 4 * 1000, chance = 10}

monster.flags = {
	summonable = false,
	attackable = true,
	hostile = true,
	illusionable = true,
	convinceable = false,
	pushable = false,
	canpushitems = false,
	canpushcreatures = false,
	targetDistance = 4,
	staticAttackChance = 90,
	canwalkonenergy = false,
	canwalkonfire = false,
	canwalkonpoison = false
}

monster.summons = {
{
	name = "Snake",
	chance = 20,
	interval = 2 * 1000
}
}

monster.voices = {
	interval = 5000,
	chance = 10,
	{text = "Huumans stinkk!", yell = false},
	{text = "Grak brrretz gulu.", yell = false},
}

monster.loot = {
{
	id = "gold coin",
	chance = 89750,
	maxCount = 5
},
{
	id = "corncob",
	chance = 10877,
	maxCount = 2
},
{
	id = "broken shamanic staff",
	chance = 10161
},
{
	id = "chain armor",
	chance = 8658
},
{
	id = "shamanic hood",
	chance = 7513
},
{
	id = "spear",
	chance = 5170
},
{
	id = "orc leather",
	chance = 3792
},
{
	id = "orc tooth",
	chance = 2182
},
{
	id = "wand of decay",
	chance = 966
},
{
	id = "book",
	chance = 465
}
}

monster.attacks = {
{
	name = "melee",
	interval = 2 * 1000,
	attack = 15,
	skill = 70,
	effect = CONST_ME_DRAWBLOOD
},
{
	name = "combat",
	interval = 2 * 1000,
	chance = 15,
	minDamage = -20,
	maxDamage = -35,
	range = 7,
	type = COMBAT_ENERGYDAMAGE,
	shootEffect = CONST_ANI_ENERGYBALL
},
{
	name = "combat",
	interval = 2 * 1000,
	chance = 5,
	minDamage = -5,
	maxDamage = -45,
	range = 7,
	radius = 1,
	target = true,
	type = COMBAT_FIREDAMAGE,
	shootEffect = CONST_ANI_FIRE
}
}

monster.defenses = {
	defense = 8,
	armor = 8,
	{
			name = "combat",
			interval = 2 * 1000,
			chance = 60,
			type = COMBAT_HEALING,
			minDamage = 27,
			maxDamage = 43,
			effect = CONST_ME_MAGIC_BLUE
		},
}

monster.elements = {
{
	type = COMBAT_ENERGYDAMAGE,
	percent = 50
},
{
	type = COMBAT_HOLYDAMAGE,
	percent = 10
},
{
	type = COMBAT_EARTHDAMAGE,
	percent = -10
},
{
	type = COMBAT_DEATHDAMAGE,
	percent = -5
}
}

monster.immunities = {
{
	type = "invisible",
	condition = true
}
}

mType:register(monster)
