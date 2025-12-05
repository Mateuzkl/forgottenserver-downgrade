local mType = Game.createMonsterType("Dark Magician")
local monster = {}
monster.description = "a dark magician"
monster.experience = 185
monster.outfit = {lookType = 133}

monster.health = 325
monster.maxHealth = monster.health
monster.race = "blood"
monster.corpse = 20367
monster.speed = 210

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
	targetDistance = 4,
	staticAttackChance = 90,
	canwalkonenergy = false,
	canwalkonfire = false,
	canwalkonpoison = false
}

monster.voices = {
	interval = 5000,
	chance = 10,
	{text = "Feel the power of my runes!", yell = false},
	{text = "Killing you is getting expensive!", yell = false},
	{text = "My secrets are mine alone!", yell = false},
	{text = "Stand Still!", yell = false},
}

monster.loot = {
{
	id = "gold coin",
	chance = 75100,
	maxCount = 55
},
{
	id = "wand of decay",
	chance = 280
},
{
	id = "blank rune",
	chance = 10000
},
{
	id = "strong health potion",
	chance = 3000
},
{
	id = "strong mana potion",
	chance = 2860
},
{
	id = "health potion",
	chance = 12000
},
{
	id = "mana potion",
	chance = 11900
},
{
	id = "small enchanted emerald",
	chance = 510
}
}

monster.attacks = {
{
	name = "melee",
	interval = 2 * 1000,
	attack = 40,
	skill = 70,
	effect = CONST_ME_DRAWBLOOD
},
{
	name = "combat",
	interval = 2 * 1000,
	chance = 20,
	minDamage = -5,
	maxDamage = -40,
	range = 7,
	type = COMBAT_FIREDAMAGE,
	shootEffect = CONST_ANI_FIRE
},
{
	name = "combat",
	interval = 2 * 1000,
	chance = 15,
	minDamage = -20,
	maxDamage = -30,
	range = 7,
	type = COMBAT_ENERGYDAMAGE,
	shootEffect = CONST_ANI_ENERGY
}
}

monster.defenses = {
	defense = 15,
	armor = 15,
	{
			name = "combat",
			interval = 2 * 1000,
			chance = 20,
			type = COMBAT_HEALING,
			minDamage = 60,
			maxDamage = 80,
			effect = CONST_ME_MAGIC_GREEN
		},
	{
			name = "invisible",
			interval = 2 * 1000,
			chance = 10,
			effect = CONST_ME_MAGIC_BLUE
		},
}

monster.elements = {
{
	type = COMBAT_FIREDAMAGE,
	percent = 10
},
{
	type = COMBAT_EARTHDAMAGE,
	percent = 20
},
{
	type = COMBAT_ENERGYDAMAGE,
	percent = 20
},
{
	type = COMBAT_ICEDAMAGE,
	percent = 10
},
{
	type = COMBAT_HOLYDAMAGE,
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
