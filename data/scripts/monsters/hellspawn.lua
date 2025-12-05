local mType = Game.createMonsterType("Hellspawn")
local monster = {}
monster.description = "a hellspawn"
monster.experience = 2550
monster.outfit = {lookType = 322}

monster.health = 3500
monster.maxHealth = monster.health
monster.race = "fire"
monster.corpse = 9923
monster.speed = 344

monster.changeTarget = {interval = 4 * 1000, chance = 15}

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
	canwalkonenergy = false
}

monster.voices = {
	interval = 5000,
	chance = 10,
	{text = "Your fragile bones are like toothpicks to me.", yell = false},
	{text = "You little weasel will not live to see another day.", yell = false},
	{text = "I'm just a messenger of what's yet to come.", yell = false},
	{text = "HRAAAAAAAAAAAAAAAARRRR", yell = true},
	{text = "I'm taking you down with me!", yell = false},
}

monster.loot = {
{
	id = "gold coin",
	chance = 92683,
	maxCount = 236
},
{
	id = "great health potion",
	chance = 30215
},
{
	id = "hellspawn tail",
	chance = 14587
},
{
	id = "morning star",
	chance = 7720
},
{
	id = "demonic essence",
	chance = 7483
},
{
	id = "ultimate health potion",
	chance = 7317
},
{
	id = "assassin star",
	chance = 7151,
	maxCount = 2
},
{
	id = "battle shield",
	chance = 6938
},
{
	id = "red mushroom",
	chance = 6299,
	maxCount = 2
},
{
	id = "small topaz",
	chance = 4736,
	maxCount = 3
},
{
	id = "plate armor",
	chance = 2226
},
{
	id = "knight legs",
	chance = 2202
},
{
	id = "warrior helmet",
	chance = 1397
},
{
	id = "spiked squelcher",
	chance = 521
},
{
	id = "berserk potion",
	chance = 497
},
{
	id = "skull",
	chance = 213
},
{
	id = "plate armor",
	chance = 189
},
{
	id = "dracoyle statue",
	chance = 71
},
{
	id = "onyx flail",
	chance = 24
}
}

monster.attacks = {
{
	name = "melee",
	interval = 2 * 1000,
	attack = 350,
	skill = 70,
	effect = CONST_ME_DRAWBLOOD
},
{
	name = "combat",
	interval = 2 * 1000,
	chance = 20,
	minDamage = -150,
	maxDamage = -175,
	type = COMBAT_FIREDAMAGE,
	shootEffect = CONST_ANI_FIRE,
	effect = CONST_ME_FIREATTACK
}
}

monster.defenses = {
	defense = 44,
	armor = 44,
	{
			name = "combat",
			interval = 2 * 1000,
			chance = 10,
			type = COMBAT_HEALING,
			minDamage = 120,
			maxDamage = 230,
			effect = CONST_ME_MAGIC_BLUE
		},
	{
			name = "speed",
			interval = 2 * 1000,
			chance = 15,
			speed = 270,
			duration = 5 * 1000,
			effect = CONST_ME_MAGIC_RED
		},
}

monster.elements = {
{
	type = COMBAT_PHYSICALDAMAGE,
	percent = 10
},
{
	type = COMBAT_ENERGYDAMAGE,
	percent = 10
},
{
	type = COMBAT_EARTHDAMAGE,
	percent = 80
},
{
	type = COMBAT_FIREDAMAGE,
	percent = 40
},
{
	type = COMBAT_ICEDAMAGE,
	percent = -10
},
{
	type = COMBAT_HOLYDAMAGE,
	percent = 30
},
{
	type = COMBAT_DEATHDAMAGE,
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
