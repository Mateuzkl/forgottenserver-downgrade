local mType = Game.createMonsterType("Orc Warrior")
local monster = {}
monster.description = "an orc warrior"
monster.experience = 50
monster.outfit = {lookType = 7}

monster.health = 125
monster.maxHealth = monster.health
monster.race = "blood"
monster.corpse = 5979
monster.speed = 190

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
	{text = "Grow truk grrrr.", yell = false},
	{text = "Trak grrrr brik.", yell = false},
	{text = "Alk!", yell = false},
}

monster.loot = {
{
	id = "gold coin",
	chance = 64165,
	maxCount = 15
},
{
	id = "meat",
	chance = 15373
},
{
	id = "broken helmet",
	chance = 9694
},
{
	id = "chain armor",
	chance = 7516
},
{
	id = "orc leather",
	chance = 3696
},
{
	id = "skull belt",
	chance = 1001
},
{
	id = "orc tooth",
	chance = 681
},
{
	id = "copper shield",
	chance = 506
},
{
	id = "poison dagger",
	chance = 41
}
}

monster.attacks = {
{
	name = "melee",
	interval = 2 * 1000,
	attack = 60,
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
	type = COMBAT_ENERGYDAMAGE,
	percent = 30
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
