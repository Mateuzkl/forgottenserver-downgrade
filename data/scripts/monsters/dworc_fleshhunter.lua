local mType = Game.createMonsterType("Dworc Fleshhunter")
local monster = {}
monster.description = "a dworc fleshhunter"
monster.experience = 40
monster.outfit = {lookType = 215}

monster.health = 85
monster.maxHealth = monster.health
monster.race = "blood"
monster.corpse = 6058
monster.speed = 148

monster.flags = {
	summonable = false,
	attackable = true,
	hostile = true,
	illusionable = true,
	convinceable = false,
	pushable = true,
	canpushitems = false,
	canpushcreatures = false,
	targetDistance = 1,
	staticAttackChance = 90,
	canwalkonenergy = false,
	canwalkonfire = false
}

monster.voices = {
	interval = 5000,
	chance = 10,
	{text = "Grak brrretz!", yell = false},
	{text = "Grow truk grrrrr.", yell = false},
	{text = "Prek tars, dekklep zurk.", yell = false},
}

monster.loot = {
{
	id = "gold coin",
	chance = 74874,
	maxCount = 13
},
{
	id = "leather armor",
	chance = 10817
},
{
	id = "cleaver",
	chance = 8991
},
{
	id = "torch",
	chance = 5553
},
{
	id = "skull (item)",
	chance = 3027,
	maxCount = 3
},
{
	id = "poison dagger",
	chance = 2061
},
{
	id = "hunting spear",
	chance = 1950
},
{
	id = "bone shield",
	chance = 1035
},
{
	id = "tribal mask",
	chance = 480
},
{
	id = "ripper lance",
	chance = 97
}
}

monster.attacks = {
{
	name = "melee",
	interval = 2 * 1000,
	attack = 25,
	skill = 70,
	effect = CONST_ME_DRAWBLOOD
},
{
	name = "combat",
	interval = 2 * 1000,
	chance = 10,
	minDamage = 0,
	maxDamage = -15,
	range = 7,
	type = COMBAT_PHYSICALDAMAGE,
	shootEffect = CONST_ANI_THROWINGKNIFE
}
}

monster.defenses = {
	defense = 3,
	armor = 3,
}

monster.elements = {
{
	type = COMBAT_DEATHDAMAGE,
	percent = -13
},
{
	type = COMBAT_FIREDAMAGE,
	percent = -8
},
{
	type = COMBAT_ICEDAMAGE,
	percent = -10
}
}

monster.immunities = {
{
	type = "earth",
	combat = true,
	condition = true
}
}

mType:register(monster)
