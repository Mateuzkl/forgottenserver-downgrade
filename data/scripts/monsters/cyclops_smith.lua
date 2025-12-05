local mType = Game.createMonsterType("Cyclops Smith")
local monster = {}
monster.description = "a cyclops smith"
monster.experience = 255
monster.outfit = {lookType = 277}

monster.health = 435
monster.maxHealth = monster.health
monster.race = "blood"
monster.corpse = 7740
monster.speed = 204

monster.changeTarget = {interval = 4 * 1000, chance = 10}

monster.flags = {
	summonable = false,
	attackable = true,
	hostile = true,
	illusionable = false,
	convinceable = true,
	pushable = false,
	canpushitems = true,
	canpushcreatures = true,
	targetDistance = 1,
	canwalkonenergy = false,
	canwalkonfire = false,
	canwalkonpoison = false
}

monster.voices = {
	interval = 5000,
	chance = 10,
	{text = "Outis emoi g' onoma.", yell = false},
	{text = "Whack da humy!", yell = false},
	{text = "Ai humy phary ty kaynon", yell = false},
}

monster.loot = {
{
	id = "gold coin",
	chance = 82761,
	maxCount = 70
},
{
	id = "meat",
	chance = 50252
},
{
	id = "cyclops toe",
	chance = 10011
},
{
	id = "battle shield",
	chance = 6211
},
{
	id = "battle axe",
	chance = 5139
},
{
	id = "battle hammer",
	chance = 5117
},
{
	id = "plate shield",
	chance = 2099
},
{
	id = "heavy machete",
	chance = 2064
},
{
	id = "double axe",
	chance = 977
},
{
	id = "strong health potion",
	chance = 520
},
{
	id = "dark helmet",
	chance = 199
},
{
	id = "spiked squelcher",
	chance = 142
},
{
	id = "cyclops trophy",
	chance = 126
},
{
	id = "club ring",
	chance = 88
}
}

monster.attacks = {
{
	name = "melee",
	interval = 2 * 1000,
	attack = 150,
	skill = 70,
	effect = CONST_ME_DRAWBLOOD
},
{
	name = "combat",
	interval = 2 * 1000,
	chance = 10,
	minDamage = 0,
	maxDamage = -70,
	range = 7,
	type = COMBAT_PHYSICALDAMAGE,
	shootEffect = CONST_ANI_WHIRLWINDCLUB
},
{
	name = "drunk",
	interval = 2 * 1000,
	chance = 10,
	duration = 4 * 1000,
	shootEffect = CONST_ANI_WHIRLWINDCLUB,
	effect = CONST_ME_STUN
}
}

monster.defenses = {
	defense = 28,
	armor = 28,
}

monster.elements = {
{
	type = COMBAT_ENERGYDAMAGE,
	percent = 20
},
{
	type = COMBAT_EARTHDAMAGE,
	percent = -10
},
{
	type = COMBAT_FIREDAMAGE,
	percent = 10
},
{
	type = COMBAT_HOLYDAMAGE,
	percent = 20
},
{
	type = COMBAT_DEATHDAMAGE,
	percent = -5
}
}

mType:register(monster)
