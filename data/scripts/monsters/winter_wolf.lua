local mType = Game.createMonsterType("Winter Wolf")
local monster = {}
monster.description = "a winter wolf"
monster.experience = 20
monster.outfit = {lookType = 52}

monster.health = 30
monster.maxHealth = monster.health
monster.race = "blood"
monster.corpse = 5997
monster.speed = 170

monster.flags = {
	summonable = true,
	attackable = true,
	hostile = true,
	illusionable = true,
	convinceable = true,
	pushable = true,
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
	{text = "Yoooohhuuuu!", yell = false},
}

monster.loot = {
{
	id = "meat",
	chance = 30000,
	maxCount = 2
},
{
	id = "winter wolf fur",
	chance = 10000
}
}

monster.attacks = {
{
	name = "melee",
	interval = 2 * 1000,
	attack = 20,
	skill = 70,
	effect = CONST_ME_DRAWBLOOD
}
}

monster.defenses = {
	defense = 2,
	armor = 2,
}

monster.elements = {
{
	type = COMBAT_ICEDAMAGE,
	percent = 20
},
{
	type = COMBAT_FIREDAMAGE,
	percent = 10
},
{
	type = COMBAT_HOLYDAMAGE,
	percent = 10
},
{
	type = COMBAT_ENERGYDAMAGE,
	percent = -5
},
{
	type = COMBAT_DEATHDAMAGE,
	percent = -10
}
}

mType:register(monster)
