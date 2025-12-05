local mType = Game.createMonsterType("Monk")
local monster = {}
monster.description = "a monk"
monster.experience = 200
monster.outfit = {lookType = 57}

monster.health = 240
monster.maxHealth = monster.health
monster.race = "blood"
monster.corpse = 20371
monster.speed = 240

monster.changeTarget = {interval = 4 * 1000, chance = 10}

monster.flags = {
	summonable = true,
	attackable = true,
	hostile = true,
	illusionable = true,
	convinceable = false,
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
	{text = "Repent Heretic!", yell = false},
	{text = "A prayer to the almighty one!", yell = false},
	{text = "I will punish the sinners!", yell = false},
}

monster.loot = {
{
	id = "bread",
	chance = 20000
},
{
	id = "gold coin",
	chance = 15000,
	maxCount = 18
},
{
	id = "book of prayers",
	chance = 4930
},
{
	id = "rope belt",
	chance = 3150
},
{
	id = "ankh",
	chance = 2240
},
{
	id = 1949,
	chance = 1700
},
{
	id = "life crystal",
	chance = 1002
},
{
	id = "safety pin",
	chance = 1001
},
{
	id = "brown flask",
	chance = 890
},
{
	id = 2044,
	chance = 840
},
{
	id = "sandals",
	chance = 660
},
{
	id = 2401,
	chance = 440
},
{
	id = "power ring",
	chance = 100
}
}

monster.attacks = {
{
	name = "melee",
	interval = 2 * 1000,
	attack = 130,
	skill = 70,
	effect = CONST_ME_DRAWBLOOD
}
}

monster.defenses = {
	defense = 30,
	armor = 30,
	{
			name = "combat",
			interval = 2 * 1000,
			chance = 15,
			type = COMBAT_HEALING,
			minDamage = 30,
			maxDamage = 50,
			effect = CONST_ME_MAGIC_BLUE
		},
	{
			name = "speed",
			interval = 2 * 1000,
			chance = 15,
			speed = 300,
			duration = 5 * 1000,
			effect = CONST_ME_MAGIC_RED
		},
}

monster.elements = {
{
	type = COMBAT_HOLYDAMAGE,
	percent = 50
},
{
	type = COMBAT_DEATHDAMAGE,
	percent = 50
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
}
}

mType:register(monster)
