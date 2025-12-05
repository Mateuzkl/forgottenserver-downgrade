local mType = Game.createMonsterType("Barbaria")
local monster = {}
monster.description = "Barbaria"
monster.experience = 355
monster.outfit = {lookType = 264}

monster.health = 345
monster.maxHealth = monster.health
monster.race = "blood"
monster.corpse = 20339
monster.speed = 280
monster.maxSummons = 1

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
	isboss = true
}

monster.summons = {
{
	name = "War Wolf",
	chance = 40,
	interval = 2 * 1000
}
}

monster.voices = {
	interval = 2000,
	chance = 5,
	{text = "To me, creatures of the wild!", yell = false},
	{text = "My instincts tell me about your cowardice.", yell = false},
}

monster.loot = {
{
	id = 1958,
	chance = 15000
},
{
	id = 2050,
	chance = 25000
},
{
	id = "gold coin",
	chance = 48000,
	maxCount = 35
},
{
	id = "chain armor",
	chance = 11000
},
{
	id = 3965,
	chance = 12500
},
{
	id = "fur bag",
	chance = 1000
}
}

monster.attacks = {
{
	name = "melee",
	interval = 2 * 1000,
	attack = 70,
	skill = 70,
	effect = CONST_ME_DRAWBLOOD
},
{
	name = "combat",
	interval = 2 * 1000,
	chance = 34,
	minDamage = -30,
	maxDamage = -80,
	range = 7,
	radius = 1,
	target = true,
	type = COMBAT_PHYSICALDAMAGE,
	shootEffect = CONST_ANI_SNOWBALL
},
{
	name = "combat",
	interval = 3 * 1000,
	chance = 20,
	minDamage = -35,
	maxDamage = -70,
	range = 7,
	type = COMBAT_ENERGYDAMAGE,
	shootEffect = CONST_ANI_FIRE,
	effect = CONST_ANI_ENERGY
}
}

monster.defenses = {
	defense = 10,
	armor = 10,
	{
			name = "combat",
			interval = 1 * 1000,
			chance = 25,
			type = COMBAT_HEALING,
			minDamage = 50,
			maxDamage = 80,
			effect = CONST_ME_MAGIC_BLUE
		},
}

monster.elements = {
{
	type = COMBAT_PHYSICALDAMAGE,
	percent = -20
},
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
	type = COMBAT_DEATHDAMAGE,
	percent = -5
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
	type = "drunk",
	condition = true
},
{
	type = "invisible",
	condition = true
}
}

mType:register(monster)
