local mType = Game.createMonsterType("Lion")
local monster = {}
monster.description = "a lion"
monster.experience = 30
monster.outfit = {lookType = 41}

monster.health = 80
monster.maxHealth = monster.health
monster.race = "blood"
monster.corpse = 5986
monster.speed = 190

monster.changeTarget = {interval = 4 * 1000, chance = 10}

monster.flags = {
	summonable = true,
	attackable = true,
	hostile = true,
	illusionable = true,
	convinceable = true,
	pushable = false,
	canpushitems = false,
	canpushcreatures = false,
	targetDistance = 1,
	staticAttackChance = 90,
	canwalkonenergy = false,
	canwalkonfire = false,
	canwalkonpoison = false
}

monster.voices = {
	interval = 5000,
	chance = 10,
	{text = "Groarrr!", yell = false},
}

monster.loot = {
{
	id = "meat",
	chance = 45327
},
{
	id = "ham",
	chance = 19265
},
{
	id = "lion's mane",
	chance = 1148
}
}

monster.attacks = {
{
	name = "melee",
	interval = 2 * 1000,
	attack = 40,
	skill = 70,
	effect = CONST_ME_DRAWBLOOD
}
}

monster.defenses = {
	defense = 6,
	armor = 6,
}

monster.elements = {
{
	type = COMBAT_EARTHDAMAGE,
	percent = 20
},
{
	type = COMBAT_HOLYDAMAGE,
	percent = 20
},
{
	type = COMBAT_ICEDAMAGE,
	percent = -15
},
{
	type = COMBAT_DEATHDAMAGE,
	percent = -8
}
}

mType:register(monster)
