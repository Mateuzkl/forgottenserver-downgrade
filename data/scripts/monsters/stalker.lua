local mType = Game.createMonsterType("Stalker")
local monster = {}
monster.description = "a stalker"
monster.experience = 90
monster.outfit = {lookType = 128}

monster.health = 120
monster.maxHealth = monster.health
monster.race = "blood"
monster.corpse = 20511
monster.speed = 260

monster.changeTarget = {interval = 4 * 1000, chance = 10}

monster.flags = {
	summonable = false,
	attackable = true,
	hostile = true,
	illusionable = false,
	convinceable = false,
	pushable = false,
	canpushitems = true,
	canpushcreatures = false,
	targetDistance = 1,
	staticAttackChance = 90,
	canwalkonenergy = false,
	canwalkonfire = false,
	canwalkonpoison = false
}

monster.loot = {
{
	id = "gold coin",
	chance = 13123,
	maxCount = 8
},
{
	id = "throwing knife",
	chance = 11116,
	maxCount = 2
},
{
	id = "blank rune",
	chance = 8811
},
{
	id = "brass shield",
	chance = 5617
},
{
	id = "brass legs",
	chance = 3531
},
{
	id = "miraculum",
	chance = 1543
},
{
	id = "obsidian lance",
	chance = 1198
},
{
	id = "katana",
	chance = 519
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
	interval = 1 * 1000,
	chance = 15,
	minDamage = -20,
	maxDamage = -30,
	range = 1,
	type = COMBAT_LIFEDRAIN,
	effect = CONST_ME_MAGIC_RED
}
}

monster.defenses = {
	defense = 14,
	armor = 14,
	{
			name = "invisible",
			interval = 2 * 1000,
			chance = 30,
			effect = CONST_ME_MAGIC_BLUE
		},
}

monster.elements = {
{
	type = COMBAT_DEATHDAMAGE,
	percent = 5
},
{
	type = COMBAT_PHYSICALDAMAGE,
	percent = -20
},
{
	type = COMBAT_HOLYDAMAGE,
	percent = -5
}
}

monster.immunities = {
{
	type = "invisible",
	condition = true
},
{
	type = "lifedrain",
	combat = true
}
}

mType:register(monster)
