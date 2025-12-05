local mType = Game.createMonsterType("Orc Rider")
local monster = {}
monster.description = "an orc rider"
monster.experience = 110
monster.outfit = {lookType = 4}

monster.health = 180
monster.maxHealth = monster.health
monster.race = "blood"
monster.corpse = 6010
monster.speed = 260

monster.changeTarget = {interval = 4 * 1000, chance = 10}

monster.flags = {
	summonable = false,
	attackable = true,
	hostile = true,
	illusionable = false,
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
	{text = "Grrrrrrr", yell = false},
	{text = "Orc arga Huummmak!", yell = false},
}

monster.loot = {
{
	id = "gold coin",
	chance = 48261,
	maxCount = 81
},
{
	id = "meat",
	chance = 24151
},
{
	id = "wolf tooth chain",
	chance = 10159
},
{
	id = "orc leather",
	chance = 9984
},
{
	id = "warwolf fur",
	chance = 9718
},
{
	id = "orcish axe",
	chance = 6969,
	maxCount = 2
},
{
	id = "orc tooth",
	chance = 2110
},
{
	id = "torch",
	chance = 1049
},
{
	id = "battle shield",
	chance = 1019
},
{
	id = "obsidian lance",
	chance = 1007
},
{
	id = "scale armor",
	chance = 615
}
}

monster.attacks = {
{
	name = "melee",
	interval = 2 * 1000,
	attack = 130,
	skill = 70,
	effect = CONST_ME_DRAWBLOOD
}
}

monster.defenses = {
	defense = 9,
	armor = 9,
	{
			name = "speed",
			interval = 2 * 1000,
			chance = 15,
			speed = 290,
			duration = 5 * 1000,
			effect = CONST_ME_MAGIC_RED
		},
}

monster.elements = {
{
	type = COMBAT_ENERGYDAMAGE,
	percent = 20
},
{
	type = COMBAT_HOLYDAMAGE,
	percent = 10
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

mType:register(monster)
