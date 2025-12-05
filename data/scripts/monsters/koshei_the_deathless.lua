local mType = Game.createMonsterType("Koshei The Deathless")
local monster = {}
monster.description = "Koshei the Deathless"
monster.experience = 0
monster.outfit = {lookType = 99}

monster.health = 3000
monster.maxHealth = monster.health
monster.race = "undead"
monster.corpse = 6028
monster.speed = 390
monster.maxSummons = 1

monster.changeTarget = {interval = 5 * 1000, chance = 8}

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
	isboss = true
}

monster.summons = {
{
	name = "bonebeast",
	chance = 16,
	interval = 1 * 1000
}
}

monster.voices = {
	interval = 5000,
	chance = 10,
	{text = "Your pain will be beyond imagination!", yell = false},
	{text = "You can't defeat me! I will ressurect and take your soul!", yell = false},
	{text = "Death is my ally!", yell = false},
	{text = "Welcome to my domain, visitor!", yell = false},
	{text = "You will be my toy on the other side!", yell = false},
	{text = "What a disgusting smell of life!", yell = false},
}

monster.loot = {
{
	id = "gold coin",
	chance = 100000,
	maxCount = 100
},
{
	id = "gold coin",
	chance = 80000,
	maxCount = 12
},
{
	id = "stealth ring",
	chance = 888
},
{
	id = "platinum amulet",
	chance = 1666
},
{
	id = 2175,
	chance = 10000
},
{
	id = "gold ring",
	chance = 900
},
{
	id = 2237,
	chance = 10000
},
{
	id = 2401,
	chance = 10000
},
{
	id = "castle shield",
	chance = 588
},
{
	id = "blue robe",
	chance = 709
},
{
	id = "lich staff",
	chance = 1000
},
{
	id = "lightning boots",
	chance = 688
}
}

monster.attacks = {
{
	name = "melee",
	interval = 2 * 1000,
	attack = 170,
	skill = 70,
	effect = CONST_ME_DRAWBLOOD
},
{
	name = "combat",
	interval = 3 * 1000,
	chance = 9,
	minDamage = -60,
	maxDamage = -250,
	range = 1,
	type = COMBAT_LIFEDRAIN,
	effect = CONST_ME_MAGIC_BLUE
},
{
	name = "combat",
	interval = 1 * 1000,
	chance = 11,
	minDamage = -70,
	maxDamage = -135,
	radius = 3,
	target = false,
	type = COMBAT_LIFEDRAIN,
	effect = CONST_ME_MAGIC_RED
},
{
	name = "combat",
	interval = 2 * 1000,
	chance = 9,
	minDamage = -50,
	maxDamage = -140,
	length = 8,
	spread = 0,
	type = COMBAT_DEATHDAMAGE,
	effect = CONST_ME_MORTAREA
},
{
	name = "combat",
	type = COMBAT_DEATHDAMAGE,
	conditionType = CONDITION_CURSED,
	conditionMinDamage = -54,
	conditionMaxDamage = -54,
	conditionTickInterval = 2000,
	interval = 3 * 1000,
	chance = 15,
	range = 1
},
{
	name = "speed",
	interval = 2 * 1000,
	chance = 15,
	range = 7,
	speed = -900,
	duration = 30 * 1000,
	effect = CONST_ME_MAGIC_RED
}
}

monster.defenses = {
	defense = 20,
	armor = 20,
	{
			name = "combat",
			interval = 1 * 1000,
			chance = 30,
			type = COMBAT_HEALING,
			minDamage = 150,
			maxDamage = 300,
			effect = CONST_ME_MAGIC_BLUE
		},
}

monster.elements = {
{
	type = COMBAT_ENERGYDAMAGE,
	percent = 80
},
{
	type = COMBAT_HOLYDAMAGE,
	percent = -15
},
{
	type = COMBAT_FIREDAMAGE,
	percent = -10
}
}

monster.immunities = {
{
	type = "death",
	combat = true,
	condition = true
},
{
	type = "earth",
	combat = true,
	condition = true
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
