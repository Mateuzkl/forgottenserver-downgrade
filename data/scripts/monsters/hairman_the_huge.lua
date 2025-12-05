local mType = Game.createMonsterType("Hairman The Huge")
local monster = {}
monster.description = "Hairman The Huge"
monster.experience = 335
monster.outfit = {lookType = 116}

monster.health = 600
monster.maxHealth = monster.health
monster.race = "blood"
monster.corpse = 6043
monster.speed = 230
monster.maxSummons = 1

monster.changeTarget = {interval = 5 * 1000, chance = 14}

monster.flags = {
	summonable = false,
	attackable = true,
	hostile = true,
	illusionable = false,
	convinceable = false,
	pushable = false,
	canpushitems = true,
	canpushcreatures = true,
	targetDistance = 1,
	staticAttackChance = 90,
	isboss = true
}

monster.summons = {
{
	name = "Kongra",
	chance = 25,
	interval = 2 * 1000
}
}

monster.voices = {
	interval = 1000,
	chance = 2,
	{text = "Hugah!", yell = false},
	{text = "Ungh! Ungh!", yell = false},
	{text = "Huaauaauaauaa!", yell = false},
}

monster.loot = {
{
	id = "gold coin",
	chance = 50000,
	maxCount = 60
},
{
	id = "power ring",
	chance = 7500
},
{
	id = "protection amulet",
	chance = 3000
},
{
	id = "plate armor",
	chance = 5000
},
{
	id = "banana",
	chance = 7500,
	maxCount = 2
},
{
	id = "ape fur",
	chance = 2500
}
}

monster.attacks = {
{
	name = "melee",
	interval = 2 * 1000,
	attack = 110,
	skill = 70,
	effect = CONST_ME_DRAWBLOOD
}
}

monster.defenses = {
	defense = 25,
	armor = 25,
	{
			name = "speed",
			interval = 1 * 1000,
			chance = 7,
			speed = 260,
			duration = 3 * 1000,
			effect = CONST_ME_MAGIC_RED
		},
}

mType:register(monster)
