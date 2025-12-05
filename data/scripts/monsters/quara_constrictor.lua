local mType = Game.createMonsterType("Quara Constrictor")
local monster = {}
monster.description = "a quara constrictor"
monster.experience = 250
monster.outfit = {lookType = 46}

monster.health = 450
monster.maxHealth = monster.health
monster.race = "blood"
monster.corpse = 6065
monster.speed = 380

monster.changeTarget = {interval = 4 * 1000, chance = 10}

monster.flags = {
	summonable = false,
	attackable = true,
	hostile = true,
	illusionable = true,
	convinceable = true,
	pushable = false,
	canpushitems = true,
	canpushcreatures = false,
	staticAttackChance = 90,
	targetDistance = 1,
	canwalkonenergy = false,
	canwalkonpoison = false
}

monster.voices = {
	interval = 5000,
	chance = 10,
	{text = "Gaaahhh!", yell = false},
	{text = "Gluh! Gluh!", yell = false},
	{text = "Tssss!", yell = false},
	{text = "Boohaa!", yell = false},
}

monster.loot = {
{
	id = "gold coin",
	chance = 87662,
	maxCount = 100
},
{
	id = "quara tentacle",
	chance = 14598
},
{
	id = "longsword",
	chance = 6951
},
{
	id = "shrimp",
	chance = 5169
},
{
	id = "brass armor",
	chance = 4804
},
{
	id = "small amethyst",
	chance = 3042
},
{
	id = "fish fin",
	chance = 484
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
	minDamage = -50,
	maxDamage = -90,
	radius = 3,
	target = false,
	type = COMBAT_LIFEDRAIN,
	effect = CONST_ME_BLACKSPARK
},
{
	name = "combat",
	interval = 2 * 1000,
	chance = 10,
	minDamage = -40,
	maxDamage = -70,
	range = 7,
	radius = 4,
	target = false,
	type = COMBAT_ICEDAMAGE,
	effect = CONST_ME_ICEATTACK
}
}

monster.defenses = {
	defense = 14,
	armor = 14,
}

monster.elements = {
{
	type = COMBAT_EARTHDAMAGE,
	percent = -10
},
{
	type = COMBAT_ENERGYDAMAGE,
	percent = -25
}
}

monster.immunities = {
{
	type = "lifedrain",
	combat = true
},
{
	type = "paralyze",
	condition = true
},
{
	type = "drown",
	condition = true
},
{
	type = "fire",
	combat = true,
	condition = true
},
{
	type = "ice",
	combat = true,
	condition = true
}
}

mType:register(monster)
