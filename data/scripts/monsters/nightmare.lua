local mType = Game.createMonsterType("Nightmare")
local monster = {}
monster.description = "a nightmare"
monster.experience = 1666
monster.outfit = {lookType = 245}

monster.health = 2700
monster.maxHealth = monster.health
monster.race = "blood"
monster.corpse = 6340
monster.speed = 464

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
	staticAttackChance = 90,
	canwalkonenergy = false,
	canwalkonfire = false
}

monster.voices = {
	interval = 5000,
	chance = 10,
	{text = "Close your eyes... I want to show you something.", yell = false},
	{text = "I will haunt you forever!", yell = false},
	{text = "Pffffrrrrrrrrrrrr.", yell = false},
	{text = "I will make you scream.", yell = false},
	{text = "Take a ride with me.", yell = false},
	{text = "Weeeheeheeeheee!", yell = false},
}

monster.loot = {
{
	id = "gold coin",
	chance = 97147,
	maxCount = 155
},
{
	id = "ham",
	chance = 29615
},
{
	id = "flask of demonic blood",
	chance = 20577
},
{
	id = "soul orb",
	chance = 20224
},
{
	id = "essence of a bad dream",
	chance = 15577
},
{
	id = "scythe leg",
	chance = 10224
},
{
	id = "demonic essence",
	chance = 9583
},
{
	id = "platinum coin",
	chance = 2660,
	maxCount = 3
},
{
	id = "ancient shield",
	chance = 1122
},
{
	id = "stealth ring",
	chance = 1058
},
{
	id = "power bolt",
	chance = 1026,
	maxCount = 4
},
{
	id = "knight legs",
	chance = 833
},
{
	id = "skeleton decoration",
	chance = 545
},
{
	id = "boots of haste",
	chance = 288
},
{
	id = "mysterious voodoo skull",
	chance = 160
},
{
	id = "war axe",
	chance = 96
}
}

monster.attacks = {
{
	name = "melee",
	interval = 2 * 1000,
	attack = 150,
	skill = 70,
	effect = CONST_ME_DRAWBLOOD
},
{
	name = "combat",
	interval = 2 * 1000,
	chance = 10,
	minDamage = -120,
	maxDamage = -170,
	range = 7,
	radius = 1,
	target = true,
	type = COMBAT_DEATHDAMAGE,
	shootEffect = CONST_ANI_DEATH,
	effect = CONST_ME_SMALLCLOUDS
},
{
	name = "combat",
	interval = 2 * 1000,
	chance = 20,
	minDamage = -150,
	maxDamage = -350,
	range = 7,
	radius = 4,
	target = true,
	type = COMBAT_EARTHDAMAGE,
	shootEffect = CONST_ANI_POISON,
	effect = CONST_ME_POISON
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
			minDamage = 60,
			maxDamage = 100,
			effect = CONST_ME_MAGIC_BLUE
		},
	{
			name = "speed",
			interval = 2 * 1000,
			chance = 15,
			speed = 420,
			duration = 5 * 1000,
			effect = CONST_ME_MAGIC_RED
		},
}

monster.elements = {
{
	type = COMBAT_FIREDAMAGE,
	percent = 20
},
{
	type = COMBAT_ENERGYDAMAGE,
	percent = 20
},
{
	type = COMBAT_ICEDAMAGE,
	percent = 10
},
{
	type = COMBAT_HOLYDAMAGE,
	percent = -25
}
}

monster.immunities = {
{
	type = "invisible",
	condition = true
},
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
	type = "lifedrain",
	combat = true
}
}

mType:register(monster)
