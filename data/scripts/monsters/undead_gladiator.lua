local mType = Game.createMonsterType("Undead Gladiator")
local monster = {}
monster.description = "an undead gladiator"
monster.experience = 800
monster.outfit = {lookType = 306}

monster.health = 1000
monster.maxHealth = monster.health
monster.race = "undead"
monster.corpse = 9823
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
	canpushcreatures = true,
	targetDistance = 1,
	staticAttackChance = 90,
	canwalkonenergy = false,
	canwalkonpoison = false
}

monster.voices = {
	interval = 5000,
	chance = 10,
	{text = "Let's battle it out in a duel!", yell = false},
	{text = "Bring it!", yell = false},
	{text = "I'll fight here in eternity and beyond.", yell = false},
	{text = "I will not give up!", yell = false},
	{text = "Another foolish adventurer who tries to beat me.", yell = false},
}

monster.loot = {
{
	id = "gold coin",
	chance = 95314,
	maxCount = 149
},
{
	id = "throwing star",
	chance = 14874,
	maxCount = 18
},
{
	id = "scimitar",
	chance = 10743
},
{
	id = "belted cape",
	chance = 5209
},
{
	id = "broken gladiator shield",
	chance = 5201
},
{
	id = "brass legs",
	chance = 4923
},
{
	id = "brass armor",
	chance = 4820
},
{
	id = "hunting spear",
	chance = 4519
},
{
	id = "plate legs",
	chance = 2268
},
{
	id = "plate armor",
	chance = 2244
},
{
	id = "two handed sword",
	chance = 1982
},
{
	id = "protection amulet",
	chance = 1927
},
{
	id = "dark helmet",
	chance = 1395
},
{
	id = "health potion",
	chance = 404
},
{
	id = "knight axe",
	chance = 246
},
{
	id = "crusader helmet",
	chance = 182
},
{
	id = "flask of warrior's sweat",
	chance = 166
},
{
	id = "stealth ring",
	chance = 48
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
	maxDamage = -135,
	range = 7,
	type = COMBAT_PHYSICALDAMAGE,
	shootEffect = CONST_ANI_WHIRLWINDSWORD
}
}

monster.defenses = {
	defense = 35,
	armor = 35,
	{
			name = "invisible",
			interval = 2 * 1000,
			chance = 15,
			effect = CONST_ME_MAGIC_BLUE
		},
}

monster.elements = {
{
	type = COMBAT_EARTHDAMAGE,
	percent = -10
},
{
	type = COMBAT_HOLYDAMAGE,
	percent = 10
},
{
	type = COMBAT_FIREDAMAGE,
	percent = 80
},
{
	type = COMBAT_ENERGYDAMAGE,
	percent = 20
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
