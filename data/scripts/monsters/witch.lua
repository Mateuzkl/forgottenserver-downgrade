local mType = Game.createMonsterType("Witch")
local monster = {}
monster.description = "a witch"
monster.experience = 120
monster.outfit = {lookType = 54}

monster.health = 300
monster.maxHealth = monster.health
monster.race = "blood"
monster.corpse = 20535
monster.speed = 204

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
	targetDistance = 4,
	staticAttackChance = 90,
	canwalkonfire = false,
	canwalkonpoison = false
}

monster.voices = {
	interval = 5000,
	chance = 10,
	{text = "Horax pokti!", yell = false},
	{text = "Herba budinia ex!", yell = false},
	{text = "Hihihihi!", yell = false},
}

monster.loot = {
{
	id = "gold coin",
	chance = 63913,
	maxCount = 40
},
{
	id = "cookie",
	chance = 30001,
	maxCount = 8
},
{
	id = "wolf tooth chain",
	chance = 10121
},
{
	id = "witch broom",
	chance = 10009
},
{
	id = "star herb",
	chance = 9005
},
{
	id = "leather boots",
	chance = 5017
},
{
	id = "cape",
	chance = 4958
},
{
	id = "sickle",
	chance = 3892
},
{
	id = "garlic necklace",
	chance = 2515
},
{
	id = "coat",
	chance = 2008
},
{
	id = "necrotic rod",
	chance = 1085
},
{
	id = "silver dagger",
	chance = 556
},
{
	id = "witch hat",
	chance = 90
},
{
	id = "stuffed toad",
	chance = 6
}
}

monster.attacks = {
{
	name = "melee",
	interval = 2 * 1000,
	attack = 20,
	skill = 70,
	effect = CONST_ME_DRAWBLOOD
},
{
	name = "combat",
	interval = 2 * 1000,
	chance = 20,
	minDamage = -30,
	maxDamage = -75,
	range = 7,
	type = COMBAT_FIREDAMAGE,
	shootEffect = CONST_ANI_FIRE,
	effect = CONST_ANI_FIRE
},
{
	name = "firefield",
	interval = 2 * 1000,
	chance = 10,
	range = 7,
	radius = 1,
	target = true,
	shootEffect = CONST_ANI_FIRE
},
{
	name = "outfit",
	interval = 2 * 1000,
	chance = 1,
	range = 5,
	target = true,
	duration = 2 * 1000
}
}

monster.defenses = {
	defense = 8,
	armor = 8,
}

monster.elements = {
{
	type = COMBAT_EARTHDAMAGE,
	percent = 20
},
{
	type = COMBAT_DEATHDAMAGE,
	percent = -5
},
{
	type = COMBAT_PHYSICALDAMAGE,
	percent = -5
}
}

monster.immunities = {
{
	type = "invisible",
	condition = true
},
{
	type = "energy",
	combat = true,
	condition = true
}
}

mType:register(monster)
