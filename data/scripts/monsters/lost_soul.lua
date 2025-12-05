local mType = Game.createMonsterType("Lost Soul")
local monster = {}
monster.description = "a lost soul"
monster.experience = 4000
monster.outfit = {lookType = 232}

monster.health = 5800
monster.maxHealth = monster.health
monster.race = "undead"
monster.corpse = 6310
monster.speed = 380

monster.changeTarget = {interval = 4 * 1000, chance = 15}

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
	canwalkonenergy = false
}

monster.voices = {
	interval = 5000,
	chance = 10,
	{text = "Forgive Meeeee!", yell = false},
	{text = "Mouuuurn meeee!", yell = false},
	{text = "Help meeee!", yell = false},
}

monster.loot = {
{
	id = "gold coin",
	chance = 100000,
	maxCount = 196
},
{
	id = "platinum coin",
	chance = 100000,
	maxCount = 7
},
{
	id = "blank rune",
	chance = 36842,
	maxCount = 3
},
{
	id = "unholy bone",
	chance = 33684
},
{
	id = "great mana potion",
	chance = 17193,
	maxCount = 2
},
{
	id = "black pearl",
	chance = 15439,
	maxCount = 3
},
{
	id = "soul orb",
	chance = 15439
},
{
	id = "white pearl",
	chance = 14035,
	maxCount = 3
},
{
	id = "great health potion",
	chance = 8421,
	maxCount = 2
},
{
	id = "demonic essence",
	chance = 5614
},
{
	id = "silver goblet",
	chance = 3860
},
{
	id = "plate armor",
	chance = 3158
},
{
	id = "stone skin amulet",
	chance = 2807
},
{
	id = "stealth ring",
	chance = 2456
},
{
	id = "ruby necklace",
	chance = 1404
},
{
	id = "skeleton decoration",
	chance = 1404
},
{
	id = "red gem",
	chance = 1053
},
{
	id = "haunted blade",
	chance = 702
},
{
	id = "skull staff",
	chance = 702
},
{
	id = "titan axe",
	chance = 351
}
}

monster.attacks = {
{
	name = "melee",
	interval = 2 * 1000,
	attack = 420,
	skill = 70,
	effect = CONST_ME_DRAWBLOOD
},
{
	name = "combat",
	interval = 2 * 1000,
	chance = 10,
	minDamage = -40,
	maxDamage = -210,
	target = false,
	length = 3,
	spread = 0,
	type = COMBAT_DEATHDAMAGE,
	effect = CONST_ME_MAGIC_RED
},
{
	name = "speed",
	interval = 2 * 1000,
	chance = 20,
	radius = 6,
	target = false,
	speed = -800,
	duration = 4 * 1000,
	effect = CONST_ME_SMALLCLOUDS
}
}

monster.defenses = {
	defense = 30,
	armor = 30,
}

monster.elements = {
{
	type = COMBAT_ICEDAMAGE,
	percent = 50
},
{
	type = COMBAT_ENERGYDAMAGE,
	percent = 10
},
{
	type = COMBAT_HOLYDAMAGE,
	percent = -25
}
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
	type = "death",
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
