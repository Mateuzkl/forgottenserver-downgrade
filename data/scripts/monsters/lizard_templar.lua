local mType = Game.createMonsterType("Lizard Templar")
local monster = {}
monster.description = "a lizard templar"
monster.experience = 155
monster.outfit = {lookType = 113}

monster.health = 410
monster.maxHealth = monster.health
monster.race = "blood"
monster.corpse = 4251
monster.speed = 174

monster.flags = {
	summonable = false,
	attackable = true,
	hostile = true,
	illusionable = true,
	convinceable = false,
	pushable = false,
	canpushitems = true,
	canpushcreatures = false,
	targetDistance = 1,
	staticAttackChance = 90,
	canwalkonenergy = false,
	canwalkonfire = false
}

monster.voices = {
	interval = 5000,
	chance = 10,
	{text = "Hissss!", yell = false},
}

monster.loot = {
{
	id = "gold coin",
	chance = 84000,
	maxCount = 60
},
{
	id = "short sword",
	chance = 9500
},
{
	id = 2376,
	chance = 4800
},
{
	id = "steel helmet",
	chance = 2000
},
{
	id = "morning star",
	chance = 1990
},
{
	id = "plate armor",
	chance = 1000
},
{
	id = "lizard scale",
	chance = 990
},
{
	id = "lizard leather",
	chance = 880
},
{
	id = "health potion",
	chance = 820
},
{
	id = "templar scytheblade",
	chance = 550
},
{
	id = "small emerald",
	chance = 260
},
{
	id = "salamander shield",
	chance = 110
}
}

monster.attacks = {
{
	name = "melee",
	interval = 2 * 1000,
	attack = 70,
	skill = 70,
	effect = CONST_ME_DRAWBLOOD
}
}

monster.defenses = {
	defense = 26,
	armor = 26,
}

monster.elements = {
{
	type = COMBAT_ENERGYDAMAGE,
	percent = 20
},
{
	type = COMBAT_ICEDAMAGE,
	percent = 10
},
{
	type = COMBAT_FIREDAMAGE,
	percent = -10
}
}

monster.immunities = {
{
	type = "earth",
	combat = true,
	condition = true
}
}

mType:register(monster)
