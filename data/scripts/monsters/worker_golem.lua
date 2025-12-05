local mType = Game.createMonsterType("Worker Golem")
local monster = {}
monster.description = "a worker golem"
monster.experience = 1250
monster.outfit = {lookType = 304}

monster.health = 1470
monster.maxHealth = monster.health
monster.race = "energy"
monster.corpse = 9801
monster.speed = 160

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
	staticAttackChance = 70,
	canwalkonenergy = false,
	canwalkonfire = false
}

monster.voices = {
	interval = 5000,
	chance = 10,
	{text = "INTRUDER ALARM!", yell = false},
	{text = "klonk klonk klonk", yell = false},
	{text = "Rrrtttarrrttarrrtta", yell = false},
	{text = "Awaiting orders.", yell = false},
	{text = "Secret objective complete.", yell = false},
}

monster.loot = {
{
	id = "gold coin",
	chance = 93817,
	maxCount = 139
},
{
	id = "nail",
	chance = 4809,
	maxCount = 5
},
{
	id = "gear crystal",
	chance = 2169
},
{
	id = "great health potion",
	chance = 1974
},
{
	id = "great mana potion",
	chance = 1574
},
{
	id = "plate armor",
	chance = 1559
},
{
	id = "gear wheel",
	chance = 1066
},
{
	id = "life crystal",
	chance = 1010
},
{
	id = "war hammer",
	chance = 990
},
{
	id = "small diamond",
	chance = 974,
	maxCount = 2
},
{
	id = "plate legs",
	chance = 928
},
{
	id = "spiked squelcher",
	chance = 913
},
{
	id = "iron ore",
	chance = 872
},
{
	id = "great spirit potion",
	chance = 820
},
{
	id = "berserk potion",
	chance = 784
},
{
	id = "might ring",
	chance = 502
},
{
	id = "crystal pedestal",
	chance = 159
},
{
	id = "bonebreaker",
	chance = 113
}
}

monster.attacks = {
{
	name = "melee",
	interval = 2 * 1000,
	attack = 240,
	skill = 70,
	effect = CONST_ME_DRAWBLOOD
},
{
	name = "combat",
	interval = 2 * 1000,
	chance = 15,
	minDamage = 0,
	maxDamage = -125,
	range = 7,
	type = COMBAT_PHYSICALDAMAGE,
	shootEffect = CONST_ANI_SMALLSTONE
}
}

monster.defenses = {
	defense = 35,
	armor = 35,
	{
			name = "combat",
			interval = 2 * 1000,
			chance = 10,
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
	type = COMBAT_ENERGYDAMAGE,
	percent = -5
},
{
	type = COMBAT_PHYSICALDAMAGE,
	percent = 10
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
