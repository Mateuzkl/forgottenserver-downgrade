local mType = Game.createMonsterType("Amazon")
local monster = {}
monster.description = "an amazon"
monster.experience = 60
monster.outfit = {lookType = 137}

monster.health = 110
monster.maxHealth = monster.health
monster.race = "blood"
monster.corpse = 20323
monster.speed = 172

monster.changeTarget = {interval = 4 * 1000, chance = 10}

monster.flags = {
	summonable = true,
	attackable = true,
	hostile = true,
	illusionable = true,
	convinceable = true,
	pushable = true,
	canpushitems = true,
	canpushcreatures = false,
	targetDistance = 4,
	staticAttackChance = 90,
	canwalkonenergy = false,
	canwalkonfire = false,
	canwalkonpoison = false
}

monster.voices = {
	interval = 5000,
	chance = 10,
	{text = "Yeeee ha!", yell = false},
	{text = "Your head shall be mine!", yell = false},
	{text = "Your head will be mine!", yell = false},
}

monster.loot = {
{
	id = "dagger",
	chance = 80000
},
{
	id = 2229,
	chance = 80000,
	maxCount = 2
},
{
	id = "gold coin",
	chance = 40000,
	maxCount = 20
},
{
	id = "brown bread",
	chance = 30333
},
{
	id = "sabre",
	chance = 23000
},
{
	id = "girlish hair decoration",
	chance = 10000
},
{
	id = "protective charm",
	chance = 5000
},
{
	id = 2050,
	chance = 1005
},
{
	id = "crystal necklace",
	chance = 250
},
{
	id = "small ruby",
	chance = 120
}
}

monster.attacks = {
{
	name = "melee",
	interval = 2 * 1000,
	attack = 45,
	skill = 70,
	effect = CONST_ME_DRAWBLOOD
},
{
	name = "combat",
	interval = 2 * 1000,
	chance = 15,
	minDamage = 0,
	maxDamage = -40,
	range = 7,
	type = COMBAT_PHYSICALDAMAGE,
	shootEffect = CONST_ANI_THROWINGKNIFE
}
}

monster.defenses = {
	defense = 10,
	armor = 10,
}

monster.elements = {
{
	type = COMBAT_PHYSICALDAMAGE,
	percent = -5
},
{
	type = COMBAT_DEATHDAMAGE,
	percent = -5
}
}

mType:register(monster)
