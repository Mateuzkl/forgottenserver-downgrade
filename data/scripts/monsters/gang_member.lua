local mType = Game.createMonsterType("Gang Member")
local monster = {}
monster.description = "a gang member"
monster.experience = 70
monster.outfit = {lookType = 151}

monster.health = 295
monster.maxHealth = monster.health
monster.race = "blood"
monster.corpse = 20403
monster.speed = 190

monster.flags = {
	summonable = false,
	attackable = true,
	hostile = true,
	illusionable = true,
	convinceable = true,
	pushable = true,
	canpushitems = false,
	canpushcreatures = false,
	staticAttackChance = 90,
	targetDistance = 1,
	canwalkonenergy = false,
	canwalkonfire = false,
	canwalkonpoison = false
}

monster.voices = {
	interval = 5000,
	chance = 10,
	{text = "This is our territory!", yell = false},
	{text = "Help me guys!", yell = false},
	{text = "I don't like the way you look!", yell = false},
	{text = "You're wearing the wrong colours!", yell = false},
	{text = "Don't mess with us!", yell = false},
}

monster.loot = {
{
	id = "gold coin",
	chance = 48971,
	maxCount = 30
},
{
	id = "leather legs",
	chance = 15541
},
{
	id = "mace",
	chance = 9182
},
{
	id = "brown bread",
	chance = 5251
},
{
	id = "studded legs",
	chance = 5040
},
{
	id = "club ring",
	chance = 1029
}
}

monster.attacks = {
{
	name = "melee",
	interval = 2 * 1000,
	attack = 70,
	skill = 70,
	effect = CONST_ME_DRAWBLOOD
}
}

monster.defenses = {
	defense = 8,
	armor = 8,
}

monster.elements = {
{
	type = COMBAT_DEATHDAMAGE,
	percent = -5
}
}

mType:register(monster)
