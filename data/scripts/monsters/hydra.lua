local mType = Game.createMonsterType("Hydra")
local monster = {}
monster.description = "a hydra"
monster.experience = 2100
monster.outfit = {lookType = 121}

monster.health = 2350
monster.maxHealth = monster.health
monster.race = "blood"
monster.corpse = 6048
monster.speed = 206

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
	targetDistance = 1,
	staticAttackChance = 90,
	canwalkonenergy = true,
	canwalkonfire = true,
	canwalkonpoison = true
}

monster.voices = {
	interval = 5000,
	chance = 10,
	{text = "FCHHHHH", yell = true},
	{text = "HISSSS", yell = true},
}

monster.loot = {
{
	id = "gold coin",
	chance = 87759,
	maxCount = 246
},
{
	id = "ham",
	chance = 60233
},
{
	id = "platinum coin",
	chance = 49522,
	maxCount = 3
},
{
	id = "hydra head",
	chance = 10149
},
{
	id = "small sapphire",
	chance = 4949
},
{
	id = "cucumber",
	chance = 4941
},
{
	id = "ring of healing",
	chance = 1215
},
{
	id = "knight armor",
	chance = 1098
},
{
	id = "hydra egg",
	chance = 942
},
{
	id = "stone skin amulet",
	chance = 902
},
{
	id = "warrior helmet",
	chance = 823
},
{
	id = "life crystal",
	chance = 512
},
{
	id = "strong mana potion",
	chance = 465
},
{
	id = "medusa shield",
	chance = 223
},
{
	id = "royal helmet",
	chance = 223
},
{
	id = "boots of haste",
	chance = 95
}
}

monster.attacks = {
{
	name = "melee",
	interval = 2 * 1000,
	attack = 270,
	skill = 70,
	effect = CONST_ME_DRAWBLOOD
},
{
	name = "speed",
	interval = 2 * 1000,
	chance = 25,
	range = 7,
	radius = 4,
	target = true,
	speed = -700,
	duration = 15 * 1000,
	shootEffect = CONST_ANI_POISON,
	effect = CONST_ME_GREENBUBBLE
},
{
	name = "combat",
	interval = 2 * 1000,
	chance = 10,
	minDamage = -100,
	maxDamage = -250,
	length = 8,
	spread = 3,
	type = COMBAT_ICEDAMAGE,
	effect = CONST_ME_BLUEBUBBLE
},
{
	name = "combat",
	interval = 2 * 1000,
	chance = 10,
	minDamage = -80,
	maxDamage = -155,
	target = true,
	type = COMBAT_ICEDAMAGE,
	shootEffect = CONST_ANI_SMALLICE
},
{
	name = "combat",
	interval = 2 * 1000,
	chance = 10,
	minDamage = -66,
	maxDamage = -320,
	length = 8,
	spread = 3,
	type = COMBAT_EARTHDAMAGE,
	effect = CONST_ME_CARNIPHILA
}
}

monster.defenses = {
	defense = 27,
	armor = 27,
	{
			name = "combat",
			interval = 2 * 1000,
			chance = 25,
			type = COMBAT_HEALING,
			minDamage = 260,
			maxDamage = 407,
			effect = CONST_ME_MAGIC_BLUE
		},
}

monster.elements = {
{
	type = COMBAT_ICEDAMAGE,
	percent = 50
},
{
	type = COMBAT_HOLYDAMAGE,
	percent = 30
},
{
	type = COMBAT_PHYSICALDAMAGE,
	percent = -5
},
{
	type = COMBAT_ENERGYDAMAGE,
	percent = -10
}
}

monster.immunities = {
{
	type = "earth",
	combat = true,
	condition = true
},
{
	type = "lifedrain",
	combat = true
},
{
	type = "paralyze",
	condition = true
},
{
	type = "invisible",
	condition = true
}
}

mType:register(monster)
