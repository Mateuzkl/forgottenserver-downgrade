local mType = Game.createMonsterType("Norgle Glacierbeard")
local monster = {}
monster.description = "Norgle Glacierbeard"
monster.experience = 2100
monster.outfit = {lookType = 257}

monster.health = 4280
monster.maxHealth = monster.health
monster.race = "blood"
monster.corpse = 7349
monster.speed = 195

monster.flags = {
	summonable = false,
	attackable = true,
	hostile = true,
	illusionable = false,
	convinceable = false,
	pushable = false,
	canpushitems = true,
	targetDistance = 1,
	canwalkonenergy = false,
	canwalkonpoison = false
}

monster.voices = {
	interval = 2000,
	chance = 5,
	{text = "I'll extinguish you warmbloods.", yell = false},
	{text = "REVENGE!", yell = false},
	{text = "Far too hot.", yell = false},
	{text = "DISGUSTING WARMBLOODS!", yell = false},
	{text = "Revenge is sweetest when served cold.", yell = false},
}

monster.attacks = {
{
	name = "melee",
	interval = 2 * 1000,
	attack = 225,
	skill = 70,
	effect = CONST_ME_DRAWBLOOD
}
}

monster.defenses = {
	defense = 27,
	armor = 25,
}

monster.elements = {
{
	type = COMBAT_DEATHDAMAGE,
	percent = -15
},
{
	type = COMBAT_ENERGYDAMAGE,
	percent = -10
}
}

monster.immunities = {
{
	type = "ice",
	combat = true,
	condition = true
},
{
	type = "outfit",
	condition = true
},
{
	type = "drunk",
	condition = true
},
{
	type = "invisible",
	condition = true
}
}

mType:register(monster)
