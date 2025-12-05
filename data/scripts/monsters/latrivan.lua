local mType = Game.createMonsterType("Latrivan")
local monster = {}
monster.description = "Latrivan"
monster.experience = 10000
monster.outfit = {lookType = 12}

monster.health = 25000
monster.maxHealth = monster.health
monster.race = "fire"
monster.corpse = 8721
monster.speed = 390

monster.changeTarget = {interval = 5 * 1000, chance = 8}

monster.flags = {
	summonable = false,
	attackable = true,
	hostile = true,
	illusionable = false,
	convinceable = false,
	pushable = false,
	canpushitems = true,
	canpushcreatures = true,
	targetDistance = 1,
	staticAttackChance = 85,
	isboss = true
}

monster.voices = {
	interval = 5000,
	chance = 10,
	{text = "I might reward you for killing my brother ~ with a swift dead!", yell = true},
	{text = "Colateral damage is so fun!", yell = false},
	{text = "Golgordan you fool!", yell = false},
	{text = "We are the brothers of fear!", yell = false},
}

monster.loot = {
{
	id = "gold coin",
	chance = 100000,
	maxCount = 273
},
{
	id = "great health potion",
	chance = 37674,
	maxCount = 2
},
{
	id = "ring of healing",
	chance = 26977
},
{
	id = "double axe",
	chance = 19535
},
{
	id = "stealth ring",
	chance = 19535
},
{
	id = "magic light wand",
	chance = 17674
},
{
	id = "small amethyst",
	chance = 16744,
	maxCount = 19
},
{
	id = "black pearl",
	chance = 15814,
	maxCount = 15
},
{
	id = "white pearl",
	chance = 15814,
	maxCount = 13
},
{
	id = "silver dagger",
	chance = 14419
},
{
	id = "silver amulet",
	chance = 13953
},
{
	id = "death ring",
	chance = 13488
},
{
	id = "small sapphire",
	chance = 13488,
	maxCount = 10
},
{
	id = "stone skin amulet",
	chance = 13488
},
{
	id = "small emerald",
	chance = 12558,
	maxCount = 10
},
{
	id = "demon shield",
	chance = 11628
},
{
	id = "fire axe",
	chance = 10698
},
{
	id = "gold ingot",
	chance = 10698
},
{
	id = "demonic essence",
	chance = 10233
},
{
	id = "energy ring",
	chance = 9767
},
{
	id = "small diamond",
	chance = 8372,
	maxCount = 5
},
{
	id = "giant sword",
	chance = 6977
},
{
	id = "ice rapier",
	chance = 6977
},
{
	id = "gold ring",
	chance = 6512
},
{
	id = "devil helmet",
	chance = 5581
},
{
	id = "might ring",
	chance = 5581
},
{
	id = "onyx arrow",
	chance = 4186,
	maxCount = 8
},
{
	id = "protection amulet",
	chance = 4186
},
{
	id = "snakebite rod",
	chance = 4186
},
{
	id = "skull staff",
	chance = 3256
},
{
	id = "crystal ball",
	chance = 2791
},
{
	id = "mind stone",
	chance = 2791
},
{
	id = "moonlight rod",
	chance = 2791
},
{
	id = "boots of haste",
	chance = 2326
},
{
	id = "green gem",
	chance = 2326
},
{
	id = "wand of decay",
	chance = 2326
},
{
	id = "blue gem",
	chance = 1395
},
{
	id = "necrotic rod",
	chance = 1395
},
{
	id = "golden legs",
	chance = 930
},
{
	id = "golden sickle",
	chance = 930
},
{
	id = "mastermind shield",
	chance = 930
},
{
	id = "assassin star",
	chance = 465
}
}

monster.attacks = {
{
	name = "melee",
	interval = 2 * 1000,
	attack = 878,
	skill = 70,
	effect = CONST_ME_DRAWBLOOD
},
{
	name = "combat",
	interval = 1 * 1000,
	chance = 10,
	minDamage = -50,
	maxDamage = -850,
	length = 7,
	spread = 0,
	type = COMBAT_FIREDAMAGE,
	effect = CONST_ME_EXPLOSION
}
}

monster.defenses = {
	defense = 45,
	armor = 35,
}

monster.elements = {
{
	type = COMBAT_ICEDAMAGE,
	percent = -10
},
{
	type = COMBAT_ENERGYDAMAGE,
	percent = 35
},
{
	type = COMBAT_DEATHDAMAGE,
	percent = -12
}
}

monster.immunities = {
{
	type = "fire",
	combat = true,
	condition = true
}
}

mType:register(monster)
