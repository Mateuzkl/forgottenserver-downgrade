local mType = Game.createMonsterType("Nightmare Scion")
local monster = {}
monster.description = "a nightmare scion"
monster.experience = 1350
monster.outfit = {lookType = 321}

monster.health = 1400
monster.maxHealth = monster.health
monster.race = "blood"
monster.corpse = 9919
monster.speed = 440

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
	{text = "Weeeheeheee!", yell = false},
	{text = "Pffffrrrrrrrrrrrr.", yell = false},
	{text = "Peak a boo, I killed you!", yell = false},
}

monster.loot = {
{
	id = "gold coin",
	chance = 97006,
	maxCount = 155
},
{
	id = "meat",
	chance = 50392
},
{
	id = "essence of a bad dream",
	chance = 8074
},
{
	id = "scythe leg",
	chance = 4977
},
{
	id = "platinum coin",
	chance = 1074,
	maxCount = 3
},
{
	id = "crown helmet",
	chance = 728
},
{
	id = "diamond sceptre",
	chance = 367
},
{
	id = "focus cape",
	chance = 330
},
{
	id = "death ring",
	chance = 284
},
{
	id = "bar of chocolate",
	chance = 248
},
{
	id = "shadow sceptre",
	chance = 248
},
{
	id = "crystal of focus",
	chance = 114
}
}

monster.attacks = {
{
	name = "melee",
	interval = 2 * 1000,
	attack = 140,
	skill = 70,
	effect = CONST_ME_DRAWBLOOD
},
{
	name = "combat",
	interval = 2 * 1000,
	chance = 20,
	minDamage = -115,
	maxDamage = -180,
	range = 7,
	radius = 4,
	target = true,
	type = COMBAT_EARTHDAMAGE,
	shootEffect = CONST_ANI_POISON,
	effect = CONST_ME_POISON
},
{
	name = "combat",
	interval = 2 * 1000,
	chance = 10,
	minDamage = -70,
	maxDamage = -130,
	range = 7,
	radius = 1,
	target = true,
	type = COMBAT_DEATHDAMAGE,
	shootEffect = CONST_ANI_SUDDENDEATH,
	effect = CONST_ME_SMALLCLOUDS
}
}

monster.defenses = {
	defense = 25,
	armor = 25,
	{
			name = "combat",
			interval = 2 * 1000,
			chance = 5,
			type = COMBAT_HEALING,
			minDamage = 60,
			maxDamage = 95,
			effect = CONST_ME_MAGIC_BLUE
		},
}

monster.elements = {
{
	type = COMBAT_ENERGYDAMAGE,
	percent = 20
},
{
	type = COMBAT_FIREDAMAGE,
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
	type = "invisible",
	condition = true
}
}

mType:register(monster)
