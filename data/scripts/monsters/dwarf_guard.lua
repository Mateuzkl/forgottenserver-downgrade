local mType = Game.createMonsterType("Dwarf Guard")
local monster = {}
monster.description = "a dwarf guard"
monster.experience = 165
monster.outfit = {lookType = 70}

monster.health = 245
monster.maxHealth = monster.health
monster.race = "blood"
monster.corpse = 6013
monster.speed = 206

monster.changeTarget = {interval = 4 * 1000, chance = 10}

monster.flags = {
	summonable = true,
	attackable = true,
	hostile = true,
	illusionable = true,
	convinceable = true,
	pushable = false,
	canpushitems = true,
	canpushcreatures = true,
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
	chance = 55243,
	maxCount = 2
},
{
	id = "leather boots",
	chance = 40075
},
{
	id = "gold coin",
	chance = 39985,
	maxCount = 30
},
{
	id = "scale armor",
	chance = 9009
},
{
	id = "battle shield",
	chance = 6014
},
{
	id = "battle hammer",
	chance = 3849
},
{
	id = "steel helmet",
	chance = 1549
},
{
	id = "double axe",
	chance = 592
},
{
	id = "iron ore",
	chance = 481
},
{
	id = "health potion",
	chance = 394
},
{
	id = "axe ring",
	chance = 198
},
{
	id = "small amethyst",
	chance = 120
}
}

monster.attacks = {
{
	name = "melee",
	interval = 2 * 1000,
	attack = 140,
	skill = 70,
	effect = CONST_ME_DRAWBLOOD
}
}

monster.defenses = {
	defense = 15,
	armor = 15,
}

monster.elements = {
{
	type = COMBAT_EARTHDAMAGE,
	percent = 20
},
{
	type = COMBAT_PHYSICALDAMAGE,
	percent = 20
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

monster.immunities = {
{
	type = "invisible",
	condition = true
}
}

mType:register(monster)
