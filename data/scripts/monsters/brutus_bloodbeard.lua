local mType = Game.createMonsterType("Brutus Bloodbeard")
local monster = {}
monster.description = "Brutus Bloodbeard"
monster.experience = 795
monster.outfit = {lookType = 98}

monster.health = 1555
monster.maxHealth = monster.health
monster.race = "blood"
monster.corpse = 20478
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
	maxCount = 40
},
{
	id = "skull of Ratha",
	chance = 100000
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
	id = "Brutus Bloodbeard's hat",
	chance = 100000
}
}

monster.attacks = {
{
	name = "melee",
	interval = 2 * 1000,
	attack = 500,
	skill = 70,
	effect = CONST_ME_DRAWBLOOD
}
}

monster.defenses = {
	defense = 50,
	armor = 35,
}

monster.immunities = {
{
	type = "invisible",
	condition = true
}
}

mType:register(monster)
