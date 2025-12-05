local mType = Game.createMonsterType("Countess Sorrow")
local monster = {}
monster.description = "Countess Sorrow"
monster.experience = 13000
monster.outfit = {lookType = 241}

monster.health = 6500
monster.maxHealth = monster.health
monster.race = "undead"
monster.corpse = 6344
monster.speed = 250
monster.maxSummons = 3

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

monster.summons = {
{
	name = "Phantasm",
	chance = 20,
	interval = 2 * 1000
},
{
	name = "Phantasm Summon",
	chance = 20,
	interval = 2 * 1000
}
}

monster.loot = {
{
	id = "Countess Sorrow's frozen tear",
	chance = 100000
}
}

monster.attacks = {
{
	name = "melee",
	interval = 2 * 1000,
	attack = 360,
	skill = 70,
	effect = CONST_ME_DRAWBLOOD
},
{
	name = "combat",
	interval = 1 * 1000,
	chance = 10,
	minDamage = -150,
	maxDamage = -350,
	range = 7,
	radius = 4,
	target = true,
	type = COMBAT_EARTHDAMAGE,
	shootEffect = CONST_ANI_POISON,
	effect = CONST_ME_POISON
},
{
	name = "poisonfield",
	interval = 1 * 1000,
	chance = 17,
	range = 7,
	radius = 3,
	target = true,
	shootEffect = CONST_ANI_POISON
},
{
	name = "combat",
	interval = 1 * 1000,
	chance = 25,
	minDamage = -100,
	maxDamage = -400,
	range = 7,
	type = COMBAT_MANADRAIN,
	effect = CONST_ME_MAGIC_RED
}
}

monster.defenses = {
	defense = 20,
	armor = 25,
	{
			name = "combat",
			interval = 1 * 1000,
			chance = 50,
			type = COMBAT_HEALING,
			minDamage = 409,
			maxDamage = 812,
			effect = CONST_ME_MAGIC_BLUE
		},
}

monster.elements = {
{
	type = COMBAT_ENERGYDAMAGE,
	percent = 10
},
{
	type = COMBAT_ICEDAMAGE,
	percent = 50
},
{
	type = COMBAT_FIREDAMAGE,
	percent = -10
}
}

monster.immunities = {
{
	type = "physical",
	combat = true,
	condition = true
},
{
	type = "earth",
	combat = true,
	condition = true
},
{
	type = "death",
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
