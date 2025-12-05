local mType = Game.createMonsterType("Badger")
local monster = {}
monster.description = "a badger"
monster.experience = 5
monster.outfit = {lookType = 105}

monster.health = 23
monster.maxHealth = monster.health
monster.race = "blood"
monster.corpse = 6034
monster.speed = 140

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

monster.loot = {
{
	id = "beetroot",
	chance = 40710
},
{
	id = 11216,
	chance = 10230
},
{
	id = "acorn",
	chance = 5130
}
}

monster.attacks = {
{
	name = "melee",
	interval = 2 * 1000,
	attack = 12,
	skill = 70,
	effect = CONST_ME_DRAWBLOOD
}
}

monster.defenses = {
	defense = 1,
	armor = 1,
}

mType:register(monster)
