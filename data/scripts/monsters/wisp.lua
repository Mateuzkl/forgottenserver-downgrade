local mType = Game.createMonsterType("Wisp")
local monster = {}
monster.description = "a wisp"
monster.experience = 0
monster.outfit = {lookType = 294}

monster.health = 115
monster.maxHealth = monster.health
monster.race = "undead"
monster.corpse = 6324
monster.speed = 162

monster.flags = {
	summonable = false,
	attackable = true,
	hostile = true,
	illusionable = true,
	convinceable = false,
	pushable = false,
	canpushitems = true,
	staticAttackChance = 15,
	targetDistance = 1,
	canwalkonenergy = false,
	canwalkonfire = false,
	canwalkonpoison = false
}

monster.voices = {
	interval = 5000,
	chance = 10,
	{text = "Crackle!", yell = false},
	{text = "Tsshh", yell = false},
}

monster.loot = {
{
	id = "moon backpack",
	chance = 140
}
}

monster.attacks = {
{
	name = "melee",
	interval = 2 * 1000,
	attack = 1,
	skill = 70,
	effect = CONST_ME_DRAWBLOOD
},
{
	name = "combat",
	interval = 2 * 1000,
	chance = 15,
	minDamage = -3,
	maxDamage = -7,
	range = 1,
	target = true,
	type = COMBAT_LIFEDRAIN,
	effect = CONST_ME_MAGIC_RED
}
}

monster.defenses = {
	defense = 7,
	armor = 7,
	{
			name = "speed",
			interval = 2 * 1000,
			chance = 15,
			speed = 200,
			duration = 5 * 1000,
			effect = CONST_ME_MAGIC_RED
		},
	{
			name = "combat",
			interval = 2 * 1000,
			chance = 5,
			type = COMBAT_HEALING,
			minDamage = 15,
			maxDamage = 25,
			effect = CONST_ME_MAGIC_GREEN
		},
	{
			name = "invisible",
			interval = 2 * 1000,
			chance = 10,
			effect = CONST_ME_MAGIC_BLUE
		},
}

monster.elements = {
{
	type = COMBAT_ENERGYDAMAGE,
	percent = 40
},
{
	type = COMBAT_EARTHDAMAGE,
	percent = 90
},
{
	type = COMBAT_PHYSICALDAMAGE,
	percent = 60
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
}
}

mType:register(monster)
