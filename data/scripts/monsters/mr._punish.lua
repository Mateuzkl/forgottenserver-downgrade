local mType = Game.createMonsterType("Mr. Punish")
local monster = {}
monster.description = "Mr. Punish"
monster.experience = 9000
monster.outfit = {lookType = 234}

monster.health = 22000
monster.maxHealth = monster.health
monster.race = "undead"
monster.corpse = 6331
monster.speed = 470

monster.changeTarget = {interval = 2 * 1000, chance = 5}

monster.flags = {
	summonable = false,
	attackable = true,
	hostile = true,
	illusionable = true,
	convinceable = false,
	pushable = false,
	canpushitems = true,
	staticAttackChance = 50,
	targetDistance = 1,
	isboss = true
}

monster.loot = {
{
	id = "Mr. Punish's handcuffs",
	chance = 100000
}
}

monster.attacks = {
{
	name = "melee",
	interval = 2 * 1000,
	attack = 1280,
	skill = 70,
	effect = CONST_ME_DRAWBLOOD
}
}

monster.defenses = {
	defense = 72,
	armor = 64,
}

monster.immunities = {
{
	type = "energy",
	combat = true,
	condition = true
},
{
	type = "fire",
	combat = true,
	condition = true
},
{
	type = "earth",
	combat = true,
	condition = true
},
{
	type = "invisible",
	condition = true
}
}

mType:register(monster)
