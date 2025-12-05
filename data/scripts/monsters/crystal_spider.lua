local mType = Game.createMonsterType("Crystal Spider")
local monster = {}
monster.description = "a crystal spider"
monster.experience = 900
monster.outfit = {lookType = 263}

monster.health = 1250
monster.maxHealth = monster.health
monster.race = "undead"
monster.corpse = 7344
monster.speed = 230

monster.changeTarget = {interval = 4 * 1000, chance = 15}

monster.flags = {
	summonable = false,
	attackable = true,
	hostile = true,
	illusionable = true,
	convinceable = false,
	pushable = false,
	canpushitems = true,
	staticAttackChance = 80,
	targetDistance = 1,
	canwalkonenergy = false
}

monster.voices = {
	interval = 5000,
	chance = 10,
	{text = "Screeech!", yell = false},
}

monster.loot = {
{
	id = "gold coin",
	chance = 100000,
	maxCount = 197
},
{
	id = "strong mana potion",
	chance = 14973
},
{
	id = "plate armor",
	chance = 9929
},
{
	id = "sniper arrow",
	chance = 5874,
	maxCount = 6
},
{
	id = "steel helmet",
	chance = 5164
},
{
	id = "ice cube",
	chance = 4906
},
{
	id = "crystal sword",
	chance = 2517
},
{
	id = "spider silk",
	chance = 1983
},
{
	id = "crystal necklace",
	chance = 1640
},
{
	id = "crystal ring",
	chance = 1587
},
{
	id = "time ring",
	chance = 1485
},
{
	id = "knight legs",
	chance = 747
},
{
	id = "shard",
	chance = 717
},
{
	id = "glacier amulet",
	chance = 664
},
{
	id = "knight armor",
	chance = 559
},
{
	id = "sapphire hammer",
	chance = 142
},
{
	id = "platinum amulet",
	chance = 123
},
{
	id = "jewelled backpack",
	chance = 83
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
	name = "speed",
	interval = 2 * 1000,
	chance = 15,
	range = 7,
	radius = 6,
	target = false,
	speed = -800,
	duration = 15 * 1000,
	effect = CONST_ME_POFF
},
{
	name = "combat",
	interval = 2 * 1000,
	chance = 15,
	minDamage = -50,
	maxDamage = -100,
	range = 7,
	target = true,
	type = COMBAT_ICEDAMAGE,
	shootEffect = CONST_ANI_ICE,
	effect = CONST_ME_ICEAREA
},
{
	name = "speed",
	interval = 2 * 1000,
	chance = 20,
	range = 7,
	target = true,
	speed = -600,
	duration = 10 * 1000,
	shootEffect = CONST_ANI_SNOWBALL
}
}

monster.defenses = {
	defense = 43,
	armor = 43,
	{
			name = "speed",
			interval = 2 * 1000,
			chance = 15,
			speed = 250,
			duration = 5 * 1000,
			effect = CONST_ME_MAGIC_RED
		},
}

monster.elements = {
{
	type = COMBAT_EARTHDAMAGE,
	percent = 20
},
{
	type = COMBAT_ENERGYDAMAGE,
	percent = -20
}
}

monster.immunities = {
{
	type = "fire",
	combat = true,
	condition = true
},
{
	type = "ice",
	combat = true,
	condition = true
},
{
	type = "paralyze",
	condition = true
},
{
	type = "outfit",
	condition = true
},
{
	type = "drunk",
	condition = true
},
{
	type = "invisible",
	condition = true
}
}

mType:register(monster)
