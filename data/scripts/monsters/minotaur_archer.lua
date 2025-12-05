local mType = Game.createMonsterType("Minotaur Archer")
local monster = {}
monster.description = "a minotaur archer"
monster.experience = 65
monster.outfit = {lookType = 24}

monster.health = 100
monster.maxHealth = monster.health
monster.race = "blood"
monster.corpse = 5982
monster.speed = 160

monster.changeTarget = {interval = 4 * 1000, chance = 10}

monster.flags = {
	summonable = true,
	attackable = true,
	hostile = true,
	illusionable = true,
	convinceable = true,
	pushable = false,
	canpushitems = false,
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
	{text = "Ruan Wihmpy!", yell = false},
	{text = "Kaplar!", yell = false},
}

monster.loot = {
{
	id = "bolt",
	chance = 90124,
	maxCount = 20
},
{
	id = "gold coin",
	chance = 75036,
	maxCount = 30
},
{
	id = "broken crossbow",
	chance = 15323
},
{
	id = "piercing bolt",
	chance = 12190,
	maxCount = 4
},
{
	id = "piece of archer armor",
	chance = 8034
},
{
	id = "meat",
	chance = 4952
},
{
	id = "minotaur horn",
	chance = 1973,
	maxCount = 2
},
{
	id = "minotaur leather",
	chance = 1925
},
{
	id = "crossbow",
	chance = 877
},
{
	id = "scale armor",
	chance = 539
},
{
	id = "brass armor",
	chance = 519
}
}

monster.attacks = {
{
	name = "melee",
	interval = 2 * 1000,
	attack = 25,
	skill = 70,
	effect = CONST_ME_DRAWBLOOD
},
{
	name = "combat",
	interval = 2 * 1000,
	chance = 40,
	minDamage = 0,
	maxDamage = -80,
	range = 7,
	target = true,
	type = COMBAT_PHYSICALDAMAGE,
	shootEffect = CONST_ANI_BOLT
}
}

monster.defenses = {
	defense = 6,
	armor = 6,
}

monster.elements = {
{
	type = COMBAT_FIREDAMAGE,
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

mType:register(monster)
