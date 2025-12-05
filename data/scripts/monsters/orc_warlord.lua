local mType = Game.createMonsterType("Orc Warlord")
local monster = {}
monster.description = "an orc warlord"
monster.experience = 670
monster.outfit = {lookType = 2}

monster.health = 950
monster.maxHealth = monster.health
monster.race = "blood"
monster.corpse = 6008
monster.speed = 234

monster.changeTarget = {interval = 4 * 1000, chance = 10}

monster.flags = {
	summonable = false,
	attackable = true,
	hostile = true,
	illusionable = false,
	convinceable = false,
	pushable = false,
	canpushitems = true,
	canpushcreatures = true,
	targetDistance = 1,
	staticAttackChance = 90,
	canwalkonenergy = false,
	canwalkonpoison = false
}

monster.voices = {
	interval = 5000,
	chance = 10,
	{text = "Ranat Ulderek!", yell = false},
	{text = "Orc buta bana!", yell = false},
	{text = "Ikem rambo zambo!", yell = false},
	{text = "Futchi maruk buta!", yell = false},
}

monster.loot = {
{
	id = "broken helmet",
	chance = 25259
},
{
	id = "orc leather",
	chance = 20351
},
{
	id = "gold coin",
	chance = 18998,
	maxCount = 45
},
{
	id = "throwing star",
	chance = 14658,
	maxCount = 18
},
{
	id = "fish",
	chance = 10484,
	maxCount = 2
},
{
	id = "orc tooth",
	chance = 10033
},
{
	id = "plate armor",
	chance = 5526
},
{
	id = "orcish axe",
	chance = 5426
},
{
	id = "skull belt",
	chance = 4958
},
{
	id = "spear",
	chance = 4825
},
{
	id = "plate legs",
	chance = 3907
},
{
	id = "scimitar",
	chance = 2972
},
{
	id = "two handed sword",
	chance = 1953
},
{
	id = "protection amulet",
	chance = 1853
},
{
	id = "dark helmet",
	chance = 1285
},
{
	id = "brass armor",
	chance = 935
},
{
	id = "health potion",
	chance = 384
},
{
	id = "crusader helmet",
	chance = 301
},
{
	id = "dragon hammer",
	chance = 234
},
{
	id = "magma boots",
	chance = 184
},
{
	id = "orc trophy",
	chance = 134
},
{
	id = "stealth ring",
	chance = 117
}
}

monster.attacks = {
{
	name = "melee",
	interval = 2 * 1000,
	attack = 250,
	skill = 70,
	effect = CONST_ME_DRAWBLOOD
},
{
	name = "combat",
	interval = 2 * 1000,
	chance = 20,
	minDamage = 0,
	maxDamage = -200,
	range = 7,
	type = COMBAT_PHYSICALDAMAGE,
	shootEffect = CONST_ANI_THROWINGSTAR
}
}

monster.defenses = {
	defense = 28,
	armor = 28,
	{
			name = "invisible",
			interval = 2 * 1000,
			chance = 5,
			effect = CONST_ME_MAGIC_BLUE
		},
}

monster.elements = {
{
	type = COMBAT_FIREDAMAGE,
	percent = 80
},
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
