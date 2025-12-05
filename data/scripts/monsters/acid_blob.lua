local mType = Game.createMonsterType("Acid Blob")
local monster = {}
monster.description = "an acid blob"
monster.experience = 250
monster.outfit = {lookType = 314}

monster.health = 250
monster.maxHealth = monster.health
monster.race = "venom"
monster.corpse = 9962
monster.speed = 180
monster.maxSummons = 3

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
	staticAttackChance = 85,
	canwalkonenergy = false,
	canwalkonfire = false
}

monster.summons = {
{
	name = "Acid Blob",
	chance = 10,
	interval = 2 * 1000
}
}

monster.voices = {
	interval = 5000,
	chance = 10,
	{text = "Kzzchhh!", yell = false},
}

monster.loot = {
{
	id = "glob of acid slime",
	chance = 14285
}
}

monster.attacks = {
{
	name = "melee",
	interval = 2 * 1000,
	attack = 80,
	skill = 70,
	effect = CONST_ME_DRAWBLOOD
},
{
	name = "combat",
	interval = 2 * 1000,
	chance = 30,
	minDamage = -10,
	maxDamage = -20,
	radius = 4,
	target = false,
	type = COMBAT_EARTHDAMAGE,
	effect = CONST_ME_GREENSPARK
},
{
	name = "combat",
	interval = 2 * 1000,
	chance = 15,
	minDamage = -40,
	maxDamage = -60,
	length = 5,
	spread = 0,
	type = COMBAT_EARTHDAMAGE,
	effect = CONST_ME_GREENBUBBLE
},
{
	name = "combat",
	interval = 2 * 1000,
	chance = 10,
	range = 7,
	target = true,
	type = COMBAT_EARTHDAMAGE,
	shootEffect = CONST_ANI_POISON
}
}

monster.defenses = {
	defense = 15,
	armor = 15,
}

monster.immunities = {
{
	type = "death",
	combat = true,
	condition = true
},
{
	type = "earth",
	combat = true,
	condition = true
}
}

mType:register(monster)
