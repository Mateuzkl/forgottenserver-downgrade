local mType = Game.createMonsterType("Minotaur Mage")
local monster = {}
monster.description = "a minotaur mage"
monster.experience = 150
monster.outfit = {lookType = 23}

monster.health = 155
monster.maxHealth = monster.health
monster.race = "blood"
monster.corpse = 5981
monster.speed = 170

monster.changeTarget = {interval = 4 * 1000, chance = 10}

monster.flags = {
	summonable = false,
	attackable = true,
	hostile = true,
	illusionable = true,
	convinceable = false,
	pushable = false,
	canpushitems = true,
	canpushcreatures = false,
	targetDistance = 4,
	staticAttackChance = 90,
	canwalkonenergy = false,
	canwalkonfire = false,
	canwalkonpoison = false
}

monster.voices = {
	interval = 5000,
	chance = 10,
	{text = "Learrn tha secrret uf deathhh!", yell = false},
	{text = "Kaplar!", yell = false},
}

monster.loot = {
{
	id = "gold coin",
	chance = 85291,
	maxCount = 35
},
{
	id = "carrot",
	chance = 14690,
	maxCount = 8
},
{
	id = "purple robe",
	chance = 6068
},
{
	id = "torch",
	chance = 5008
},
{
	id = "leather legs",
	chance = 4908
},
{
	id = "leather helmet",
	chance = 3197
},
{
	id = "minotaur horn",
	chance = 3096,
	maxCount = 2
},
{
	id = "minotaur leather",
	chance = 2090
},
{
	id = "taurus mace",
	chance = 959
},
{
	id = "wand of cosmic energy",
	chance = 556
},
{
	id = "mana potion",
	chance = 470
}
}

monster.attacks = {
{
	name = "melee",
	interval = 2 * 1000,
	attack = 20,
	skill = 70,
	effect = CONST_ME_DRAWBLOOD
},
{
	name = "combat",
	interval = 2 * 1000,
	chance = 15,
	minDamage = -20,
	maxDamage = -58,
	range = 7,
	type = COMBAT_ENERGYDAMAGE,
	shootEffect = CONST_ANI_ENERGY,
	effect = CONST_ANI_ENERGY
},
{
	name = "combat",
	interval = 2 * 1000,
	chance = 15,
	minDamage = -50,
	maxDamage = -105,
	range = 7,
	radius = 1,
	target = true,
	type = COMBAT_FIREDAMAGE,
	shootEffect = CONST_ANI_FIRE,
	effect = CONST_ME_FIREAREA
},
{
	name = "energyfield",
	interval = 2 * 1000,
	chance = 10,
	range = 7,
	radius = 1,
	target = true,
	shootEffect = CONST_ANI_ENERGYBALL
}
}

monster.defenses = {
	defense = 18,
	armor = 18,
}

monster.elements = {
{
	type = COMBAT_ENERGYDAMAGE,
	percent = 20
},
{
	type = COMBAT_EARTHDAMAGE,
	percent = 20
},
{
	type = COMBAT_HOLYDAMAGE,
	percent = 10
},
{
	type = COMBAT_ICEDAMAGE,
	percent = -10
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
