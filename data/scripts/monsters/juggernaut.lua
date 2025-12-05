local mType = Game.createMonsterType("Juggernaut")
local monster = {}
monster.description = "a juggernaut"
monster.experience = 11200
monster.outfit = {lookType = 244}

monster.health = 20000
monster.maxHealth = monster.health
monster.race = "blood"
monster.corpse = 6336
monster.speed = 340

monster.changeTarget = {interval = 4 * 1000, chance = 10}

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
	staticAttackChance = 60,
	canwalkonenergy = false
}

monster.voices = {
	interval = 5000,
	chance = 10,
	{text = "RAAARRR!", yell = false},
	{text = "GRRRRRR!", yell = false},
	{text = "WAHHHH!", yell = false},
}

monster.loot = {
{
	id = "gold coin",
	chance = 87649,
	maxCount = 198
},
{
	id = "platinum coin",
	chance = 85549,
	maxCount = 15
},
{
	id = "ham",
	chance = 44730
},
{
	id = "demonic essence",
	chance = 30098
},
{
	id = "soul orb",
	chance = 23144
},
{
	id = "great health potion",
	chance = 21152,
	maxCount = 3
},
{
	id = "great mana potion",
	chance = 20645,
	maxCount = 3
},
{
	id = "flask of demonic blood",
	chance = 19775
},
{
	id = "assassin star",
	chance = 16661,
	maxCount = 10
},
{
	id = "small emerald",
	chance = 13654,
	maxCount = 5
},
{
	id = "small topaz",
	chance = 13003,
	maxCount = 5
},
{
	id = "small ruby",
	chance = 12821,
	maxCount = 5
},
{
	id = "small amethyst",
	chance = 12677,
	maxCount = 5
},
{
	id = "small diamond",
	chance = 12387,
	maxCount = 5
},
{
	id = "onyx arrow",
	chance = 10286,
	maxCount = 15
},
{
	id = "red gem",
	chance = 9381
},
{
	id = "giant shimmering pearl",
	chance = 6918
},
{
	id = "gold ingot",
	chance = 5179,
	maxCount = 2
},
{
	id = "titan axe",
	chance = 4745
},
{
	id = "knight armor",
	chance = 4382
},
{
	id = "spiked squelcher",
	chance = 4020
},
{
	id = "green gem",
	chance = 2390
},
{
	id = "war axe",
	chance = 1594
},
{
	id = "violet gem",
	chance = 942
},
{
	id = "mastermind shield",
	chance = 435
},
{
	id = "demonbone amulet",
	chance = 362
},
{
	id = "golden armor",
	chance = 326
},
{
	id = "heavy mace",
	chance = 326
},
{
	id = "closed trap",
	chance = 181
}
}

monster.attacks = {
{
	name = "melee",
	interval = 2 * 1000,
	attack = 1470,
	skill = 70,
	effect = CONST_ME_DRAWBLOOD
},
{
	name = "combat",
	interval = 2 * 1000,
	chance = 15,
	minDamage = 0,
	maxDamage = -780,
	range = 7,
	type = COMBAT_PHYSICALDAMAGE,
	shootEffect = CONST_ANI_LARGEROCK
}
}

monster.defenses = {
	defense = 60,
	armor = 60,
	{
			name = "speed",
			interval = 2 * 1000,
			chance = 15,
			speed = 520,
			duration = 5 * 1000,
			effect = CONST_ME_MAGIC_RED
		},
	{
			name = "combat",
			interval = 2 * 1000,
			chance = 15,
			type = COMBAT_HEALING,
			minDamage = 400,
			maxDamage = 900,
			effect = CONST_ME_MAGIC_BLUE
		},
}

monster.elements = {
{
	type = COMBAT_PHYSICALDAMAGE,
	percent = 30
},
{
	type = COMBAT_ENERGYDAMAGE,
	percent = -10
},
{
	type = COMBAT_EARTHDAMAGE,
	percent = 20
},
{
	type = COMBAT_FIREDAMAGE,
	percent = 30
},
{
	type = COMBAT_ICEDAMAGE,
	percent = 10
},
{
	type = COMBAT_HOLYDAMAGE,
	percent = -5
}
}

monster.immunities = {
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
