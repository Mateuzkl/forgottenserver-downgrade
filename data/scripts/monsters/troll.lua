local mType = Game.createMonsterType("Troll")
local monster = {}
monster.description = "a troll"
monster.experience = 20
monster.outfit = {lookType = 15}

monster.health = 50
monster.maxHealth = monster.health
monster.race = "blood"
monster.corpse = 5960
monster.speed = 126

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
	{text = "Grrrr", yell = false},
	{text = "Groar", yell = false},
	{text = "Gruntz!", yell = false},
	{text = "Hmmm, bugs", yell = false},
	{text = "Hmmm, dogs", yell = false},
}

monster.loot = {
{
	id = "gold coin",
	chance = 65542,
	maxCount = 12
},
{
	id = "hand axe",
	chance = 19690
},
{
	id = "meat",
	chance = 15431
},
{
	id = "spear",
	chance = 12998
},
{
	id = "leather helmet",
	chance = 11892
},
{
	id = "leather boots",
	chance = 9983
},
{
	id = "rope",
	chance = 8131
},
{
	id = "studded club",
	chance = 5448
},
{
	id = "wooden shield",
	chance = 5448
},
{
	id = "bunch of troll hair",
	chance = 1189
}
}

monster.attacks = {
{
	name = "melee",
	interval = 2 * 1000,
	attack = 15,
	skill = 70,
	effect = CONST_ME_DRAWBLOOD
}
}

monster.defenses = {
	defense = 6,
	armor = 6,
}

monster.elements = {
{
	type = COMBAT_ENERGYDAMAGE,
	percent = 20
},
{
	type = COMBAT_HOLYDAMAGE,
	percent = 10
},
{
	type = COMBAT_EARTHDAMAGE,
	percent = -10
},
{
	type = COMBAT_DEATHDAMAGE,
	percent = -10
}
}

mType:register(monster)
