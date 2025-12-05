local mType = Game.createMonsterType("Dwarf")
local monster = {}
monster.description = "a dwarf"
monster.experience = 45
monster.outfit = {lookType = 69}

monster.health = 90
monster.maxHealth = monster.health
monster.race = "blood"
monster.corpse = 6007
monster.speed = 170

monster.flags = {
	summonable = true,
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
	{text = "Hail Durin!", yell = false},
}

monster.loot = {
{
	id = "white mushroom",
	chance = 50140
},
{
	id = "gold coin",
	chance = 35361,
	maxCount = 8
},
{
	id = "hatchet",
	chance = 24739
},
{
	id = "axe",
	chance = 14596
},
{
	id = "pick",
	chance = 10143
},
{
	id = "copper shield",
	chance = 10098
},
{
	id = "leather legs",
	chance = 9682
},
{
	id = "studded armor",
	chance = 8017
},
{
	id = "letter",
	chance = 7929
},
{
	id = "dwarven ring",
	chance = 95
},
{
	id = "iron ore",
	chance = 83
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
	defense = 8,
	armor = 8,
}

monster.elements = {
{
	type = COMBAT_EARTHDAMAGE,
	percent = 10
},
{
	type = COMBAT_FIREDAMAGE,
	percent = -5
},
{
	type = COMBAT_DEATHDAMAGE,
	percent = -5
}
}

mType:register(monster)
