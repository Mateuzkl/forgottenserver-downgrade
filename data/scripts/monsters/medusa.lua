local mType = Game.createMonsterType("Medusa")
local monster = {}
monster.description = "a medusa"
monster.experience = 4050
monster.outfit = {lookType = 330}

monster.health = 4500
monster.maxHealth = monster.health
monster.race = "blood"
monster.corpse = 10524
monster.speed = 280

monster.changeTarget = {interval = 4 * 1000, chance = 20}

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
	staticAttackChance = 80,
	canwalkonenergy = false,
	canwalkonfire = false
}

monster.voices = {
	interval = 5000,
	chance = 10,
	{text = "You will make ssuch a fine ssstatue!", yell = false},
	{text = "There isss no chhhanccce of esscape", yell = false},
	{text = "Jusssst look at me!", yell = false},
	{text = "Are you tired or why are you moving thhat sslow<chuckle>", yell = false},
}

monster.loot = {
{
	id = "gold coin",
	chance = 50000,
	maxCount = 100
},
{
	id = "gold coin",
	chance = 50000,
	maxCount = 90
},
{
	id = "small emerald",
	chance = 3770,
	maxCount = 4
},
{
	id = "platinum coin",
	chance = 74810,
	maxCount = 6
},
{
	id = "knight armor",
	chance = 1840
},
{
	id = "medusa shield",
	chance = 3040
},
{
	id = "titan axe",
	chance = 1160
},
{
	id = "great mana potion",
	chance = 10000,
	maxCount = 2
},
{
	id = "terra mantle",
	chance = 870
},
{
	id = "terra legs",
	chance = 420
},
{
	id = "terra amulet",
	chance = 4060
},
{
	id = "ultimate health potion",
	chance = 9290,
	maxCount = 2
},
{
	id = 9810,
	chance = 500
},
{
	id = "sacred tree amulet",
	chance = 850
},
{
	id = "strand of medusa hair",
	chance = 9900
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
	name = "combat",
	interval = 2 * 1000,
	chance = 10,
	minDamage = -75,
	maxDamage = -150,
	range = 7,
	target = true,
	type = COMBAT_LIFEDRAIN,
	shootEffect = CONST_ANI_EARTH,
	effect = CONST_ME_CARNIPHILA
},
{
	name = "combat",
	interval = 2 * 1000,
	chance = 10,
	minDamage = -75,
	maxDamage = -150,
	range = 7,
	target = true,
	type = COMBAT_LIFEDRAIN,
	shootEffect = CONST_ANI_EARTH,
	effect = CONST_ME_CARNIPHILA
},
{
	name = "combat",
	interval = 2 * 1000,
	chance = 10,
	minDamage = -75,
	maxDamage = -150,
	range = 7,
	target = true,
	type = COMBAT_LIFEDRAIN,
	shootEffect = CONST_ANI_EARTH,
	effect = CONST_ME_CARNIPHILA
},
{
	name = "combat",
	interval = 2 * 1000,
	chance = 10,
	minDamage = -75,
	maxDamage = -150,
	range = 7,
	target = true,
	type = COMBAT_LIFEDRAIN,
	shootEffect = CONST_ANI_EARTH,
	effect = CONST_ME_CARNIPHILA
},
{
	name = "combat",
	interval = 2 * 1000,
	chance = 10,
	minDamage = -75,
	maxDamage = -150,
	range = 7,
	target = true,
	type = COMBAT_LIFEDRAIN,
	shootEffect = CONST_ANI_EARTH,
	effect = CONST_ME_CARNIPHILA
},
{
	name = "combat",
	interval = 2 * 1000,
	chance = 15,
	minDamage = -250,
	maxDamage = -500,
	length = 8,
	spread = 3,
	type = COMBAT_EARTHDAMAGE,
	effect = CONST_ME_CARNIPHILA
},
{
	name = "speed",
	interval = 2 * 1000,
	chance = 25,
	radius = 7,
	target = true,
	speed = -900,
	effect = CONST_ME_POFF
},
{
	name = "outfit",
	interval = 2 * 1000,
	chance = 1,
	range = 7,
	target = true,
	duration = 3 * 1000
}
}

monster.defenses = {
	defense = 30,
	armor = 30,
	{
			name = "combat",
			interval = 2 * 1000,
			chance = 25,
			type = COMBAT_HEALING,
			minDamage = 150,
			maxDamage = 300,
			effect = CONST_ME_MAGIC_BLUE
		},
}

monster.elements = {
{
	type = COMBAT_ICEDAMAGE,
	percent = 20
},
{
	type = COMBAT_FIREDAMAGE,
	percent = -5
},
{
	type = COMBAT_ENERGYDAMAGE,
	percent = -10
}
}

monster.immunities = {
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
},
{
	type = "lifedrain",
	combat = true
},
{
	type = "drown",
	condition = true
}
}

mType:register(monster)
