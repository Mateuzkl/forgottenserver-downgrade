local mType = Game.createMonsterType("Ungreez")
local monster = {}
monster.description = "Ungreez"
monster.experience = 500
monster.outfit = {lookType = 35}

monster.health = 8200
monster.maxHealth = monster.health
monster.race = "fire"
monster.corpse = 5995
monster.speed = 330

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
	targetDistance = 1,
	staticAttackChance = 90,
	isboss = true
}

monster.voices = {
	interval = 5000,
	chance = 10,
	{text = "I'll teach you that even heros can die", yell = true},
	{text = "You wil die Begging like the others did", yell = true},
}

monster.loot = {
{
	id = "gold coin",
	chance = 21000,
	maxCount = 90
},
{
	id = "fire mushroom",
	chance = 10000,
	maxCount = 6
},
{
	id = "great mana potion",
	chance = 20000
},
{
	id = "great health potion",
	chance = 20000
}
}

monster.attacks = {
{
	name = "melee",
	interval = 2 * 1000,
	attack = 480,
	skill = 70,
	effect = CONST_ME_DRAWBLOOD
},
{
	name = "combat",
	interval = 2 * 1000,
	chance = 13,
	minDamage = 0,
	maxDamage = -110,
	range = 7,
	type = COMBAT_MANADRAIN,
	shootEffect = CONST_ANI_SUDDENDEATH
},
{
	name = "combat",
	interval = 1 * 1000,
	chance = 14,
	minDamage = -150,
	maxDamage = -250,
	range = 7,
	radius = 7,
	target = true,
	type = COMBAT_FIREDAMAGE,
	shootEffect = CONST_ANI_FIRE,
	effect = CONST_ME_FIREAREA
},
{
	name = "combat",
	interval = 2 * 1000,
	chance = 18,
	minDamage = -200,
	maxDamage = -400,
	type = COMBAT_ENERGYDAMAGE,
	shootEffect = CONST_ANI_ENERGY,
	effect = CONST_ME_PURPLEENERGY
},
{
	name = "combat",
	interval = 1 * 1000,
	chance = 12,
	minDamage = -300,
	maxDamage = -380,
	length = 8,
	spread = 0,
	type = COMBAT_ENERGYDAMAGE,
	effect = CONST_ME_PURPLEENERGY
}
}

monster.defenses = {
	defense = 55,
	armor = 55,
	{
			name = "combat",
			interval = 2 * 1000,
			chance = 15,
			type = COMBAT_HEALING,
			minDamage = 90,
			maxDamage = 150,
			effect = CONST_ME_MAGIC_BLUE
		},
}

monster.elements = {
{
	type = COMBAT_PHYSICALDAMAGE,
	percent = 25
},
{
	type = COMBAT_ICEDAMAGE,
	percent = -15
}
}

monster.immunities = {
{
	type = "energy",
	combat = true,
	condition = true
},
{
	type = "fire",
	combat = true,
	condition = true
},
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
	type = "drunk",
	condition = true
},
{
	type = "invisible",
	condition = true
}
}

mType:register(monster)
