local mType = Game.createMonsterType("Omruc")
local monster = {}
monster.description = "Omruc"
monster.experience = 2950
monster.outfit = {lookType = 90}

monster.health = 4300
monster.maxHealth = monster.health
monster.race = "undead"
monster.corpse = 6025
monster.speed = 370
monster.maxSummons = 4

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
	canwalkonenergy = false,
	canwalkonfire = false,
	canwalkonpoison = false
}

monster.summons = {
{
	name = "Stalker",
	chance = 100,
	interval = 2 * 1000
}
}

monster.voices = {
	interval = 5000,
	chance = 10,
	{text = "Now chhhou shhhee me ... Now chhhou don't.", yell = false},
	{text = "Chhhhou are marked ashhh my prey.", yell = false},
	{text = "Psssst, I am over chhhere.", yell = false},
	{text = "Catchhhh me if chhhou can.", yell = false},
	{text = "Die!", yell = false},
}

monster.loot = {
{
	id = "crystal arrow",
	chance = 100000
},
{
	id = "gold coin",
	chance = 85417,
	maxCount = 211
},
{
	id = "red apple",
	chance = 78125,
	maxCount = 2
},
{
	id = "poison arrow",
	chance = 57292,
	maxCount = 19
},
{
	id = "burst arrow",
	chance = 47917,
	maxCount = 15
},
{
	id = "onyx arrow",
	chance = 33333,
	maxCount = 6
},
{
	id = "arrow",
	chance = 22917,
	maxCount = 25
},
{
	id = "power bolt",
	chance = 17708,
	maxCount = 5
},
{
	id = "great health potion",
	chance = 11458
},
{
	id = "small diamond",
	chance = 9375,
	maxCount = 3
},
{
	id = "stealth ring",
	chance = 3125
},
{
	id = "mini mummy",
	chance = 2083
},
{
	id = "boots of haste",
	chance = 1042
}
}

monster.attacks = {
{
	name = "melee",
	interval = 2 * 1000,
	attack = 120,
	skill = 70,
	effect = CONST_ME_DRAWBLOOD
},
{
	name = "combat",
	interval = 5 * 1000,
	chance = 20,
	minDamage = -100,
	maxDamage = -250,
	range = 1,
	type = COMBAT_LIFEDRAIN
},
{
	name = "combat",
	interval = 2 * 1000,
	chance = 20,
	minDamage = -200,
	maxDamage = -500,
	type = COMBAT_EARTHDAMAGE,
	shootEffect = CONST_ANI_POISONARROW
},
{
	name = "combat",
	interval = 1 * 1000,
	chance = 20,
	minDamage = -120,
	maxDamage = -450,
	range = 3,
	type = COMBAT_FIREDAMAGE,
	shootEffect = CONST_ANI_BURSTARROW,
	effect = CONST_ME_EXPLOSIONAREA
},
{
	name = "melee",
	interval = 3 * 1000,
	chance = 20,
	attack = 500,
	skill = 70,
	effect = CONST_ME_DRAWBLOOD,
	shootEffect = CONST_ANI_ARROW
},
{
	name = "speed",
	interval = 1 * 1000,
	chance = 25,
	range = 7,
	speed = -900,
	duration = 50 * 1000,
	effect = CONST_ME_MAGIC_RED
}
}

monster.defenses = {
	defense = 60,
	armor = 60,
	{
			name = "combat",
			interval = 1 * 1000,
			chance = 17,
			type = COMBAT_HEALING,
			minDamage = 100,
			maxDamage = 200,
			effect = CONST_ME_MAGIC_BLUE
		},
	{
			name = "invisible",
			interval = 2 * 1000,
			chance = 14,
			effect = CONST_ME_MAGIC_BLUE
		},
}

monster.elements = {
{
	type = COMBAT_ENERGYDAMAGE,
	percent = 5
},
{
	type = COMBAT_ICEDAMAGE,
	percent = 5
},
{
	type = COMBAT_FIREDAMAGE,
	percent = 20
},
{
	type = COMBAT_EARTHDAMAGE,
	percent = 20
},
{
	type = COMBAT_HOLYDAMAGE,
	percent = -10
}
}

monster.immunities = {
{
	type = "death",
	combat = true,
	condition = true
},
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
