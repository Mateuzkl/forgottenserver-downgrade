local mType = Game.createMonsterType("Diabolic Imp")
local monster = {}
monster.description = "a diabolic imp"
monster.experience = 2900
monster.outfit = {lookType = 237}

monster.health = 1950
monster.maxHealth = monster.health
monster.race = "fire"
monster.corpse = 6364
monster.speed = 220

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
	targetDistance = 4,
	staticAttackChance = 90,
	canwalkonenergy = false
}

monster.voices = {
	interval = 5000,
	chance = 10,
	{text = "Muahaha!", yell = false},
	{text = "He he he.", yell = false},
}

monster.loot = {
{
	id = "gold coin",
	chance = 99347,
	maxCount = 200
},
{
	id = "pitchfork",
	chance = 50468
},
{
	id = "flask of demonic blood",
	chance = 24610
},
{
	id = "blank rune",
	chance = 14973,
	maxCount = 2
},
{
	id = "cleaver",
	chance = 8828
},
{
	id = "guardian shield",
	chance = 8274
},
{
	id = "demonic essence",
	chance = 7777
},
{
	id = "soul orb",
	chance = 6912
},
{
	id = "scimitar",
	chance = 5351
},
{
	id = "platinum coin",
	chance = 3364,
	maxCount = 7
},
{
	id = "stealth ring",
	chance = 2739
},
{
	id = "small amethyst",
	chance = 2583,
	maxCount = 3
},
{
	id = "double axe",
	chance = 1746
},
{
	id = "necrotic rod",
	chance = 781
},
{
	id = "magma monocle",
	chance = 525
},
{
	id = "magma coat",
	chance = 355
},
{
	id = "death ring",
	chance = 99
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
	chance = 20,
	minDamage = -100,
	maxDamage = -240,
	range = 7,
	radius = 4,
	target = true,
	type = COMBAT_FIREDAMAGE,
	shootEffect = CONST_ANI_FIRE,
	effect = CONST_ME_FIREAREA
},
{
	name = "combat",
	interval = 2 * 1000,
	chance = 10,
	minDamage = -300,
	maxDamage = -430,
	range = 7,
	radius = 2,
	target = true,
	type = COMBAT_FIREDAMAGE,
	shootEffect = CONST_ANI_FIRE,
	effect = CONST_ME_FIREATTACK
}
}

monster.defenses = {
	defense = 29,
	armor = 29,
	{
			name = "combat",
			interval = 2 * 1000,
			chance = 10,
			type = COMBAT_HEALING,
			minDamage = 650,
			maxDamage = 800,
			effect = CONST_ME_MAGIC_BLUE
		},
	{
			name = "speed",
			interval = 2 * 1000,
			chance = 15,
			speed = 800,
			duration = 2 * 1000,
			effect = CONST_ME_MAGIC_RED
		},
	{
			name = "invisible",
			interval = 2 * 1000,
			chance = 10,
			effect = CONST_ME_TELEPORT
		},
}

monster.elements = {
{
	type = COMBAT_EARTHDAMAGE,
	percent = 50
},
{
	type = COMBAT_ICEDAMAGE,
	percent = -10
},
{
	type = COMBAT_HOLYDAMAGE,
	percent = -5
},
{
	type = COMBAT_DEATHDAMAGE,
	percent = 10
}
}

monster.immunities = {
{
	type = "fire",
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
