local mType = Game.createMonsterType("Lethal Lissy")
local monster = {}
monster.description = "Lethal Lissy"
monster.experience = 500
monster.outfit = {lookType = 155}

monster.health = 1450
monster.maxHealth = monster.health
monster.race = "blood"
monster.corpse = 20438
monster.speed = 240
monster.maxSummons = 4

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

monster.summons = {
{
	name = "Pirate Cutthroat",
	chance = 50,
	interval = 2 * 1000
}
}

monster.loot = {
{
	id = "small diamond",
	chance = 100000
},
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
	id = 6100,
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
	{
			name = "combat",
			interval = 6 * 1000,
			chance = 65,
			type = COMBAT_HEALING,
			minDamage = 200,
			maxDamage = 250,
			effect = CONST_ME_MAGIC_BLUE
		},
}

monster.immunities = {
{
	type = "invisible",
	condition = true
}
}

mType:register(monster)
