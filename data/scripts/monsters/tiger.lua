local mType = Game.createMonsterType("Tiger")
local monster = {}
monster.description = "a tiger"
monster.experience = 40
monster.outfit = {lookType = 125}

monster.health = 75
monster.maxHealth = monster.health
monster.race = "blood"
monster.corpse = 6051
monster.speed = 200

monster.flags = {
	summonable = true,
	attackable = true,
	hostile = true,
	illusionable = true,
	convinceable = true,
	pushable = false,
	canpushitems = true,
	canpushcreatures = true,
	targetDistance = 1,
	staticAttackChance = 70,
	canwalkonenergy = false,
	canwalkonfire = false,
	canwalkonpoison = false
}

monster.loot = {
{
	id = "meat",
	chance = 35190,
	maxCount = 4
},
{
	id = "striped fur",
	chance = 10830
}
}

monster.attacks = {
{
	name = "melee",
	interval = 2 * 1000,
	attack = 40,
	skill = 70,
	effect = CONST_ME_DRAWBLOOD
}
}

monster.defenses = {
	defense = 5,
	armor = 5,
	{
			name = "speed",
			interval = 2 * 1000,
			chance = 15,
			speed = 220,
			duration = 5 * 1000,
			effect = CONST_ME_MAGIC_RED
		},
}

monster.elements = {
{
	type = COMBAT_DEATHDAMAGE,
	percent = -10
},
{
	type = COMBAT_ICEDAMAGE,
	percent = -10
}
}

mType:register(monster)
