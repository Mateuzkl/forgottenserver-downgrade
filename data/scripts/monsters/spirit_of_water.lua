local mType = Game.createMonsterType("Spirit of Water")
local monster = {}
monster.description = "a spirit of water"
monster.experience = 850
monster.outfit = {lookType = 11}

monster.health = 1400
monster.maxHealth = monster.health
monster.race = "undead"
monster.corpse = 7349
monster.speed = 200

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

monster.voices = {
	interval = 5000,
	chance = 5,
	{text = "Blubb", yell = false},
}

monster.attacks = {
{
	name = "melee",
	interval = 2 * 1000,
	attack = 400,
	skill = 70,
	effect = CONST_ME_DRAWBLOOD
},
{
	name = "poisonfield",
	interval = 1 * 1000,
	chance = 50,
	shootEffect = CONST_ANI_POISON
},
{
	name = "combat",
	interval = 2 * 1000,
	chance = 40,
	minDamage = -1,
	maxDamage = -120,
	spread = 3,
	type = COMBAT_PHYSICALDAMAGE,
	effect = CONST_ME_BLUEBUBBLE
}
}

monster.defenses = {
	defense = 0,
	armor = 0,
}

monster.elements = {
{
	type = COMBAT_ENERGYDAMAGE,
	percent = -10
}
}

monster.immunities = {
{
	type = "fire",
	combat = true,
	condition = true
},
{
	type = "ice",
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
