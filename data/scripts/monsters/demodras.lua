local mType = Game.createMonsterType("Demodras")
local monster = {}
monster.description = "Demodras"
monster.experience = 6000
monster.outfit = {lookType = 204}

monster.health = 4500
monster.maxHealth = monster.health
monster.race = "blood"
monster.corpse = 5984
monster.speed = 230
monster.maxSummons = 2

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
	staticAttackChance = 90,
	isboss = true
}

monster.summons = {
{
	name = "Dragon",
	chance = 17,
	interval = 1 * 1000
}
}

monster.voices = {
	interval = 5000,
	chance = 10,
	{text = "I WILL SET THE WORLD ON FIRE!", yell = true},
	{text = "I WILL PROTECT MY BROOD!", yell = true},
}

monster.loot = {
{
	id = "dragon claw",
	chance = 100000
},
{
	id = "platinum coin",
	chance = 99145,
	maxCount = 10
},
{
	id = "dragon ham",
	chance = 75214
},
{
	id = "green mushroom",
	chance = 25641,
	maxCount = 7
},
{
	id = "power bolt",
	chance = 19658,
	maxCount = 10
},
{
	id = "red dragon leather",
	chance = 13675
},
{
	id = "small sapphire",
	chance = 11966
},
{
	id = "book (gemmed)",
	chance = 10256
},
{
	id = "energy ring",
	chance = 10256
},
{
	id = "great health potion",
	chance = 9402
},
{
	id = "great mana potion",
	chance = 9402
},
{
	id = "golden mug",
	chance = 5983
},
{
	id = "onyx arrow",
	chance = 4274,
	maxCount = 5
},
{
	id = "dragon scale mail",
	chance = 1709
},
{
	id = "fire sword",
	chance = 1709
},
{
	id = "life crystal",
	chance = 855
}
}

monster.attacks = {
{
	name = "melee",
	interval = 2 * 1000,
	attack = 235,
	skill = 70,
	effect = CONST_ME_DRAWBLOOD
},
{
	name = "combat",
	interval = 3 * 1000,
	chance = 20,
	minDamage = -350,
	maxDamage = -400,
	range = 7,
	radius = 4,
	target = true,
	type = COMBAT_FIREDAMAGE,
	shootEffect = CONST_ANI_FIRE,
	effect = CONST_ME_FIREAREA
},
{
	name = "firefield",
	interval = 1 * 1000,
	chance = 10,
	range = 7,
	radius = 6,
	target = true,
	shootEffect = CONST_ANI_FIRE
},
{
	name = "combat",
	interval = 4 * 1000,
	chance = 20,
	minDamage = -300,
	maxDamage = -550,
	length = 8,
	spread = 3,
	type = COMBAT_FIREDAMAGE,
	effect = CONST_ME_FIREAREA
}
}

monster.defenses = {
	defense = 45,
	armor = 45,
	{
			name = "combat",
			interval = 2 * 1000,
			chance = 25,
			type = COMBAT_HEALING,
			minDamage = 400,
			maxDamage = 600,
			effect = CONST_ME_MAGIC_BLUE
		},
}

monster.immunities = {
{
	type = "fire",
	combat = true,
	condition = true
},
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
}
}

mType:register(monster)
