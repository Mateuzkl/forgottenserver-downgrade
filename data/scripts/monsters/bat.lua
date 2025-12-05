local mType = Game.createMonsterType("Bat")
local monster = {}
monster.description = "a bat"
monster.experience = 10
monster.outfit = {lookType = 122}

monster.health = 30
monster.maxHealth = monster.health
monster.race = "blood"
monster.corpse = 6053
monster.speed = 200

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
	{text = "Flap! Flap!", yell = false},
}

monster.loot = {
{
	id = "bat wing",
	chance = 1000
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
	percent = -10
}
}

mType:register(monster)
