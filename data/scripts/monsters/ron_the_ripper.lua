local mType = Game.createMonsterType("Ron the Ripper")
local monster = {}
monster.description = "Ron the Ripper"
monster.experience = 500
monster.outfit = {lookType = 151}

monster.health = 1500
monster.maxHealth = monster.health
monster.race = "blood"
monster.corpse = 20502
monster.speed = 240

monster.flags = {
	summonable = false,
	attackable = true,
	hostile = true,
	illusionable = false,
	convinceable = false,
	pushable = false,
	canpushitems = true,
	staticAttackChance = 50,
	targetDistance = 1,
	isboss = true
}

monster.loot = {
{
	id = "gold coin",
	chance = 100000,
	maxCount = 50
},
{
	id = "skull of Ratha",
	chance = 100000,
	maxCount = 2
},
{
	id = "dagger",
	chance = 8500
},
{
	id = "double axe",
	chance = 1500
},
{
	id = "plate armor",
	chance = 4000
},
{
	id = "knight armor",
	chance = 1200
},
{
	id = "Ron the Ripper's sabre",
	chance = 100000
}
}

monster.attacks = {
{
	name = "melee",
	interval = 2 * 1000,
	attack = 250,
	skill = 70,
	effect = CONST_ME_DRAWBLOOD
}
}

monster.defenses = {
	defense = 50,
	armor = 35,
}

mType:register(monster)
