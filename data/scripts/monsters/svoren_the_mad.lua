local mType = Game.createMonsterType("Svoren the Mad")
local monster = {}
monster.description = "Svoren the Mad"
monster.experience = 3000
monster.outfit = {lookType = 254}

monster.health = 6310
monster.maxHealth = monster.health
monster.race = "blood"
monster.corpse = 7349
monster.speed = 180

monster.flags = {
	summonable = false,
	attackable = true,
	hostile = true,
	illusionable = false,
	convinceable = false,
	pushable = false,
	canpushitems = true,
	targetDistance = 1
}

monster.voices = {
	interval = 2000,
	chance = 5,
	{text = "NO mommy NO. Leave me alone!", yell = false},
	{text = "Not that tower again!", yell = false},
	{text = "The cat has grown some horns!!", yell = false},
	{text = "What was I doing here again?", yell = false},
	{text = "Are we there soon mommy?", yell = false},
}

monster.attacks = {
{
	name = "melee",
	interval = 2 * 1000,
	attack = 525,
	skill = 70,
	effect = CONST_ME_DRAWBLOOD
},
{
	name = "speed",
	interval = 3 * 1000,
	chance = 35,
	range = 1,
	radius = 1,
	target = true,
	speed = -250,
	duration = 0 * 1000,
	effect = CONST_ME_MAGIC_RED
}
}

monster.defenses = {
	defense = 27,
	armor = 25,
}

monster.immunities = {
{
	type = "fire",
	combat = true,
	condition = true
},
{
	type = "ice",
	combat = true,
	condition = true
},
{
	type = "energy",
	combat = true,
	condition = true
},
{
	type = "earth",
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
