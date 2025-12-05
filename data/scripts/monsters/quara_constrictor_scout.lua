local mType = Game.createMonsterType("Quara Constrictor Scout")
local monster = {}
monster.description = "a quara constrictor scout"
monster.experience = 200
monster.outfit = {lookType = 46}

monster.health = 450
monster.maxHealth = monster.health
monster.race = "blood"
monster.corpse = 6065
monster.speed = 150

monster.changeTarget = {interval = 4 * 1000, chance = 10}

monster.flags = {
	summonable = false,
	attackable = true,
	hostile = true,
	illusionable = true,
	convinceable = false,
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
	chance = 99953,
	maxCount = 50
},
{
	id = "quara tentacle",
	chance = 15123
},
{
	id = "shrimp",
	chance = 10015
},
{
	id = "longsword",
	chance = 8090
},
{
	id = "brass armor",
	chance = 5076
},
{
	id = "small amethyst",
	chance = 4015
},
{
	id = "fish fin",
	chance = 507
}
}

monster.attacks = {
{
	name = "melee",
	interval = 2 * 1000,
	attack = 135,
	skill = 70,
	effect = CONST_ME_DRAWBLOOD
},
{
	name = "combat",
	interval = 2 * 1000,
	chance = 15,
	maxDamage = -80,
	radius = 3,
	target = false,
	type = COMBAT_LIFEDRAIN,
	effect = CONST_ME_BLACKSPARK
}
}

monster.defenses = {
	defense = 15,
	armor = 15,
}

monster.elements = {
{
	type = COMBAT_ENERGYDAMAGE,
	percent = -10
},
{
	type = COMBAT_PHYSICALDAMAGE,
	percent = -5
}
}

monster.immunities = {
{
	type = "lifedrain",
	combat = true
},
{
	type = "fire",
	combat = true,
	condition = true
},
{
	type = "paralyze",
	condition = true
},
{
	type = "ice",
	combat = true,
	condition = true
}
}

mType:register(monster)
