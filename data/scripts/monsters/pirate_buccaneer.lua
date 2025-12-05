local mType = Game.createMonsterType("Pirate Buccaneer")
local monster = {}
monster.description = "a pirate buccaneer"
monster.experience = 250
monster.outfit = {lookType = 97}

monster.health = 425
monster.maxHealth = monster.health
monster.race = "blood"
monster.corpse = 20471
monster.speed = 220

monster.changeTarget = {interval = 4 * 1000, chance = 15}

monster.flags = {
	summonable = false,
	attackable = true,
	hostile = true,
	illusionable = false,
	convinceable = true,
	pushable = false,
	canpushitems = true,
	canpushcreatures = true,
	staticAttackChance = 90,
	targetDistance = 1,
	canwalkonenergy = false,
	canwalkonfire = false,
	canwalkonpoison = false
}

monster.voices = {
	interval = 5000,
	chance = 10,
	{text = "Give up!", yell = false},
	{text = "Hiyaa", yell = false},
	{text = "Plundeeeeer!", yell = false},
}

monster.loot = {
{
	id = 2050,
	chance = 10190
},
{
	id = "gold coin",
	chance = 67740,
	maxCount = 59
},
{
	id = 2238,
	chance = 9900
},
{
	id = "sabre",
	chance = 10100
},
{
	id = "throwing knife",
	chance = 9000,
	maxCount = 5
},
{
	id = "plate armor",
	chance = 1130
},
{
	id = "battle shield",
	chance = 3850
},
{
	id = 5091,
	chance = 1000
},
{
	id = "rum flask",
	chance = 120
},
{
	id = 5792,
	chance = 40
},
{
	id = "pirate backpack",
	chance = 430
},
{
	id = "pirate shirt",
	chance = 1200
},
{
	id = "hook",
	chance = 450
},
{
	id = "eye patch",
	chance = 420
},
{
	id = "peg leg",
	chance = 510
},
{
	id = "strong health potion",
	chance = 670
},
{
	id = "compass",
	chance = 9780
}
}

monster.attacks = {
{
	name = "melee",
	interval = 2 * 1000,
	attack = 160,
	skill = 70,
	effect = CONST_ME_DRAWBLOOD
},
{
	name = "combat",
	interval = 2 * 1000,
	chance = 20,
	minDamage = 0,
	maxDamage = -100,
	range = 4,
	type = COMBAT_PHYSICALDAMAGE,
	shootEffect = CONST_ANI_THROWINGKNIFE
}
}

monster.defenses = {
	defense = 30,
	armor = 30,
}

monster.elements = {
{
	type = COMBAT_EARTHDAMAGE,
	percent = 10
},
{
	type = COMBAT_HOLYDAMAGE,
	percent = 10
},
{
	type = COMBAT_DEATHDAMAGE,
	percent = -5
},
{
	type = COMBAT_FIREDAMAGE,
	percent = -5
},
{
	type = COMBAT_ENERGYDAMAGE,
	percent = -5
},
{
	type = COMBAT_ICEDAMAGE,
	percent = -5
},
{
	type = COMBAT_PHYSICALDAMAGE,
	percent = -10
}
}

monster.immunities = {
{
	type = "invisible",
	condition = true
}
}

mType:register(monster)
