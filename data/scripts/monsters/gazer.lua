local mType = Game.createMonsterType("Gazer")
local monster = {}
monster.description = "a gazer"
monster.experience = 90
monster.outfit = {lookType = 109}

monster.health = 120
monster.maxHealth = monster.health
monster.race = "venom"
monster.corpse = 6036
monster.speed = 140

monster.changeTarget = {interval = 4 * 1000, chance = 10}

monster.flags = {
	summonable = false,
	attackable = true,
	hostile = true,
	illusionable = true,
	convinceable = false,
	pushable = false,
	canpushitems = true,
	canpushcreatures = false,
	targetDistance = 4,
	staticAttackChance = 90,
	canwalkonenergy = false,
	canwalkonfire = false
}

monster.voices = {
	interval = 5000,
	chance = 10,
	{text = "Mommy!?", yell = false},
	{text = "Buuuuhaaaahhaaaaa!", yell = false},
	{text = "Me need mana!", yell = false},
}

monster.loot = {
{
	id = "gold coin",
	chance = 99000,
	maxCount = 24
},
{
	id = "small flask of eyedrops",
	chance = 3330
}
}

monster.attacks = {
{
	name = "melee",
	interval = 2 * 1000,
	attack = 15,
	skill = 70,
	effect = CONST_ME_DRAWBLOOD
},
{
	name = "combat",
	interval = 2 * 1000,
	chance = 15,
	minDamage = -25,
	maxDamage = -35,
	range = 7,
	type = COMBAT_LIFEDRAIN,
	effect = CONST_ME_MAGIC_RED
},
{
	name = "combat",
	interval = 2 * 1000,
	chance = 10,
	minDamage = -10,
	maxDamage = -35,
	range = 7,
	type = COMBAT_MANADRAIN
}
}

monster.defenses = {
	defense = 4,
	armor = 4,
}

monster.elements = {
{
	type = COMBAT_ICEDAMAGE,
	percent = 20
},
{
	type = COMBAT_ENERGYDAMAGE,
	percent = 10
},
{
	type = COMBAT_FIREDAMAGE,
	percent = -10
}
}

monster.immunities = {
{
	type = "invisible",
	condition = true
},
{
	type = "earth",
	combat = true,
	condition = true
}
}

mType:register(monster)
