local mType = Game.createMonsterType("Madareth")
local monster = {}
monster.description = "Madareth"
monster.experience = 10000
monster.outfit = {lookType = 12}

monster.health = 75000
monster.maxHealth = monster.health
monster.race = "fire"
monster.corpse = 8721
monster.speed = 330

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
	staticAttackChance = 85,
	isboss = true
}

monster.voices = {
	interval = 1000,
	chance = 5,
	{text = "I am going to play with yourself!", yell = true},
	{text = "Feel my wrath!", yell = false},
	{text = "No one matches my battle prowess!", yell = false},
	{text = "You will all die!", yell = false},
}

monster.loot = {
{
	id = "gold coin",
	chance = 100000,
	maxCount = 100
},
{
	id = "slightly rusted legs",
	chance = 59259
},
{
	id = "slightly rusted armor",
	chance = 40741
},
{
	id = "bullseye potion",
	chance = 37037
},
{
	id = "great health potion",
	chance = 29630
},
{
	id = "great spirit potion",
	chance = 27778
},
{
	id = "berserk potion",
	chance = 25926
},
{
	id = "mastermind potion",
	chance = 25926
},
{
	id = "great mana potion",
	chance = 22222
},
{
	id = "death ring",
	chance = 20370
},
{
	id = "platinum coin",
	chance = 20370,
	maxCount = 26
},
{
	id = "ultimate health potion",
	chance = 20370
},
{
	id = "springsprout rod",
	chance = 18519
},
{
	id = "assassin dagger",
	chance = 16667
},
{
	id = "lute",
	chance = 16667
},
{
	id = "two handed sword",
	chance = 16667
},
{
	id = "axe ring",
	chance = 14815
},
{
	id = "hailstorm rod",
	chance = 14815
},
{
	id = "nightmare blade",
	chance = 14815
},
{
	id = "underworld rod",
	chance = 14815
},
{
	id = "wand of inferno",
	chance = 14815
},
{
	id = "bloody edge",
	chance = 12963
},
{
	id = "club ring",
	chance = 12963
},
{
	id = "haunted blade",
	chance = 12963
},
{
	id = "lyre",
	chance = 12963
},
{
	id = "ring of healing",
	chance = 12963
},
{
	id = "wand of voodoo",
	chance = 12963
},
{
	id = "demonic essence",
	chance = 11111
},
{
	id = "war drum",
	chance = 11111
},
{
	id = "war horn",
	chance = 11111
},
{
	id = "crystal sword",
	chance = 9259
},
{
	id = "life ring",
	chance = 9259
},
{
	id = "time ring",
	chance = 9259
},
{
	id = "demon horn",
	chance = 7407,
	maxCount = 2
},
{
	id = "didgeridoo",
	chance = 7407
},
{
	id = "relic sword",
	chance = 7407
},
{
	id = "wand of starstorm",
	chance = 7407
},
{
	id = "mercenary sword",
	chance = 5556
},
{
	id = "wooden flute",
	chance = 5556
},
{
	id = "dwarven ring",
	chance = 3704
},
{
	id = "ice rapier",
	chance = 3704
},
{
	id = "sword ring",
	chance = 3704
}
}

monster.attacks = {
{
	name = "melee",
	interval = 2 * 1000,
	attack = 2000,
	skill = 70,
	effect = CONST_ME_DRAWBLOOD
},
{
	name = "combat",
	interval = 2 * 1000,
	chance = 40,
	minDamage = -180,
	maxDamage = -660,
	range = 7,
	radius = 6,
	target = false,
	type = COMBAT_ENERGYDAMAGE,
	effect = CONST_ME_ENERGYAREA
},
{
	name = "combat",
	interval = 4 * 1000,
	chance = 30,
	minDamage = -600,
	maxDamage = -850,
	length = 8,
	spread = 0,
	type = COMBAT_DEATHDAMAGE,
	effect = CONST_ME_MORTAREA
},
{
	name = "combat",
	interval = 2 * 1000,
	chance = 20,
	minDamage = 0,
	maxDamage = -200,
	radius = 5,
	target = false,
	type = COMBAT_MANADRAIN,
	effect = CONST_ME_MAGIC_RED
},
{
	name = "combat",
	interval = 2 * 1000,
	chance = 5,
	minDamage = 0,
	maxDamage = -250,
	radius = 7,
	target = false,
	type = COMBAT_MANADRAIN,
	effect = CONST_ME_MAGIC_RED
}
}

monster.defenses = {
	defense = 65,
	armor = 65,
	{
			name = "combat",
			interval = 3 * 1000,
			chance = 35,
			type = COMBAT_HEALING,
			minDamage = 300,
			maxDamage = 800,
			effect = CONST_ME_MAGIC_BLUE
		},
}

monster.elements = {
{
	type = COMBAT_ENERGYDAMAGE,
	percent = 95
},
{
	type = COMBAT_FIREDAMAGE,
	percent = -5
},
{
	type = COMBAT_ICEDAMAGE,
	percent = 5
},
{
	type = COMBAT_DEATHDAMAGE,
	percent = 95
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
},
{
	type = "drunk",
	condition = true
}
}

mType:register(monster)
