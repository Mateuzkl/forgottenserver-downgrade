local mType = Game.createMonsterType("Island Troll")
local monster = {}
monster.description = "an island troll"
monster.experience = 20
monster.outfit = {lookType = 282}

monster.health = 50
monster.maxHealth = monster.health
monster.race = "blood"
monster.corpse = 7930
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
	staticAttackChance = 90,
	targetDistance = 1,
	canwalkonenergy = false,
	canwalkonfire = false,
	canwalkonpoison = false
}

monster.voices = {
	interval = 5000,
	chance = 10,
	{text = "Hmmm, turtles", yell = false},
	{text = "Hmmm, dogs", yell = false},
	{text = "Hmmm, worms", yell = false},
	{text = "Groar", yell = false},
	{text = "Gruntz!", yell = false},
}

monster.loot = {
{
	id = "gold coin",
	chance = 59656,
	maxCount = 10
},
{
	id = "wood",
	chance = 30727
},
{
	id = "spear",
	chance = 20007
},
{
	id = "hand axe",
	chance = 17701
},
{
	id = "wooden shield",
	chance = 15244
},
{
	id = "leather boots",
	chance = 9794
},
{
	id = "leather helmet",
	chance = 9670
},
{
	id = "rope",
	chance = 7889
},
{
	id = "studded club",
	chance = 5182
},
{
	id = "mango",
	chance = 5102
},
{
	id = "marlin",
	chance = 71
},
{
	id = "silver amulet",
	chance = 71
}
}

monster.attacks = {
{
	name = "melee",
	interval = 2 * 1000,
	attack = 10,
	skill = 70,
	effect = CONST_ME_DRAWBLOOD
}
}

monster.defenses = {
	defense = 6,
	armor = 6,
}

mType:register(monster)
