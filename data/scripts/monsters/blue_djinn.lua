local mType = Game.createMonsterType("Blue Djinn")
local monster = {}
monster.description = "a blue djinn"
monster.experience = 215
monster.outfit = {lookType = 80}

monster.health = 330
monster.maxHealth = monster.health
monster.race = "blood"
monster.corpse = 6020
monster.speed = 220

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

monster.voices = {
	interval = 5000,
	chance = 10,
	{text = "Simsalabim", yell = false},
	{text = "Feel the power of my magic, tiny mortal!", yell = false},
	{text = "Be careful what you wish for.", yell = false},
	{text = "Wishes can come true.", yell = false},
}

monster.loot = {
{
	id = "gold coin",
	chance = 43000,
	maxCount = 100
},
{
	id = "gold coin",
	chance = 43000,
	maxCount = 15
},
{
	id = 2684,
	chance = 23480
},
{
	id = "royal spear",
	chance = 4500,
	maxCount = 2
},
{
	id = "small sapphire",
	chance = 2560,
	maxCount = 4
},
{
	id = 1963,
	chance = 2450
},
{
	id = "blue piece of cloth",
	chance = 1920
},
{
	id = "dirty turban",
	chance = 1890
},
{
	id = "mana potion",
	chance = 860
},
{
	id = "small oil lamp",
	chance = 730
},
{
	id = "blue rose",
	chance = 440
},
{
	id = "mystic turban",
	chance = 70
}
}

monster.attacks = {
{
	name = "melee",
	interval = 2 * 1000,
	attack = 110,
	skill = 70,
	effect = CONST_ME_DRAWBLOOD
},
{
	name = "combat",
	interval = 2 * 1000,
	chance = 15,
	minDamage = -45,
	maxDamage = -80,
	range = 7,
	type = COMBAT_FIREDAMAGE,
	shootEffect = CONST_ANI_FIRE
},
{
	name = "combat",
	interval = 2 * 1000,
	chance = 10,
	minDamage = -60,
	maxDamage = -105,
	range = 7,
	radius = 1,
	target = true,
	type = COMBAT_DEATHDAMAGE,
	shootEffect = CONST_ANI_SUDDENDEATH,
	effect = CONST_ME_SMALLCLOUDS
},
{
	name = "drunk",
	interval = 2 * 1000,
	chance = 10,
	range = 7,
	duration = 5 * 1000,
	shootEffect = CONST_ANI_ENERGY
},
{
	name = "outfit",
	interval = 2 * 1000,
	chance = 1,
	range = 7,
	duration = 4 * 1000,
	effect = CONST_ME_MAGIC_BLUE
}
}

monster.defenses = {
	defense = 20,
	armor = 20,
}

monster.elements = {
{
	type = COMBAT_FIREDAMAGE,
	percent = 80
},
{
	type = COMBAT_ENERGYDAMAGE,
	percent = 50
},
{
	type = COMBAT_HOLYDAMAGE,
	percent = 20
},
{
	type = COMBAT_ICEDAMAGE,
	percent = -10
},
{
	type = COMBAT_DEATHDAMAGE,
	percent = -13
}
}

monster.immunities = {
{
	type = "paralyze",
	condition = true
},
{
	type = "invisible",
	condition = true
}
}

mType:register(monster)
