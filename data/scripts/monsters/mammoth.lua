local mType = Game.createMonsterType("Mammoth")
local monster = {}
monster.description = "a mammoth"
monster.experience = 160
monster.outfit = {lookType = 199}

monster.health = 320
monster.maxHealth = monster.health
monster.race = "blood"
monster.corpse = 6074
monster.speed = 190

monster.changeTarget = {interval = 4 * 1000, chance = 10}

monster.flags = {
	summonable = false,
	attackable = true,
	hostile = true,
	illusionable = false,
	convinceable = true,
	pushable = false,
	canpushitems = true,
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
	{text = "Troooooot!", yell = false},
	{text = "Hooooot-Toooooot!", yell = false},
	{text = "Tooooot.", yell = false},
}

monster.loot = {
{
	id = "gold coin",
	chance = 89882,
	maxCount = 40
},
{
	id = "meat",
	chance = 40278
},
{
	id = "ham",
	chance = 29949
},
{
	id = "thick fur",
	chance = 7669
},
{
	id = "mammoth tusk",
	chance = 7462,
	maxCount = 2
},
{
	id = "mammoth whopper",
	chance = 2507
},
{
	id = "furry club",
	chance = 526
},
{
	id = "tusk shield",
	chance = 494
}
}

monster.attacks = {
{
	name = "melee",
	interval = 2 * 1000,
	attack = 110,
	skill = 70,
	effect = CONST_ME_DRAWBLOOD
}
}

monster.defenses = {
	defense = 20,
	armor = 20,
}

monster.elements = {
{
	type = COMBAT_PHYSICALDAMAGE,
	percent = 10
},
{
	type = COMBAT_EARTHDAMAGE,
	percent = 20
},
{
	type = COMBAT_FIREDAMAGE,
	percent = -10
},
{
	type = COMBAT_ICEDAMAGE,
	percent = 20
}
}

mType:register(monster)
