local mType = Game.createMonsterType("Elf")
local monster = {}
monster.description = "an elf"
monster.experience = 42
monster.outfit = {lookType = 62}

monster.health = 100
monster.maxHealth = monster.health
monster.race = "blood"
monster.corpse = 6003
monster.speed = 190

monster.flags = {
	summonable = false,
	attackable = true,
	hostile = true,
	illusionable = true,
	convinceable = true,
	pushable = true,
	canpushitems = false,
	canpushcreatures = false,
	targetDistance = 1,
	staticAttackChance = 90,
	canwalkonenergy = false,
	canwalkonfire = false,
	canwalkonpoison = false
}

monster.voices = {
	interval = 5000,
	chance = 10,
	{text = "Ulathil beia Thratha!", yell = false},
	{text = "Bahaha aka!", yell = false},
	{text = "You are not welcome here.", yell = false},
	{text = "Flee as long as you can.", yell = false},
	{text = "Death to the defilers!", yell = false},
}

monster.loot = {
{
	id = "gold coin",
	chance = 44661,
	maxCount = 30
},
{
	id = "plum",
	chance = 20013,
	maxCount = 2
},
{
	id = "studded helmet",
	chance = 15055
},
{
	id = "leather boots",
	chance = 11113
},
{
	id = "longsword",
	chance = 10918
},
{
	id = "studded armor",
	chance = 9010
},
{
	id = "plate shield",
	chance = 8957
},
{
	id = "arrow",
	chance = 7026,
	maxCount = 3
},
{
	id = "elvish talisman",
	chance = 1984
},
{
	id = "heaven blossom",
	chance = 1011
}
}

monster.attacks = {
{
	name = "melee",
	interval = 2 * 1000,
	attack = 15,
	skill = 70,
	effect = CONST_ME_DRAWBLOOD
},
{
	name = "combat",
	interval = 2 * 1000,
	chance = 10,
	minDamage = 0,
	maxDamage = -25,
	range = 7,
	type = COMBAT_PHYSICALDAMAGE,
	shootEffect = CONST_ANI_ARROW
}
}

monster.defenses = {
	defense = 6,
	armor = 6,
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
