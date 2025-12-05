local mType = Game.createMonsterType("Sheep")
local monster = {}
monster.description = "a sheep"
monster.experience = 0
monster.outfit = {lookType = 14}

monster.health = 20
monster.maxHealth = monster.health
monster.race = "blood"
monster.corpse = 5991
monster.speed = 116

monster.flags = {
	summonable = true,
	attackable = true,
	hostile = false,
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
	{text = "Maeh", yell = false},
}

monster.loot = {
{
	id = "meat",
	chance = 70000,
	maxCount = 4
},
{
	id = "wool",
	chance = 1000
}
}

monster.attacks = {
{
	name = "melee",
	interval = 2 * 1000,
	attack = 1,
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
	type = COMBAT_FIREDAMAGE,
	percent = -5
}
}

mType:register(monster)
