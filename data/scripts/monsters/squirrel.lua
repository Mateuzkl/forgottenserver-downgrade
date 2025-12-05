local mType = Game.createMonsterType("Squirrel")
local monster = {}
monster.description = "a squirrel"
monster.experience = 0
monster.outfit = {lookType = 274}

monster.health = 20
monster.maxHealth = monster.health
monster.race = "blood"
monster.corpse = 7628
monster.speed = 480

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
	canwalkonenergy = false,
	canwalkonfire = false,
	canwalkonpoison = false
}

monster.voices = {
	interval = 5000,
	chance = 10,
	{text = "Chchch", yell = false},
}

monster.loot = {
{
	id = "acorn",
	chance = 36613
},
{
	id = "peanut",
	chance = 652
},
{
	id = "walnut",
	chance = 516
}
}

monster.defenses = {
	defense = 1,
	armor = 1,
}

mType:register(monster)
