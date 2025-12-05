local mType = Game.createMonsterType("The Masked Marauder")
local monster = {}
monster.description = "The Masked Marauder"
monster.experience = 3500
monster.outfit = {lookType = 234}

monster.health = 7320
monster.maxHealth = monster.health
monster.race = "blood"
monster.corpse = 7349
monster.speed = 250

monster.flags = {
	summonable = false,
	attackable = true,
	hostile = true,
	illusionable = false,
	convinceable = false,
	pushable = false,
	canpushitems = true,
	targetDistance = 1,
	canwalkonenergy = false,
	canwalkonpoison = false
}

monster.voices = {
	interval = 5000,
	chance = 10,
	{text = "Didn't you leave your house door open?", yell = false},
	{text = "Oops, your shoelaces are open!", yell = false},
	{text = "Look! It's Ferumbras behind you!", yell = false},
	{text = "Stop! I give up!", yell = false},
}

monster.attacks = {
{
	name = "melee",
	interval = 2 * 1000,
	attack = 640,
	skill = 70,
	effect = CONST_ME_DRAWBLOOD
},
{
	name = "combat",
	interval = 2 * 1000,
	chance = 40,
	minDamage = -38,
	maxDamage = -150,
	type = COMBAT_PHYSICALDAMAGE,
	shootEffect = CONST_ANI_THROWINGKNIFE
}
}

monster.defenses = {
	defense = 35,
	armor = 25,
	{
			name = "combat",
			interval = 1 * 1000,
			chance = 50,
			type = COMBAT_HEALING,
			minDamage = 75,
			maxDamage = 125,
			effect = CONST_ME_MAGIC_BLUE
		},
}

monster.elements = {
{
	type = COMBAT_HOLYDAMAGE,
	percent = -15
},
{
	type = COMBAT_ENERGYDAMAGE,
	percent = 30
}
}

monster.immunities = {
{
	type = "fire",
	combat = true,
	condition = true
},
{
	type = "outfit",
	condition = true
},
{
	type = "drunk",
	condition = true
},
{
	type = "invisible",
	condition = true
}
}

mType:register(monster)
