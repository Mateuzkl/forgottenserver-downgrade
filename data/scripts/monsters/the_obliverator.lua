local mType = Game.createMonsterType("The Obliverator")
local monster = {}
monster.description = "The Obliverator"
monster.experience = 6000
monster.outfit = {lookType = 35}

monster.health = 9020
monster.maxHealth = monster.health
monster.race = "fire"
monster.corpse = 7349
monster.speed = 280
monster.maxSummons = 3

monster.flags = {
	summonable = false,
	attackable = true,
	hostile = true,
	illusionable = false,
	convinceable = false,
	pushable = false,
	canpushitems = true,
	targetDistance = 1,
	canwalkonenergy = false,
	canwalkonpoison = false
}

monster.summons = {
{
	name = "fire elemental",
	chance = 50,
	interval = 2 * 1000
}
}

monster.voices = {
	interval = 1000,
	chance = 10,
	{text = "NO ONE WILL BEAT ME!", yell = false},
}

monster.attacks = {
{
	name = "melee",
	interval = 2 * 1000,
	attack = 700,
	skill = 70,
	effect = CONST_ME_DRAWBLOOD
},
{
	name = "combat",
	interval = 1 * 1000,
	chance = 20,
	minDamage = -100,
	maxDamage = -250,
	range = 5,
	radius = 7,
	target = true,
	type = COMBAT_FIREDAMAGE,
	effect = CONST_ME_FIREAREA,
	shootEffect = CONST_ANI_FIRE
},
{
	name = "combat",
	interval = 3 * 1000,
	chance = 30,
	minDamage = -200,
	maxDamage = -500,
	length = 8,
	spread = 0,
	type = COMBAT_ENERGYDAMAGE,
	effect = CONST_ANI_ENERGY
}
}

monster.defenses = {
	defense = 45,
	armor = 40,
	{
			name = "combat",
			interval = 4 * 1000,
			chance = 5,
			type = COMBAT_HEALING,
			minDamage = 50,
			maxDamage = 200,
			effect = CONST_ME_MAGIC_BLUE
		},
}

monster.elements = {
{
	type = COMBAT_ENERGYDAMAGE,
	percent = 50
},
{
	type = COMBAT_DEATHDAMAGE,
	percent = 35
},
{
	type = COMBAT_HOLYDAMAGE,
	percent = -15
}
}

monster.immunities = {
{
	type = "fire",
	combat = true,
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
