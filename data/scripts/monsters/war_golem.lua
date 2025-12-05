local mType = Game.createMonsterType("War Golem")
local monster = {}
monster.description = "a war golem"
monster.experience = 2750
monster.outfit = {lookType = 326}

monster.health = 4300
monster.maxHealth = monster.health
monster.race = "energy"
monster.corpse = 10005
monster.speed = 240

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
	staticAttackChance = 90
}

monster.voices = {
	interval = 2500,
	chance = 10,
	{text = "Azerus barada nikto!", yell = false},
	{text = "Klonk klonk klonk", yell = false},
	{text = "Engaging Enemy!", yell = false},
	{text = "Threat level processed.", yell = false},
	{text = "Charging weapon systems!", yell = false},
	{text = "Auto repair in progress.", yell = false},
	{text = "The battle is joined!", yell = false},
	{text = "Termination initialized!", yell = false},
	{text = "Rrrtttarrrttarrrtta", yell = false},
}

monster.loot = {
{
	id = "gold coin",
	chance = 37500,
	maxCount = 90
},
{
	id = "gold coin",
	chance = 37500,
	maxCount = 80
},
{
	id = "life crystal",
	chance = 1000
},
{
	id = "club ring",
	chance = 810
},
{
	id = "dwarven ring",
	chance = 1210
},
{
	id = "two handed sword",
	chance = 5500
},
{
	id = "morning star",
	chance = 7000
},
{
	id = "epee",
	chance = 6400
},
{
	id = "plate shield",
	chance = 9000
},
{
	id = "battle shield",
	chance = 6500
},
{
	id = "steel boots",
	chance = 620
},
{
	id = "iron ore",
	chance = 1920
},
{
	id = "berserker",
	chance = 50
},
{
	id = "jade hammer",
	chance = 120
},
{
	id = "bonebreaker",
	chance = 770
},
{
	id = "berserk potion",
	chance = 900
},
{
	id = "great mana potion",
	chance = 8860
},
{
	id = "lightning boots",
	chance = 90
},
{
	id = "nail",
	chance = 5260,
	maxCount = 5
},
{
	id = "ultimate health potion",
	chance = 10080
},
{
	id = 9809,
	chance = 260
},
{
	id = 9978,
	chance = 1080
},
{
	id = "crystal of power",
	chance = 130
}
}

monster.attacks = {
{
	name = "melee",
	interval = 2 * 1000,
	attack = 550,
	skill = 70,
	effect = CONST_ME_DRAWBLOOD
},
{
	name = "combat",
	interval = 2 * 1000,
	chance = 15,
	minDamage = -165,
	maxDamage = -220,
	range = 7,
	type = COMBAT_ENERGYDAMAGE,
	shootEffect = CONST_ANI_ENERGY
},
{
	name = "outfit",
	interval = 2 * 1000,
	chance = 1,
	range = 7,
	duration = 3 * 1000
}
}

monster.defenses = {
	defense = 40,
	armor = 40,
	{
			name = "speed",
			interval = 2 * 1000,
			chance = 15,
			speed = 300,
			duration = 5 * 1000,
			effect = CONST_ME_MAGIC_RED
		},
	{
			name = "combat",
			interval = 2 * 1000,
			chance = 15,
			type = COMBAT_HEALING,
			minDamage = 200,
			maxDamage = 250,
			effect = CONST_ME_MAGIC_BLUE
		},
}

monster.elements = {
{
	type = COMBAT_EARTHDAMAGE,
	percent = 50
},
{
	type = COMBAT_HOLYDAMAGE,
	percent = 50
},
{
	type = COMBAT_FIREDAMAGE,
	percent = 15
},
{
	type = COMBAT_ENERGYDAMAGE,
	percent = 5
},
{
	type = COMBAT_PHYSICALDAMAGE,
	percent = 25
},
{
	type = COMBAT_ICEDAMAGE,
	percent = 30
},
{
	type = COMBAT_DEATHDAMAGE,
	percent = 25
}
}

monster.immunities = {
{
	type = "invisible",
	condition = true
},
{
	type = "paralyze",
	condition = true
}
}

mType:register(monster)
