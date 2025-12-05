local mType = Game.createMonsterType("Quara Predator Scout")
local monster = {}
monster.description = "a quara predator scout"
monster.experience = 400
monster.outfit = {lookType = 20}

monster.health = 890
monster.maxHealth = monster.health
monster.race = "blood"
monster.corpse = 6067
monster.speed = 170

monster.changeTarget = {interval = 4 * 1000, chance = 10}

monster.flags = {
	summonable = false,
	attackable = true,
	hostile = true,
	illusionable = true,
	convinceable = false,
	pushable = false,
	canpushitems = true,
	canpushcreatures = true,
	staticAttackChance = 90,
	targetDistance = 1,
	canwalkonenergy = false,
	canwalkonpoison = false
}

monster.voices = {
	interval = 5000,
	chance = 10,
	{text = "Gnarrr!", yell = false},
	{text = "Tcharrr!", yell = false},
	{text = "Rrrah!", yell = false},
	{text = "Rraaar!", yell = false},
}

monster.loot = {
{
	id = "gold coin",
	chance = 98959,
	maxCount = 132
},
{
	id = "quara bone",
	chance = 10105
},
{
	id = "scale armor",
	chance = 8959
},
{
	id = "double axe",
	chance = 5785
},
{
	id = "shrimp",
	chance = 5045
},
{
	id = "small diamond",
	chance = 5020,
	maxCount = 2
},
{
	id = "two handed sword",
	chance = 3011
},
{
	id = "fish fin",
	chance = 1067
},
{
	id = "northwind rod",
	chance = 947
}
}

monster.attacks = {
{
	name = "melee",
	interval = 2 * 1000,
	attack = 190,
	skill = 70,
	effect = CONST_ME_DRAWBLOOD
}
}

monster.defenses = {
	defense = 30,
	armor = 30,
}

monster.elements = {
{
	type = COMBAT_ENERGYDAMAGE,
	percent = -10
}
}

monster.immunities = {
{
	type = "ice",
	combat = true,
	condition = true
},
{
	type = "fire",
	combat = true,
	condition = true
},
{
	type = "lifedrain",
	combat = true
},
{
	type = "invisible",
	condition = true
}
}

mType:register(monster)
