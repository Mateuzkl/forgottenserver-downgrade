local mType = Game.createMonsterType("Primitive")
local monster = {}
monster.description = "Primitive"
monster.experience = 45
monster.outfit = {lookType = 143}

monster.health = 200
monster.maxHealth = monster.health
monster.race = "blood"
monster.corpse = 6080
monster.speed = 300

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
	staticAttackChance = 90,
	targetDistance = 1
}

monster.voices = {
	interval = 5000,
	chance = 10,
	{text = "We don't need a future!", yell = false},
	{text = "I'll rook you all!", yell = false},
	{text = "They thought they'd beaten us!", yell = false},
	{text = "You are history!", yell = false},
	{text = "There can only be one world!", yell = false},
	{text = "Valor who?", yell = false},
	{text = "Die noob!", yell = false},
	{text = "There are no dragons!", yell = false},
	{text = "I'll quit forever! Again...", yell = false},
	{text = "You all are noobs!", yell = false},
	{text = "Beware of the cyclops!", yell = false},
	{text = "Just had a disconnect.", yell = false},
	{text = "Magic is only good for girls!", yell = false},
	{text = "We'll be back!", yell = false},
}

monster.loot = {
{
	id = "gold coin",
	chance = 12500,
	maxCount = 10
},
{
	id = "sabre",
	chance = 10250
},
{
	id = "axe",
	chance = 12250
},
{
	id = "studded helmet",
	chance = 9500
},
{
	id = "studded armor",
	chance = 7000
},
{
	id = "studded shield",
	chance = 1200
},
{
	id = "blue surprise bag",
	chance = 500
},
{
	id = "red surprise bag",
	chance = 500
}
}

monster.attacks = {
{
	name = "melee",
	interval = 2 * 1000,
	attack = 32,
	skill = 70,
	effect = CONST_ME_DRAWBLOOD
},
{
	name = "drunk",
	interval = 1 * 1000,
	chance = 20,
	range = 7,
	shootEffect = CONST_ANI_ENERGY
},
{
	name = "combat",
	interval = 1 * 1000,
	chance = 34,
	minDamage = -20,
	maxDamage = -20,
	range = 7,
	radius = 3,
	target = true,
	type = COMBAT_FIREDAMAGE,
	shootEffect = CONST_ANI_FIRE,
	effect = CONST_ME_FIREAREA
},
{
	name = "outfit",
	interval = 1 * 1000,
	chance = 2,
	radius = 4,
	target = false,
	duration = 10 * 1000,
	effect = CONST_ME_BLUEBUBBLE
}
}

monster.defenses = {
	defense = 25,
	armor = 20,
}

monster.immunities = {
{
	type = "energy",
	combat = true,
	condition = true
},
{
	type = "fire",
	combat = true,
	condition = true
},
{
	type = "drunk",
	condition = true
},
{
	type = "invisible",
	condition = true
}
}

mType:register(monster)
