local mType = Game.createMonsterType("Foreman Kneebiter")
local monster = {}
monster.description = "Foreman Kneebiter"
monster.experience = 445
monster.outfit = {lookType = 70}

monster.health = 570
monster.maxHealth = monster.health
monster.race = "blood"
monster.corpse = 6013
monster.speed = 200

monster.changeTarget = {interval = 5 * 1000, chance = 8}

monster.flags = {
	attackable = true,
	hostile = true,
	canpushitems = true,
	targetDistance = 1,
	staticAttackChance = 90,
	isboss = true
}

monster.loot = {
{
	id = "gold coin",
	chance = 90000,
	maxCount = 100
},
{
	id = "battle shield",
	chance = 6666
},
{
	id = "iron ore",
	chance = 2500,
	maxCount = 2
}
}

monster.attacks = {
{
	name = "melee",
	interval = 2 * 1000,
	attack = 200,
	skill = 70,
	effect = CONST_ME_DRAWBLOOD
}
}

monster.defenses = {
	defense = 22,
	armor = 15,
}

monster.elements = {
{
	type = COMBAT_EARTHDAMAGE,
	percent = 90
},
{
	type = COMBAT_PHYSICALDAMAGE,
	percent = 20
},
{
	type = COMBAT_FIREDAMAGE,
	percent = -5
},
{
	type = COMBAT_DEATHDAMAGE,
	percent = -5
}
}

monster.immunities = {
{
	type = "invisible",
	condition = true
}
}

mType:register(monster)
