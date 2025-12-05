local mType = Game.createMonsterType("Tiquandas Revenge")
local monster = {}
monster.description = "Tiquandas Revenge"
monster.experience = 2635
monster.outfit = {lookType = 120}

monster.health = 1800
monster.maxHealth = monster.health
monster.race = "venom"
monster.corpse = 6047
monster.speed = 440

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

monster.loot = {
{
	id = "mandrake",
	chance = 100000
},
{
	id = "seeds",
	chance = 100000
},
{
	id = "gold coin",
	chance = 87234,
	maxCount = 118
},
{
	id = "meat",
	chance = 70213
},
{
	id = "ham",
	chance = 38298
},
{
	id = "dark mushroom",
	chance = 21277,
	maxCount = 5
}
}

monster.attacks = {
{
	name = "melee",
	interval = 2 * 1000,
	attack = 160,
	skill = 70,
	effect = CONST_ME_DRAWBLOOD
},
{
	name = "combat",
	interval = 1 * 1000,
	chance = 25,
	minDamage = -60,
	maxDamage = -200,
	range = 7,
	type = COMBAT_EARTHDAMAGE,
	shootEffect = CONST_ANI_POISON,
	effect = CONST_ME_GREENSPARK
},
{
	name = "speed",
	interval = 1 * 1000,
	chance = 34,
	range = 7,
	speed = -850,
	duration = 30 * 1000,
	shootEffect = CONST_ANI_POISON,
	effect = CONST_ME_GREENSPARK
},
{
	name = "combat",
	interval = 1 * 1000,
	chance = 12,
	minDamage = -40,
	maxDamage = -130,
	radius = 3,
	target = false,
	type = COMBAT_EARTHDAMAGE,
	effect = CONST_ME_POISON
}
}

monster.defenses = {
	defense = 31,
	armor = 30,
	{
			name = "combat",
			interval = 1 * 1000,
			chance = 35,
			type = COMBAT_HEALING,
			minDamage = 600,
			maxDamage = 800,
			effect = CONST_ME_MAGIC_BLUE
		},
}

monster.immunities = {
{
	type = "earth",
	combat = true,
	condition = true
},
{
	type = "invisible",
	condition = true
}
}

mType:register(monster)
