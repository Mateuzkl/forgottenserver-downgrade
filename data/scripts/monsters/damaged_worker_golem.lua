local mType = Game.createMonsterType("Damaged Worker Golem")
local monster = {}
monster.description = "a damaged worker golem"
monster.experience = 95
monster.outfit = {lookType = 304}

monster.health = 260
monster.maxHealth = monster.health
monster.race = "energy"
monster.corpse = 9801
monster.speed = 200

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
	canwalkonfire = false
}

monster.voices = {
	interval = 5000,
	chance = 10,
	{text = "Klonk klonk klonk", yell = false},
	{text = "Failure! Failure!", yell = false},
	{text = "Good morning citizen. How may I serve you?", yell = false},
	{text = "Target identified: Rat! Termination initiated!", yell = false},
	{text = "Rrrtttarrrttarrrtta", yell = false},
	{text = "Danger will...chrrr! Danger!", yell = false},
	{text = "Self-diagnosis failed.", yell = false},
	{text = "Aw... chhhrrr orders.", yell = false},
}

monster.loot = {
{
	id = "gold coin",
	chance = 68810,
	maxCount = 88
},
{
	id = "sword ring",
	chance = 570
},
{
	id = "iron ore",
	chance = 400
},
{
	id = "nail",
	chance = 1460
},
{
	id = 9808,
	chance = 790
},
{
	id = "gear crystal",
	chance = 200
}
}

monster.attacks = {
{
	name = "melee",
	interval = 2 * 1000,
	attack = 45,
	skill = 70,
	effect = CONST_ME_DRAWBLOOD
},
{
	name = "combat",
	interval = 2 * 1000,
	chance = 15,
	minDamage = 0,
	maxDamage = -45,
	range = 7,
	type = COMBAT_PHYSICALDAMAGE,
	shootEffect = CONST_ANI_SMALLSTONE
}
}

monster.defenses = {
	defense = 25,
	armor = 25,
	{
			name = "combat",
			interval = 2 * 1000,
			chance = 10,
			type = COMBAT_HEALING,
			minDamage = 5,
			maxDamage = 11,
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
	percent = -10
},
{
	type = COMBAT_ENERGYDAMAGE,
	percent = -5
},
{
	type = COMBAT_PHYSICALDAMAGE,
	percent = 25
},
{
	type = COMBAT_ICEDAMAGE,
	percent = 10
},
{
	type = COMBAT_DEATHDAMAGE,
	percent = 10
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
