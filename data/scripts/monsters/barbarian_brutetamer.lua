local mType = Game.createMonsterType("Barbarian Brutetamer")
local monster = {}
monster.description = "a barbarian brutetamer"
monster.experience = 90
monster.outfit = {lookType = 264}

monster.health = 145
monster.maxHealth = monster.health
monster.race = "blood"
monster.corpse = 20339
monster.speed = 190
monster.maxSummons = 2

monster.flags = {
	summonable = false,
	attackable = true,
	hostile = true,
	illusionable = false,
	convinceable = false,
	pushable = false,
	canpushitems = true,
	staticAttackChance = 90,
	targetDistance = 4,
	canwalkonenergy = false,
	canwalkonfire = false,
	canwalkonpoison = false
}

monster.summons = {
{
	name = "War Wolf",
	chance = 10,
	interval = 2 * 1000
}
}

monster.voices = {
	interval = 5000,
	chance = 10,
	{text = "To me, creatures of the wild!", yell = false},
	{text = "My instincts tell me about your cowardice.", yell = false},
}

monster.loot = {
{
	id = 1958,
	chance = 5000
},
{
	id = "gold coin",
	chance = 58000,
	maxCount = 15
},
{
	id = 2401,
	chance = 6500
},
{
	id = "chain armor",
	chance = 8900
},
{
	id = "corncob",
	chance = 11000,
	maxCount = 2
},
{
	id = 3965,
	chance = 5250
},
{
	id = "fur bag",
	chance = 7540
},
{
	id = "brutetamer's staff",
	chance = 380
},
{
	id = "fur boots",
	chance = 160
},
{
	id = "mammoth fur cape",
	chance = 160
},
{
	id = "mammoth fur shorts",
	chance = 90
},
{
	id = "mana potion",
	chance = 630
}
}

monster.attacks = {
{
	name = "melee",
	interval = 2 * 1000,
	attack = 20,
	skill = 70,
	effect = CONST_ME_DRAWBLOOD
},
{
	name = "combat",
	interval = 2 * 1000,
	chance = 20,
	minDamage = 0,
	maxDamage = -34,
	range = 7,
	radius = 1,
	target = true,
	type = COMBAT_PHYSICALDAMAGE,
	shootEffect = CONST_ANI_SNOWBALL
}
}

monster.defenses = {
	defense = 10,
	armor = 10,
	{
			name = "combat",
			interval = 2 * 1000,
			chance = 40,
			type = COMBAT_HEALING,
			minDamage = 50,
			maxDamage = 80,
			effect = CONST_ME_MAGIC_BLUE
		},
}

monster.elements = {
{
	type = COMBAT_ICEDAMAGE,
	percent = 50
},
{
	type = COMBAT_HOLYDAMAGE,
	percent = 10
},
{
	type = COMBAT_ENERGYDAMAGE,
	percent = 20
},
{
	type = COMBAT_PHYSICALDAMAGE,
	percent = -20
},
{
	type = COMBAT_DEATHDAMAGE,
	percent = -1
}
}

monster.immunities = {
{
	type = "lifedrain",
	combat = true
},
{
	type = "paralyze",
	condition = true
},
{
	type = "outfit",
	condition = true
},
{
	type = "invisible",
	condition = true
},
{
	type = "drunk",
	condition = true
}
}

mType:register(monster)
