local mType = Game.createMonsterType("Mutated Rat")
local monster = {}
monster.description = "a mutated rat"
monster.experience = 450
monster.outfit = {lookType = 305}

monster.health = 550
monster.maxHealth = monster.health
monster.race = "blood"
monster.corpse = 9871
monster.speed = 230

monster.changeTarget = {interval = 4 * 1000, chance = 10}

monster.flags = {
	summonable = false,
	attackable = true,
	hostile = true,
	illusionable = false,
	convinceable = false,
	pushable = false,
	canpushitems = true,
	canpushcreatures = true,
	targetDistance = 1,
	staticAttackChance = 90,
	canwalkonenergy = false,
	canwalkonfire = false
}

monster.voices = {
	interval = 5000,
	chance = 10,
	{text = "Grrrrrrrrrrrrrr!", yell = false},
	{text = "Fcccccchhhhhh", yell = false},
}

monster.loot = {
{
	id = "gold coin",
	chance = 78725,
	maxCount = 130
},
{
	id = "skull",
	chance = 20298
},
{
	id = "stone herb",
	chance = 4874
},
{
	id = "mutated rat tail",
	chance = 3852
},
{
	id = "plate shield",
	chance = 3777
},
{
	id = "halberd",
	chance = 2957
},
{
	id = "green mushroom",
	chance = 1370
},
{
	id = "mouldy cheese",
	chance = 950
},
{
	id = "stealth ring",
	chance = 562
},
{
	id = "health potion",
	chance = 507
},
{
	id = "spellbook of enlightenment",
	chance = 297
},
{
	id = "tower shield",
	chance = 50
}
}

monster.attacks = {
{
	name = "melee",
	interval = 2 * 1000,
	attack = 158,
	skill = 70,
	effect = CONST_ME_DRAWBLOOD
},
{
	name = "combat",
	interval = 2 * 1000,
	chance = 15,
	minDamage = -45,
	maxDamage = -85,
	range = 7,
	type = COMBAT_EARTHDAMAGE,
	shootEffect = CONST_ANI_POISON,
	effect = CONST_ME_POISON
},
{
	name = "combat",
	type = COMBAT_EARTHDAMAGE,
	conditionType = CONDITION_POISON,
	conditionMinDamage = -80,
	conditionMaxDamage = -100,
	conditionTickInterval = 2000,
	interval = 2 * 1000,
	chance = 10,
	length = 5,
	spread = 0,
	effect = CONST_ME_POISON
},
{
	name = "speed",
	interval = 2 * 1000,
	chance = 10,
	range = 7,
	target = true,
	speed = -600,
	duration = 30 * 1000,
	effect = CONST_ME_MAGIC_RED
},
{
	name = "combat",
	interval = 2 * 1000,
	chance = 10,
	minDamage = -30,
	maxDamage = -70,
	range = 7,
	radius = 3,
	target = false,
	type = COMBAT_LIFEDRAIN,
	effect = CONST_ME_MAGIC_RED
},
{
	name = "combat",
	type = COMBAT_EARTHDAMAGE,
	conditionType = CONDITION_POISON,
	conditionMinDamage = -80,
	conditionTickInterval = 2000,
	interval = 2 * 1000,
	chance = 10,
	range = 7,
	radius = 3,
	target = false,
	effect = CONST_ME_POISON
}
}

monster.defenses = {
	defense = 15,
	armor = 15,
	{
			name = "combat",
			interval = 2 * 1000,
			chance = 5,
			type = COMBAT_HEALING,
			minDamage = 80,
			maxDamage = 95,
			effect = CONST_ME_MAGIC_BLUE
		},
}

monster.elements = {
{
	type = COMBAT_FIREDAMAGE,
	percent = -10
},
{
	type = COMBAT_HOLYDAMAGE,
	percent = 10
}
}

monster.immunities = {
{
	type = "death",
	combat = true,
	condition = true
},
{
	type = "earth",
	combat = true,
	condition = true
},
{
	type = "paralyze",
	condition = true
},
{
	type = "lifedrain",
	combat = true
},
{
	type = "drunk",
	condition = true
},
{
	type = "drown",
	condition = true
},
{
	type = "invisible",
	condition = true
}
}

mType:register(monster)
