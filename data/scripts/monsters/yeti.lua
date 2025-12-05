local mType = Game.createMonsterType("Yeti")
local monster = {}
monster.description = "a yeti"
monster.experience = 460
monster.outfit = {lookType = 110}

monster.health = 950
monster.maxHealth = monster.health
monster.race = "blood"
monster.corpse = 6038
monster.speed = 250

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
	staticAttackChance = 90
}

monster.voices = {
	interval = 5000,
	chance = 10,
	{text = "Yooodelaaahooohooo!", yell = false},
	{text = "Yooodelaaaheeeheee!", yell = false},
}

monster.loot = {
{
	id = "gold coin",
	chance = 79310,
	maxCount = 27
},
{
	id = "meat",
	chance = 71264
},
{
	id = "snowball",
	chance = 52874,
	maxCount = 22
},
{
	id = "ham",
	chance = 39080
},
{
	id = "bunnyslippers",
	chance = 1149
},
{
	id = "wolf tooth chain",
	chance = 1149
}
}

monster.attacks = {
{
	name = "melee",
	interval = 2 * 1000,
	attack = 200,
	skill = 70,
	effect = CONST_ME_DRAWBLOOD
},
{
	name = "combat",
	interval = 1 * 1000,
	chance = 15,
	minDamage = 0,
	maxDamage = -180,
	range = 7,
	type = COMBAT_PHYSICALDAMAGE,
	shootEffect = CONST_ANI_SNOWBALL,
	effect = CONST_ME_POFF
},
{
	name = "combat",
	interval = 1 * 1000,
	chance = 12,
	minDamage = 0,
	maxDamage = -175,
	length = 3,
	spread = 3,
	type = COMBAT_ENERGYDAMAGE,
	effect = CONST_ME_POFF
}
}

monster.defenses = {
	defense = 28,
	armor = 28,
}

monster.elements = {
{
	type = COMBAT_ICEDAMAGE,
	percent = -1
}
}

monster.immunities = {
{
	type = "invisible",
	condition = true
}
}

mType:register(monster)
