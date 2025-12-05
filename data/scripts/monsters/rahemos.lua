local mType = Game.createMonsterType("Rahemos")
local monster = {}
monster.description = "Rahemos"
monster.experience = 3100
monster.outfit = {lookType = 87}

monster.health = 3700
monster.maxHealth = monster.health
monster.race = "undead"
monster.corpse = 6031
monster.speed = 320
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
	staticAttackChance = 90
}

monster.summons = {
{
	name = "Demon",
	chance = 12,
	interval = 1 * 1000
}
}

monster.voices = {
	interval = 5000,
	chance = 10,
	{text = "It's a kind of magic.", yell = false},
	{text = "Abrah Kadabrah!", yell = false},
	{text = "Nothing hidden in my wrappings.", yell = false},
	{text = "It's not a trick, it's Rahemos.", yell = false},
	{text = "Meet my friend from hell!", yell = false},
	{text = "I will make you believe in magic.", yell = false},
}

monster.loot = {
{
	id = "ancient rune",
	chance = 100000
},
{
	id = "gold coin",
	chance = 30000,
	maxCount = 100
},
{
	id = "gold coin",
	chance = 30000,
	maxCount = 100
},
{
	id = "gold coin",
	chance = 30000,
	maxCount = 42
},
{
	id = "great mana potion",
	chance = 9000
},
{
	id = "small amethyst",
	chance = 8000,
	maxCount = 3
},
{
	id = "ring of healing",
	chance = 4000
},
{
	id = "magician hat",
	chance = 1600
},
{
	id = "violet gem",
	chance = 1100
},
{
	id = "orb",
	chance = 300
},
{
	id = "twin axe",
	chance = 200
},
{
	id = 2184,
	chance = 150
},
{
	id = "mini mummy",
	chance = 150
}
}

monster.attacks = {
{
	name = "melee",
	interval = 2 * 1000,
	attack = 750,
	skill = 70,
	effect = CONST_ME_DRAWBLOOD
},
{
	name = "combat",
	interval = 3 * 1000,
	chance = 7,
	minDamage = -75,
	maxDamage = -750,
	range = 1,
	type = COMBAT_LIFEDRAIN
},
{
	name = "combat",
	interval = 2 * 1000,
	chance = 20,
	minDamage = -60,
	maxDamage = -600,
	range = 7,
	type = COMBAT_ENERGYDAMAGE,
	shootEffect = CONST_ANI_ENERGY,
	effect = CONST_ANI_ENERGY
},
{
	name = "combat",
	interval = 3 * 1000,
	chance = 20,
	minDamage = -60,
	maxDamage = -600,
	range = 7,
	type = COMBAT_PHYSICALDAMAGE,
	shootEffect = CONST_ANI_SUDDENDEATH,
	effect = CONST_ME_MORTAREA
},
{
	name = "speed",
	interval = 1 * 1000,
	chance = 12,
	radius = 6,
	target = false,
	speed = -650,
	duration = 60 * 1000,
	effect = CONST_ME_POISON
},
{
	name = "drunk",
	interval = 1 * 1000,
	chance = 8,
	range = 7,
	shootEffect = CONST_ANI_ENERGY,
	effect = CONST_ME_ENERGYAREA
},
{
	name = "outfit",
	interval = 1 * 1000,
	chance = 15,
	range = 7,
	duration = 12 * 1000,
	effect = CONST_ME_MAGIC_BLUE
}
}

monster.defenses = {
	defense = 40,
	armor = 40,
	{
			name = "combat",
			interval = 1 * 1000,
			chance = 20,
			type = COMBAT_HEALING,
			minDamage = 200,
			maxDamage = 500,
			effect = CONST_ME_MAGIC_BLUE
		},
	{
			name = "outfit",
			interval = 1 * 1000,
			chance = 5,
			effect = CONST_ME_MAGIC_BLUE
		},
}

monster.elements = {
{
	type = COMBAT_FIREDAMAGE,
	percent = 95
},
{
	type = COMBAT_ENERGYDAMAGE,
	percent = 95
},
{
	type = COMBAT_PHYSICALDAMAGE,
	percent = -40
},
{
	type = COMBAT_HOLYDAMAGE,
	percent = -1
}
}

monster.immunities = {
{
	type = "ice",
	combat = true,
	condition = true
},
{
	type = "earth",
	combat = true,
	condition = true
},
{
	type = "death",
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
