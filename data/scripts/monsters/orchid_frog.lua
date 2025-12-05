local mType = Game.createMonsterType("Orchid Frog")
local monster = {}
monster.description = "an orchid frog"
monster.experience = 20
monster.outfit = {lookType = 226}

monster.health = 60
monster.maxHealth = monster.health
monster.race = "blood"
monster.corpse = 6079
monster.speed = 200

monster.changeTarget = {interval = 5 * 1000, chance = 20}

monster.flags = {
	summonable = false,
	attackable = true,
	hostile = true,
	illusionable = false,
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
	{text = "Ribbit!", yell = false},
	{text = "Ribbit! Ribbit!", yell = false},
}

monster.loot = {
{
	id = "gold coin",
	chance = 73230,
	maxCount = 10
},
{
	id = "worm",
	chance = 8000
}
}

monster.attacks = {
{
	name = "melee",
	interval = 2 * 1000,
	attack = 24,
	skill = 70,
	effect = CONST_ME_DRAWBLOOD
}
}

monster.defenses = {
	defense = 5,
	armor = 5,
}

monster.elements = {
{
	type = COMBAT_ICEDAMAGE,
	percent = 10
},
{
	type = COMBAT_FIREDAMAGE,
	percent = -10
}
}

mType:register(monster)
