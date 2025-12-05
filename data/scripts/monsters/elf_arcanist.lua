local mType = Game.createMonsterType("Elf Arcanist")
local monster = {}
monster.description = "an elf arcanist"
monster.experience = 175
monster.outfit = {lookType = 63}

monster.health = 220
monster.maxHealth = monster.health
monster.race = "blood"
monster.corpse = 6011
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
	canpushcreatures = false,
	targetDistance = 4,
	staticAttackChance = 90,
	canwalkonenergy = false,
	canwalkonfire = false,
	canwalkonpoison = false
}

monster.voices = {
	interval = 5000,
	chance = 10,
	{text = "Feel my wrath!", yell = false},
	{text = "For the Daughter of the Stars!", yell = false},
	{text = "I'll bring balance upon you!", yell = false},
	{text = "Tha'shi Cenath!", yell = false},
	{text = "Vihil Ealuel!", yell = false},
}

monster.loot = {
{
	id = "gold coin",
	chance = 37127,
	maxCount = 49
},
{
	id = "scroll",
	chance = 30500
},
{
	id = "melon",
	chance = 21814
},
{
	id = "blank rune",
	chance = 17953
},
{
	id = "bread",
	chance = 13899
},
{
	id = "elvish talisman",
	chance = 10070
},
{
	id = "elven astral observer",
	chance = 7786
},
{
	id = "green tunic",
	chance = 7294
},
{
	id = "arrow",
	chance = 6127,
	maxCount = 3
},
{
	id = "sling herb",
	chance = 4846
},
{
	id = "health potion",
	chance = 4050
},
{
	id = "strong mana potion",
	chance = 2991
},
{
	id = "candlestick",
	chance = 2192
},
{
	id = "elven amulet",
	chance = 2047
},
{
	id = "holy orchid",
	chance = 2047
},
{
	id = "wand of cosmic energy",
	chance = 1126
},
{
	id = "life crystal",
	chance = 1059
},
{
	id = "sandals",
	chance = 974
},
{
	id = "inkwell",
	chance = 951
},
{
	id = "grave flower",
	chance = 803
},
{
	id = "yellow gem",
	chance = 48
}
}

monster.attacks = {
{
	name = "melee",
	interval = 2 * 1000,
	attack = 35,
	skill = 70,
	effect = CONST_ME_DRAWBLOOD
},
{
	name = "combat",
	interval = 2 * 1000,
	chance = 10,
	minDamage = 0,
	maxDamage = -70,
	range = 7,
	type = COMBAT_PHYSICALDAMAGE,
	shootEffect = CONST_ANI_ARROW
},
{
	name = "combat",
	interval = 2 * 1000,
	chance = 10,
	minDamage = -30,
	maxDamage = -50,
	range = 7,
	type = COMBAT_ENERGYDAMAGE,
	shootEffect = CONST_ANI_ENERGY,
	effect = CONST_ANI_ENERGY
},
{
	name = "combat",
	interval = 2 * 1000,
	chance = 10,
	minDamage = -70,
	maxDamage = -85,
	range = 7,
	type = COMBAT_DEATHDAMAGE,
	shootEffect = CONST_ANI_SUDDENDEATH,
	effect = CONST_ME_MORTAREA
}
}

monster.defenses = {
	defense = 15,
	armor = 15,
	{
			name = "combat",
			interval = 2 * 1000,
			chance = 15,
			type = COMBAT_HEALING,
			minDamage = 40,
			maxDamage = 60,
			effect = CONST_ME_MAGIC_BLUE
		},
}

monster.elements = {
{
	type = COMBAT_FIREDAMAGE,
	percent = 50
},
{
	type = COMBAT_ENERGYDAMAGE,
	percent = 20
},
{
	type = COMBAT_DEATHDAMAGE,
	percent = 20
},
{
	type = COMBAT_HOLYDAMAGE,
	percent = -10
}
}

monster.immunities = {
{
	type = "invisible",
	condition = true
}
}

mType:register(monster)
