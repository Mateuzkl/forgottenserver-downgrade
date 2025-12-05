local mType = Game.createMonsterType("Tortoise")
local monster = {}
monster.description = "a tortoise"
monster.experience = 90
monster.outfit = {lookType = 197}

monster.health = 185
monster.maxHealth = monster.health
monster.race = "blood"
monster.corpse = 6072
monster.speed = 200

monster.flags = {
	summonable = false,
	attackable = true,
	hostile = true,
	illusionable = false,
	convinceable = true,
	pushable = true,
	canpushitems = true,
	canpushcreatures = false,
	staticAttackChance = 90,
	targetDistance = 1,
	canwalkonenergy = false,
	canwalkonfire = false,
	canwalkonpoison = false
}

monster.loot = {
{
	id = "gold coin",
	chance = 59000,
	maxCount = 30
},
{
	id = "battle hammer",
	chance = 730
},
{
	id = "plate shield",
	chance = 2850
},
{
	id = 2667,
	chance = 4600
},
{
	id = "tortoise egg",
	chance = 770,
	maxCount = 2
},
{
	id = "turtle shell",
	chance = 1300
},
{
	id = "tortoise shield",
	chance = 200
}
}

monster.attacks = {
{
	name = "melee",
	interval = 2 * 1000,
	attack = 50,
	skill = 70,
	effect = CONST_ME_DRAWBLOOD
}
}

monster.defenses = {
	defense = 30,
	armor = 30,
}

monster.elements = {
{
	type = COMBAT_PHYSICALDAMAGE,
	percent = 35
},
{
	type = COMBAT_ICEDAMAGE,
	percent = 20
},
{
	type = COMBAT_EARTHDAMAGE,
	percent = 20
},
{
	type = COMBAT_FIREDAMAGE,
	percent = -10
}
}

mType:register(monster)
