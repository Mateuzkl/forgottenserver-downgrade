local mType = Game.createMonsterType("Undead Minion")
local monster = {}
monster.description = "Undead Minion"
monster.experience = 550
monster.outfit = {lookType = 37}

monster.health = 850
monster.maxHealth = monster.health
monster.race = "undead"
monster.corpse = 5963
monster.speed = 230

monster.changeTarget = {interval = 5 * 1000, chance = 1}

monster.flags = {
	summonable = false,
	attackable = true,
	hostile = true,
	illusionable = true,
	convinceable = true,
	pushable = false,
	canpushitems = true,
	canpushcreatures = true,
	targetDistance = 1,
	staticAttackChance = 90
}

monster.loot = {
{
	id = "gold coin",
	chance = 100000,
	maxCount = 40
},
{
	id = "blank rune",
	chance = 10000
},
{
	id = "battle hammer",
	chance = 5000
},
{
	id = "battle shield",
	chance = 1000
},
{
	id = "guardian shield",
	chance = 5000
},
{
	id = 6570,
	chance = 5538
},
{
	id = 6571,
	chance = 1538
}
}

monster.attacks = {
{
	name = "melee",
	interval = 1 * 1000,
	attack = 248,
	skill = 70,
	effect = CONST_ME_DRAWBLOOD
},
{
	name = "combat",
	interval = 1 * 1000,
	chance = 13,
	minDamage = -100,
	maxDamage = -160,
	radius = 4,
	target = false,
	type = COMBAT_LIFEDRAIN,
	effect = CONST_ME_MORTAREA
}
}

monster.defenses = {
	defense = 25,
	armor = 25,
}

monster.immunities = {
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
	type = "lifedrain",
	combat = true
},
{
	type = "drunk",
	condition = true
}
}

mType:register(monster)
