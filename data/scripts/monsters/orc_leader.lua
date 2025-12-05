local mType = Game.createMonsterType("Orc Leader")
local monster = {}
monster.description = "an orc leader"
monster.experience = 270
monster.outfit = {lookType = 59}

monster.health = 450
monster.maxHealth = monster.health
monster.race = "blood"
monster.corpse = 6001
monster.speed = 230

monster.changeTarget = {interval = 4 * 1000, chance = 10}

monster.flags = {
	summonable = true,
	attackable = true,
	hostile = true,
	illusionable = true,
	convinceable = true,
	pushable = false,
	canpushitems = true,
	canpushcreatures = true,
	targetDistance = 1,
	staticAttackChance = 90,
	canwalkonfire = true,
	canwalkonenergy = false,
	canwalkonpoison = false
}

monster.voices = {
	interval = 5000,
	chance = 10,
	{text = "Ulderek futgyr human!", yell = false},
}

monster.loot = {
{
	id = "fish",
	chance = 30075
},
{
	id = "gold coin",
	chance = 28207,
	maxCount = 35
},
{
	id = "orc leather",
	chance = 19721
},
{
	id = "plate shield",
	chance = 10140
},
{
	id = "throwing knife",
	chance = 10007,
	maxCount = 4
},
{
	id = "brown mushroom",
	chance = 9833
},
{
	id = "sword ring",
	chance = 3778
},
{
	id = "longsword",
	chance = 2970
},
{
	id = "royal spear",
	chance = 2647
},
{
	id = "brass legs",
	chance = 2435
},
{
	id = "scimitar",
	chance = 2191
},
{
	id = "skull belt",
	chance = 2115
},
{
	id = "plate armor",
	chance = 1597
},
{
	id = "orc tooth",
	chance = 1022
},
{
	id = "broadsword",
	chance = 748
},
{
	id = "health potion",
	chance = 583
},
{
	id = "plate legs",
	chance = 396
},
{
	id = "warrior helmet",
	chance = 114
}
}

monster.attacks = {
{
	name = "melee",
	interval = 2 * 1000,
	attack = 185,
	skill = 70,
	effect = CONST_ME_DRAWBLOOD
},
{
	name = "combat",
	interval = 2 * 1000,
	chance = 20,
	minDamage = 0,
	maxDamage = -70,
	range = 7,
	type = COMBAT_PHYSICALDAMAGE,
	shootEffect = CONST_ANI_THROWINGKNIFE
}
}

monster.defenses = {
	defense = 20,
	armor = 20,
}

monster.elements = {
{
	type = COMBAT_ENERGYDAMAGE,
	percent = 20
},
{
	type = COMBAT_HOLYDAMAGE,
	percent = 20
},
{
	type = COMBAT_EARTHDAMAGE,
	percent = -10
},
{
	type = COMBAT_DEATHDAMAGE,
	percent = -10
}
}

monster.immunities = {
{
	type = "invisible",
	condition = true
},
{
	type = "fire",
	combat = true,
	condition = true
}
}

mType:register(monster)
