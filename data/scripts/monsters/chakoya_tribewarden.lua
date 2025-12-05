local mType = Game.createMonsterType("Chakoya Tribewarden")
local monster = {}
monster.description = "a chakoya tribewarden"
monster.experience = 40
monster.outfit = {lookType = 249}

monster.health = 68
monster.maxHealth = monster.health
monster.race = "blood"
monster.corpse = 7320
monster.speed = 200

monster.flags = {
	summonable = false,
	attackable = true,
	hostile = true,
	illusionable = false,
	convinceable = true,
	pushable = false,
	canpushitems = true,
	staticAttackChance = 80,
	targetDistance = 1,
	canwalkonenergy = false,
	canwalkonfire = false,
	canwalkonpoison = false
}

monster.voices = {
	interval = 5000,
	chance = 10,
	{text = "Quisavu tukavi!", yell = false},
	{text = "Si siyoqua jamjam!", yell = false},
	{text = "Achuq! jinuma!", yell = false},
	{text = "Si ji jusipa!", yell = false},
}

monster.loot = {
{
	id = "gold coin",
	chance = 60000,
	maxCount = 30
},
{
	id = "short sword",
	chance = 4680
},
{
	id = "bone shield",
	chance = 1000
},
{
	id = 2667,
	chance = 20000
},
{
	id = "northern pike",
	chance = 90
},
{
	id = "rainbow trout",
	chance = 130
},
{
	id = "green perch",
	chance = 190
},
{
	id = "mammoth whopper",
	chance = 300
}
}

monster.attacks = {
{
	name = "melee",
	interval = 2 * 1000,
	attack = 30,
	skill = 70,
	effect = CONST_ME_DRAWBLOOD
}
}

monster.defenses = {
	defense = 10,
	armor = 10,
}

monster.elements = {
{
	type = COMBAT_FIREDAMAGE,
	percent = 25
},
{
	type = COMBAT_HOLYDAMAGE,
	percent = 10
},
{
	type = COMBAT_ENERGYDAMAGE,
	percent = -15
},
{
	type = COMBAT_DEATHDAMAGE,
	percent = -5
}
}

monster.immunities = {
{
	type = "ice",
	combat = true,
	condition = true
}
}

mType:register(monster)
