local mType = Game.createMonsterType("Wasp")
local monster = {}
monster.description = "a wasp"
monster.experience = 24
monster.outfit = {lookType = 44}

monster.health = 35
monster.maxHealth = monster.health
monster.race = "venom"
monster.corpse = 5989
monster.speed = 320

monster.changeTarget = {interval = 4 * 1000, chance = 10}

monster.flags = {
	summonable = true,
	attackable = true,
	hostile = true,
	illusionable = true,
	convinceable = false,
	pushable = true,
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
	{text = "Bssssss", yell = false},
}

monster.loot = {
{
	id = "honeycomb",
	chance = 3000
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
	defense = 4,
	armor = 4,
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
