local mType = Game.createMonsterType("Orc Berserker")
local monster = {}
monster.description = "an orc berserker"
monster.experience = 195
monster.outfit = {lookType = 8}

monster.health = 210
monster.maxHealth = monster.health
monster.race = "blood"
monster.corpse = 5980
monster.speed = 250

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
	{text = "KRAK ORRRRRRK!", yell = true},
}

monster.loot = {
{
	id = "gold coin",
	chance = 54944,
	maxCount = 25
},
{
	id = "orcish gear",
	chance = 10397
},
{
	id = "ham",
	chance = 9754
},
{
	id = "halberd",
	chance = 6943
},
{
	id = "battle axe",
	chance = 5740
},
{
	id = "hunting spear",
	chance = 4968
},
{
	id = "orc leather",
	chance = 4144
},
{
	id = "orc tooth",
	chance = 2763
},
{
	id = "chain armor",
	chance = 982
},
{
	id = "lamp",
	chance = 840
}
}

monster.attacks = {
{
	name = "melee",
	interval = 2 * 1000,
	attack = 200,
	skill = 70,
	effect = CONST_ME_DRAWBLOOD
}
}

monster.defenses = {
	defense = 12,
	armor = 12,
	{
			name = "speed",
			interval = 2 * 1000,
			chance = 15,
			speed = 290,
			duration = 6 * 1000,
			effect = CONST_ME_MAGIC_RED
		},
}

monster.elements = {
{
	type = COMBAT_ENERGYDAMAGE,
	percent = 15
},
{
	type = COMBAT_EARTHDAMAGE,
	percent = -10
},
{
	type = COMBAT_HOLYDAMAGE,
	percent = 10
},
{
	type = COMBAT_DEATHDAMAGE,
	percent = -10
}
}

mType:register(monster)
