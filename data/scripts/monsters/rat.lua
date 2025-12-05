local mType = Game.createMonsterType("Rat")
local monster = {}
monster.description = "a rat"
monster.experience = 5
monster.outfit = {lookType = 21}

monster.health = 20
monster.maxHealth = monster.health
monster.race = "blood"
monster.corpse = 5964
monster.speed = 134

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
	{text = "Meep!", yell = false},
}

monster.loot = {
{
	id = "gold coin",
	chance = 100000,
	maxCount = 4
},
{
	id = 2696,
	chance = 39410
}
}

monster.attacks = {
{
	name = "melee",
	interval = 2 * 1000,
	attack = 8,
	skill = 70,
	effect = CONST_ME_DRAWBLOOD
}
}

monster.defenses = {
	defense = 1,
	armor = 1,
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
	percent = -10
},
{
	type = COMBAT_DEATHDAMAGE,
	percent = -10
}
}

mType:register(monster)
