local mType = Game.createMonsterType("Massacre")
local monster = {}
monster.description = "Massacre"
monster.experience = 20000
monster.outfit = {lookType = 244}

monster.health = 32000
monster.maxHealth = monster.health
monster.race = "blood"
monster.corpse = 6336
monster.speed = 390

monster.flags = {
	summonable = false,
	attackable = true,
	hostile = true,
	illusionable = true,
	convinceable = false,
	pushable = false,
	canpushitems = true,
	canpushcreatures = true,
	targetDistance = 1,
	staticAttackChance = 90,
	isboss = true
}

monster.loot = {
{
	id = "piece of Massacre's shell",
	chance = 100000
}
}

monster.attacks = {
{
	name = "melee",
	interval = 2 * 1000,
	attack = 1200,
	skill = 70,
	effect = CONST_ME_DRAWBLOOD
},
{
	name = "combat",
	interval = 2 * 1000,
	chance = 24,
	minDamage = -280,
	maxDamage = -500,
	range = 7,
	type = COMBAT_PHYSICALDAMAGE,
	shootEffect = CONST_ANI_LARGEROCK
}
}

monster.defenses = {
	defense = 15,
	armor = 15,
	{
			name = "speed",
			interval = 2 * 1000,
			chance = 12,
			speed = 380,
			duration = 4 * 1000,
			effect = CONST_ME_MAGIC_RED
		},
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
	type = "earth",
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
