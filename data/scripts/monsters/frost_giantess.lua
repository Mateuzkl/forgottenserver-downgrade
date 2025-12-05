local mType = Game.createMonsterType("Frost Giantess")
local monster = {}
monster.description = "a frost giantess"
monster.experience = 150
monster.outfit = {lookType = 265}

monster.health = 275
monster.maxHealth = monster.health
monster.race = "blood"
monster.corpse = 7330
monster.speed = 194

monster.changeTarget = {interval = 4 * 1000, chance = 10}

monster.flags = {
	summonable = false,
	attackable = true,
	hostile = true,
	illusionable = true,
	convinceable = true,
	pushable = false,
	canpushitems = true,
	staticAttackChance = 60,
	targetDistance = 4,
	canwalkonenergy = false,
	canwalkonfire = false,
	canwalkonpoison = false
}

monster.voices = {
	interval = 1000,
	chance = 5,
	{text = "Ymirs Mjalle!", yell = false},
	{text = "No run so much, must stay fat!", yell = false},
	{text = "Hörre Sjan Flan!", yell = false},
	{text = "Damned fast food.", yell = false},
	{text = "Come kiss the cook!", yell = false},
}

monster.loot = {
{
	id = "gold coin",
	chance = 82053,
	maxCount = 40
},
{
	id = "ham",
	chance = 20794
},
{
	id = "small stone",
	chance = 10397,
	maxCount = 3
},
{
	id = "short sword",
	chance = 7946
},
{
	id = "frost giant pelt",
	chance = 4953
},
{
	id = "ice cube",
	chance = 2093
},
{
	id = "battle shield",
	chance = 1532
},
{
	id = "mana potion",
	chance = 945
},
{
	id = "norse shield",
	chance = 287
},
{
	id = "dark helmet",
	chance = 172
},
{
	id = "shard",
	chance = 102
},
{
	id = "club ring",
	chance = 70
}
}

monster.attacks = {
{
	name = "melee",
	interval = 2 * 1000,
	attack = 60,
	skill = 70,
	effect = CONST_ME_DRAWBLOOD
},
{
	name = "combat",
	interval = 2 * 1000,
	chance = 30,
	minDamage = 0,
	maxDamage = -90,
	range = 7,
	type = COMBAT_PHYSICALDAMAGE,
	shootEffect = CONST_ANI_LARGEROCK
}
}

monster.defenses = {
	defense = 20,
	armor = 20,
	{
			name = "speed",
			interval = 2 * 1000,
			chance = 15,
			speed = 300,
			duration = 5 * 1000,
			effect = CONST_ME_MAGIC_RED
		},
}

monster.elements = {
{
	type = COMBAT_FIREDAMAGE,
	percent = 20
},
{
	type = COMBAT_HOLYDAMAGE,
	percent = 10
},
{
	type = COMBAT_ENERGYDAMAGE,
	percent = -10
},
{
	type = COMBAT_DEATHDAMAGE,
	percent = -3
}
}

monster.immunities = {
{
	type = "ice",
	combat = true,
	condition = true
}
}

mType:register(monster)
