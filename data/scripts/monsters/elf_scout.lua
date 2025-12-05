local mType = Game.createMonsterType("Elf Scout")
local monster = {}
monster.description = "an elf scout"
monster.experience = 75
monster.outfit = {lookType = 64}

monster.health = 160
monster.maxHealth = monster.health
monster.race = "blood"
monster.corpse = 6012
monster.speed = 220

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
	targetDistance = 4,
	staticAttackChance = 90,
	canwalkonenergy = false,
	canwalkonfire = false,
	canwalkonpoison = false
}

monster.voices = {
	interval = 5000,
	chance = 10,
	{text = "Tha'shi Ab'Dendriel!", yell = false},
	{text = "Feel the sting of my arrows!", yell = false},
	{text = "Thy blood will quench the soil's thirst!", yell = false},
	{text = "Evicor guide my arrow.", yell = false},
	{text = "Your existence will end here!", yell = false},
}

monster.loot = {
{
	id = "gold coin",
	chance = 75000,
	maxCount = 25
},
{
	id = 2544,
	chance = 30710,
	maxCount = 12
},
{
	id = "grapes",
	chance = 17750
},
{
	id = "poison arrow",
	chance = 15400,
	maxCount = 4
},
{
	id = "elven scouting glass",
	chance = 9750
},
{
	id = "elvish talisman",
	chance = 5200
},
{
	id = "bow",
	chance = 4000
},
{
	id = "waterskin",
	chance = 1350
},
{
	id = "sandals",
	chance = 1180
},
{
	id = 5921,
	chance = 1130
},
{
	id = "elvish bow",
	chance = 140
}
}

monster.attacks = {
{
	name = "melee",
	interval = 2 * 1000,
	attack = 30,
	skill = 70,
	effect = CONST_ME_DRAWBLOOD
},
{
	name = "combat",
	interval = 2 * 1000,
	chance = 15,
	minDamage = 0,
	maxDamage = -80,
	range = 7,
	type = COMBAT_PHYSICALDAMAGE,
	shootEffect = CONST_ANI_ARROW
}
}

monster.defenses = {
	defense = 7,
	armor = 7,
}

monster.elements = {
{
	type = COMBAT_HOLYDAMAGE,
	percent = 20
},
{
	type = COMBAT_DEATHDAMAGE,
	percent = -10
}
}

monster.immunities = {
{
	type = "invisible",
	condition = true
}
}

mType:register(monster)
