local mType = Game.createMonsterType("Wild Warrior")
local monster = {}
monster.description = "a wild warrior"
monster.experience = 60
monster.outfit = {lookType = 131}

monster.health = 135
monster.maxHealth = monster.health
monster.race = "blood"
monster.corpse = 20531
monster.speed = 190

monster.flags = {
	summonable = true,
	attackable = true,
	hostile = true,
	illusionable = true,
	convinceable = true,
	pushable = true,
	canpushitems = false,
	canpushcreatures = false,
	staticAttackChance = 90,
	targetDistance = 1,
	canwalkonenergy = false,
	canwalkonfire = false,
	canwalkonpoison = false
}

monster.voices = {
	interval = 5000,
	chance = 10,
	{text = "An enemy!", yell = false},
	{text = "Gimme your money!", yell = false},
}

monster.loot = {
{
	id = "gold coin",
	chance = 65608,
	maxCount = 30
},
{
	id = "axe",
	chance = 20940
},
{
	id = "brass shield",
	chance = 17483
},
{
	id = "mace",
	chance = 13081
},
{
	id = "egg",
	chance = 12596,
	maxCount = 2
},
{
	id = "chain helmet",
	chance = 5204
},
{
	id = "brass armor",
	chance = 2779
},
{
	id = "steel shield",
	chance = 1314
},
{
	id = "iron helmet",
	chance = 1032
},
{
	id = "doll",
	chance = 529
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
	defense = 8,
	armor = 8,
	{
			name = "speed",
			interval = 2 * 1000,
			chance = 15,
			speed = 200,
			duration = 5 * 1000,
			effect = CONST_ME_MAGIC_RED
		},
}

monster.elements = {
{
	type = COMBAT_HOLYDAMAGE,
	percent = 10
},
{
	type = COMBAT_PHYSICALDAMAGE,
	percent = -5
},
{
	type = COMBAT_DEATHDAMAGE,
	percent = -5
}
}

mType:register(monster)
