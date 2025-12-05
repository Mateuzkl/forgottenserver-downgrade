local mType = Game.createMonsterType("Hellgorak")
local monster = {}
monster.description = "Hellgorak"
monster.experience = 10000
monster.outfit = {lookType = 12}

monster.health = 25850
monster.maxHealth = monster.health
monster.race = "fire"
monster.corpse = 6068
monster.speed = 330

monster.changeTarget = {interval = 5 * 1000, chance = 28}

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
	staticAttackChance = 85,
	isboss = true
}

monster.voices = {
	interval = 5000,
	chance = 10,
	{text = "I'll sacrifice yours souls to seven!", yell = false},
	{text = "I'm bad news for you mortals!", yell = false},
	{text = "No man can defeat me!", yell = false},
	{text = "Your puny skills are no match for me.", yell = false},
	{text = "I smell your fear.", yell = false},
	{text = "Delicious!", yell = false},
}

monster.loot = {
{
	id = "demonic essence",
	chance = 100000
},
{
	id = "gold coin",
	chance = 100000,
	maxCount = 198
},
{
	id = "slightly rusted legs",
	chance = 51393
},
{
	id = "ultimate health potion",
	chance = 42605,
	maxCount = 2
},
{
	id = "slightly rusted armor",
	chance = 32476
},
{
	id = "spellbook of warding",
	chance = 30493
},
{
	id = "beastslayer axe",
	chance = 29957
},
{
	id = "great spirit potion",
	chance = 21115
},
{
	id = "platinum coin",
	chance = 20579,
	maxCount = 30
},
{
	id = "crown armor",
	chance = 18435
},
{
	id = "great health potion",
	chance = 18274
},
{
	id = "great mana potion",
	chance = 17899
},
{
	id = "crystal necklace",
	chance = 14362
},
{
	id = "black pearl",
	chance = 14148,
	maxCount = 25
},
{
	id = "small ruby",
	chance = 13130,
	maxCount = 25
},
{
	id = "white pearl",
	chance = 13076,
	maxCount = 25
},
{
	id = "small diamond",
	chance = 12808,
	maxCount = 25
},
{
	id = "noble axe",
	chance = 12165
},
{
	id = "small amethyst",
	chance = 12004,
	maxCount = 25
},
{
	id = "small emerald",
	chance = 11790,
	maxCount = 25
},
{
	id = "small sapphire",
	chance = 11576,
	maxCount = 25
},
{
	id = "small topaz",
	chance = 11415,
	maxCount = 25
},
{
	id = "magma legs",
	chance = 11093
},
{
	id = "spirit cloak",
	chance = 10343
},
{
	id = "ruby necklace",
	chance = 10129
},
{
	id = "spellbook of mind control",
	chance = 10021
},
{
	id = "crown legs",
	chance = 9914
},
{
	id = "stone skin amulet",
	chance = 9753
},
{
	id = "golden amulet",
	chance = 9700
},
{
	id = "demon horn",
	chance = 9539,
	maxCount = 2
},
{
	id = "steel boots",
	chance = 9539
},
{
	id = "focus cape",
	chance = 9486
},
{
	id = "spellbook of lost souls",
	chance = 8896
},
{
	id = "knight legs",
	chance = 8789
},
{
	id = "blue robe",
	chance = 8039
},
{
	id = "butcher's axe",
	chance = 2304
},
{
	id = "golden armor",
	chance = 2036
},
{
	id = "vile axe",
	chance = 1179
},
{
	id = "spellscroll of prophecies",
	chance = 1018
},
{
	id = "executioner",
	chance = 804
},
{
	id = "golden legs",
	chance = 643
},
{
	id = "demonbone amulet",
	chance = 589
},
{
	id = "voltage armor",
	chance = 375
},
{
	id = "demonwing axe",
	chance = 322
},
{
	id = "great axe",
	chance = 268
},
{
	id = "spellbook of dark mysteries",
	chance = 161
}
}

monster.attacks = {
{
	name = "melee",
	interval = 2 * 1000,
	attack = 910,
	skill = 70,
	effect = CONST_ME_DRAWBLOOD
},
{
	name = "combat",
	interval = 1 * 1000,
	chance = 11,
	minDamage = -250,
	maxDamage = -850,
	length = 8,
	spread = 0,
	type = COMBAT_ENERGYDAMAGE,
	effect = CONST_ME_PURPLEENERGY
},
{
	name = "combat",
	interval = 2 * 1000,
	chance = 14,
	minDamage = -200,
	maxDamage = -400,
	radius = 5,
	target = false,
	type = COMBAT_MANADRAIN,
	effect = CONST_ME_STUN
},
{
	name = "combat",
	interval = 1 * 1000,
	chance = 11,
	minDamage = -50,
	maxDamage = -600,
	range = 7,
	radius = 5,
	target = true,
	type = COMBAT_FIREDAMAGE,
	effect = CONST_ME_FIREAREA
},
{
	name = "combat",
	interval = 2 * 1000,
	chance = 5,
	minDamage = 0,
	maxDamage = -150,
	radius = 7,
	target = false,
	type = COMBAT_LIFEDRAIN,
	effect = CONST_ME_POFF
}
}

monster.defenses = {
	defense = 65,
	armor = 70,
	{
			name = "combat",
			interval = 2 * 1000,
			chance = 22,
			type = COMBAT_HEALING,
			minDamage = 400,
			maxDamage = 1700,
			effect = CONST_ME_MAGIC_GREEN
		},
}

monster.elements = {
{
	type = COMBAT_PHYSICALDAMAGE,
	percent = 98
},
{
	type = COMBAT_ENERGYDAMAGE,
	percent = 98
},
{
	type = COMBAT_EARTHDAMAGE,
	percent = 98
},
{
	type = COMBAT_FIREDAMAGE,
	percent = 98
},
{
	type = COMBAT_ICEDAMAGE,
	percent = 98
},
{
	type = COMBAT_HOLYDAMAGE,
	percent = 95
},
{
	type = COMBAT_DEATHDAMAGE,
	percent = 98
}
}

monster.immunities = {
{
	type = "lifedrain",
	combat = true
},
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
