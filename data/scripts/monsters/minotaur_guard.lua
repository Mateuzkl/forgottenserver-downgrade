local mType = Game.createMonsterType("Minotaur Guard")
local monster = {}
monster.description = "a minotaur guard"
monster.experience = 160
monster.outfit = {lookType = 29}

monster.health = 185
monster.maxHealth = monster.health
monster.race = "blood"
monster.corpse = 5983
monster.speed = 190

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
	canwalkonenergy = false,
	canwalkonfire = false,
	canwalkonpoison = false
}

monster.voices = {
	interval = 5000,
	chance = 10,
	{text = "Kirrl Karrrl!", yell = false},
	{text = "Kaplar", yell = false},
}

monster.loot = {
{
	id = "gold coin",
	chance = 59686,
	maxCount = 20
},
{
	id = "minotaur horn",
	chance = 8195,
	maxCount = 2
},
{
	id = "piece of warrior armor",
	chance = 4980
},
{
	id = "brass armor",
	chance = 4125
},
{
	id = "chain armor",
	chance = 2983
},
{
	id = "battle shield",
	chance = 2093
},
{
	id = "minotaur leather",
	chance = 945
},
{
	id = "fishing rod",
	chance = 481
},
{
	id = "double axe",
	chance = 434
},
{
	id = "health potion",
	chance = 413
},
{
	id = "minotaur trophy",
	chance = 94
}
}

monster.attacks = {
{
	name = "melee",
	interval = 2 * 1000,
	attack = 100,
	skill = 70,
	effect = CONST_ME_DRAWBLOOD
}
}

monster.defenses = {
	defense = 15,
	armor = 15,
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
	percent = -10
}
}

mType:register(monster)
