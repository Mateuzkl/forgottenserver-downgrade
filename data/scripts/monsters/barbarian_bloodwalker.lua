local mType = Game.createMonsterType("Barbarian Bloodwalker")
local monster = {}
monster.description = "a barbarian bloodwalker"
monster.experience = 195
monster.outfit = {lookType = 255}

monster.health = 305
monster.maxHealth = monster.health
monster.race = "blood"
monster.corpse = 20335
monster.speed = 236

monster.changeTarget = {interval = 4 * 1000, chance = 10}

monster.flags = {
	summonable = false,
	attackable = true,
	hostile = true,
	illusionable = true,
	convinceable = true,
	pushable = false,
	canpushitems = true,
	staticAttackChance = 80,
	targetDistance = 1,
	canwalkonenergy = false,
	canwalkonfire = false,
	canwalkonpoison = false
}

monster.voices = {
	interval = 5000,
	chance = 10,
	{text = "YAAAHEEE!", yell = false},
	{text = "SLAUGHTER!", yell = false},
	{text = "CARNAGE!", yell = false},
	{text = "You can run but you can't hide", yell = false},
}

monster.loot = {
{
	id = "gold coin",
	chance = 55130,
	maxCount = 12
},
{
	id = "chain helmet",
	chance = 10639
},
{
	id = "chain armor",
	chance = 10270
},
{
	id = "lamp",
	chance = 8135
},
{
	id = "halberd",
	chance = 7013
},
{
	id = "battle axe",
	chance = 5934
},
{
	id = "ham",
	chance = 4955
},
{
	id = "health potion",
	chance = 950
},
{
	id = "red piece of cloth",
	chance = 504
},
{
	id = "beastslayer axe",
	chance = 350
},
{
	id = "shard",
	chance = 317
},
{
	id = "fur boots",
	chance = 86
}
}

monster.attacks = {
{
	name = "melee",
	interval = 2 * 1000,
	attack = 240,
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
			speed = 240,
			duration = 5 * 1000,
			effect = CONST_ME_MAGIC_RED
		},
}

monster.elements = {
{
	type = COMBAT_PHYSICALDAMAGE,
	percent = 10
},
{
	type = COMBAT_ENERGYDAMAGE,
	percent = 10
},
{
	type = COMBAT_EARTHDAMAGE,
	percent = -5
},
{
	type = COMBAT_ICEDAMAGE,
	percent = 50
},
{
	type = COMBAT_HOLYDAMAGE,
	percent = 20
},
{
	type = COMBAT_DEATHDAMAGE,
	percent = -10
}
}

mType:register(monster)
