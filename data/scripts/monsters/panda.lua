local mType = Game.createMonsterType("Panda")
local monster = {}
monster.description = "a panda"
monster.experience = 23
monster.outfit = {lookType = 123}

monster.health = 80
monster.maxHealth = monster.health
monster.race = "blood"
monster.corpse = 6049
monster.speed = 156

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
	canwalkonfire = false
}

monster.voices = {
	interval = 5000,
	chance = 10,
	{text = "Grrrr", yell = false},
	{text = "Groar", yell = false},
}

monster.loot = {
{
	id = "meat",
	chance = 69144
},
{
	id = "ham",
	chance = 36695
},
{
	id = "bamboo stick",
	chance = 9423
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
	defense = 8,
	armor = 8,
}

monster.elements = {
{
	type = COMBAT_FIREDAMAGE,
	percent = -10
}
}

monster.immunities = {
{
	type = "earth",
	combat = true,
	condition = true
}
}

mType:register(monster)
