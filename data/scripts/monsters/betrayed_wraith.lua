local mType = Game.createMonsterType("Betrayed Wraith")
local monster = {}
monster.description = "a betrayed wraith"
monster.experience = 3500
monster.outfit = {lookType = 233}

monster.health = 4200
monster.maxHealth = monster.health
monster.race = "undead"
monster.corpse = 6316
monster.speed = 346

monster.changeTarget = {interval = 4 * 1000, chance = 15}

monster.flags = {
	summonable = false,
	attackable = true,
	hostile = true,
	illusionable = true,
	convinceable = false,
	pushable = false,
	canpushitems = true,
	canpushcreatures = true,
	targetDistance = 1,
	staticAttackChance = 90
}

monster.voices = {
	interval = 5000,
	chance = 10,
	{text = "Rrrah!", yell = false},
	{text = "Gnarr!", yell = false},
	{text = "Tcharrr!", yell = false},
}

monster.loot = {
{
	id = "gold coin",
	chance = 100000,
	maxCount = 200
},
{
	id = "platinum coin",
	chance = 100000,
	maxCount = 8
},
{
	id = "flask of demonic blood",
	chance = 65436
},
{
	id = "power bolt",
	chance = 49940,
	maxCount = 15
},
{
	id = "demonic essence",
	chance = 20426
},
{
	id = "unholy bone",
	chance = 19612
},
{
	id = "ultimate health potion",
	chance = 15177
},
{
	id = "great mana potion",
	chance = 14707,
	maxCount = 3
},
{
	id = "small diamond",
	chance = 11835,
	maxCount = 4
},
{
	id = "assassin star",
	chance = 9631,
	maxCount = 5
},
{
	id = "soul orb",
	chance = 9412
},
{
	id = "orichalcum pearl",
	chance = 6374,
	maxCount = 2
},
{
	id = "mercenary sword",
	chance = 1503
},
{
	id = "stealth ring",
	chance = 404
},
{
	id = "skull helmet",
	chance = 377
},
{
	id = "golden figurine",
	chance = 126
},
{
	id = "bloody edge",
	chance = 99
}
}

monster.attacks = {
{
	name = "melee",
	interval = 2 * 1000,
	attack = 450,
	skill = 70,
	effect = CONST_ME_DRAWBLOOD
},
{
	name = "speed",
	interval = 2 * 1000,
	chance = 20,
	range = 7,
	target = true,
	speed = -600,
	duration = 3 * 1000,
	shootEffect = CONST_ANI_SUDDENDEATH,
	effect = CONST_ME_SMALLCLOUDS
}
}

monster.defenses = {
	defense = 42,
	armor = 42,
	{
			name = "combat",
			interval = 2 * 1000,
			chance = 30,
			type = COMBAT_HEALING,
			minDamage = 350,
			maxDamage = 600,
			effect = CONST_ME_MAGIC_BLUE
		},
	{
			name = "invisible",
			interval = 2 * 1000,
			chance = 10,
			effect = CONST_ME_REDSPARK
		},
	{
			name = "speed",
			interval = 2 * 1000,
			chance = 15,
			speed = 460,
			duration = 5 * 1000,
			effect = CONST_ME_MAGIC_RED
		},
}

monster.elements = {
{
	type = COMBAT_ICEDAMAGE,
	percent = 50
},
{
	type = COMBAT_HOLYDAMAGE,
	percent = -20
}
}

monster.immunities = {
{
	type = "death",
	combat = true,
	condition = true
},
{
	type = "fire",
	combat = true,
	condition = true
},
{
	type = "energy",
	combat = true,
	condition = true
},
{
	type = "earth",
	combat = true,
	condition = true
},
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
