local mType = Game.createMonsterType("Necromancer")
local monster = {}
monster.description = "a necromancer"
monster.experience = 580
monster.outfit = {lookType = 9}

monster.health = 580
monster.maxHealth = monster.health
monster.race = "blood"
monster.corpse = 20455
monster.speed = 188
monster.maxSummons = 2

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
	canwalkonfire = false
}

monster.summons = {
{
	name = "Ghoul",
	chance = 15,
	interval = 2 * 1000
},
{
	name = "Ghost",
	chance = 5,
	interval = 2 * 1000
},
{
	name = "Mummy",
	chance = 5,
	interval = 2 * 1000
}
}

monster.voices = {
	interval = 5000,
	chance = 10,
	{text = "Your corpse will be mine!", yell = false},
	{text = "Taste the sweetness of death!", yell = false},
}

monster.loot = {
{
	id = "gold coin",
	chance = 30050,
	maxCount = 90
},
{
	id = "poison arrow",
	chance = 15000,
	maxCount = 5
},
{
	id = "book of necromantic rituals",
	chance = 10130
},
{
	id = "green mushroom",
	chance = 1470
},
{
	id = "necromantic robe",
	chance = 1001
},
{
	id = "mystic turban",
	chance = 500
},
{
	id = "clerical mace",
	chance = 390
},
{
	id = "strong mana potion",
	chance = 300
},
{
	id = "boots of haste",
	chance = 210
},
{
	id = "spellbook of warding",
	chance = 130
},
{
	id = "skull staff",
	chance = 100
},
{
	id = "noble axe",
	chance = 10
}
}

monster.attacks = {
{
	name = "melee",
	interval = 2 * 1000,
	attack = 80,
	skill = 70,
	effect = CONST_ME_DRAWBLOOD
},
{
	name = "combat",
	interval = 2 * 1000,
	chance = 20,
	minDamage = -60,
	maxDamage = -120,
	range = 1,
	target = true,
	type = COMBAT_DEATHDAMAGE,
	shootEffect = CONST_ANI_DEATH,
	effect = CONST_ME_SMALLCLOUDS
},
{
	name = "combat",
	interval = 2 * 1000,
	chance = 20,
	minDamage = -65,
	maxDamage = -120,
	range = 7,
	type = COMBAT_EARTHDAMAGE,
	shootEffect = CONST_ANI_POISON,
	effect = CONST_ME_POISON
}
}

monster.defenses = {
	defense = 50,
	armor = 50,
	{
			name = "combat",
			interval = 2 * 1000,
			chance = 25,
			type = COMBAT_HEALING,
			minDamage = 50,
			maxDamage = 80,
			effect = CONST_ME_MAGIC_BLUE
		},
}

monster.elements = {
{
	type = COMBAT_ICEDAMAGE,
	percent = 10
},
{
	type = COMBAT_ENERGYDAMAGE,
	percent = 20
},
{
	type = COMBAT_DEATHDAMAGE,
	percent = 50
},
{
	type = COMBAT_PHYSICALDAMAGE,
	percent = -5
},
{
	type = COMBAT_FIREDAMAGE,
	percent = -5
},
{
	type = COMBAT_HOLYDAMAGE,
	percent = -5
}
}

monster.immunities = {
{
	type = "invisible",
	condition = true
},
{
	type = "earth",
	combat = true,
	condition = true
},
{
	type = "drown",
	condition = true
}
}

mType:register(monster)
