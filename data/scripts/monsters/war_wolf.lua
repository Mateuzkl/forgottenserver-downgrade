local mType = Game.createMonsterType("War Wolf")
local monster = {}
monster.description = "a war wolf"
monster.experience = 55
monster.outfit = {lookType = 3}

monster.health = 140
monster.maxHealth = monster.health
monster.race = "blood"
monster.corpse = 6009
monster.speed = 264

monster.flags = {
	summonable = false,
	attackable = true,
	hostile = true,
	illusionable = true,
	convinceable = true,
	pushable = false,
	canpushitems = true,
	canpushcreatures = false,
	targetDistance = 1,
	staticAttackChance = 80,
	canwalkonenergy = false,
	canwalkonfire = false,
	canwalkonpoison = false
}

monster.voices = {
	interval = 5000,
	chance = 10,
	{text = "Grrrrrrr", yell = false},
	{text = "Yoooohhuuuu!", yell = true},
}

monster.loot = {
{
	id = "ham",
	chance = 39170
},
{
	id = "warwolf fur",
	chance = 4951
},
{
	id = "wolf paw",
	chance = 993
},
{
	id = "wolf trophy",
	chance = 48
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
	defense = 8,
	armor = 8,
}

monster.elements = {
{
	type = COMBAT_EARTHDAMAGE,
	percent = 20
},
{
	type = COMBAT_HOLYDAMAGE,
	percent = 10
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

monster.immunities = {
{
	type = "outfit",
	condition = true
}
}

mType:register(monster)
