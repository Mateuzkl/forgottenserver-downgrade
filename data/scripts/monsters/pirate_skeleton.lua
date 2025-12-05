local mType = Game.createMonsterType("Pirate Skeleton")
local monster = {}
monster.description = "a pirate skeleton"
monster.experience = 85
monster.outfit = {lookType = 195}

monster.health = 190
monster.maxHealth = monster.health
monster.race = "undead"
monster.corpse = 6070
monster.speed = 180

monster.flags = {
	summonable = false,
	attackable = true,
	hostile = true,
	illusionable = false,
	convinceable = false,
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
	chance = 48000,
	maxCount = 25
},
{
	id = 2229,
	chance = 4460
},
{
	id = 2230,
	chance = 4250
},
{
	id = 2231,
	chance = 5140
},
{
	id = 2376,
	chance = 550
},
{
	id = "short sword",
	chance = 1003
},
{
	id = "bone club",
	chance = 960
},
{
	id = 10558,
	chance = 4730
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
	defense = 15,
	armor = 15,
}

monster.elements = {
{
	type = COMBAT_HOLYDAMAGE,
	percent = -25
}
}

monster.immunities = {
{
	type = "death",
	combat = true,
	condition = true
}
}

mType:register(monster)
