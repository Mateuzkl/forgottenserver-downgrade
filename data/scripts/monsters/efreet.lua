local mType = Game.createMonsterType("Efreet")
local monster = {}
monster.description = "an efreet"
monster.experience = 410
monster.outfit = {lookType = 103}

monster.health = 550
monster.maxHealth = monster.health
monster.race = "blood"
monster.corpse = 6032
monster.speed = 234
monster.maxSummons = 2

monster.changeTarget = {interval = 4 * 1000, chance = 10}

monster.flags = {
	summonable = false,
	attackable = true,
	hostile = true,
	illusionable = false,
	convinceable = false,
	pushable = false,
	canpushitems = true,
	canpushcreatures = false,
	targetDistance = 1,
	staticAttackChance = 90,
	canwalkonenergy = false,
	canwalkonfire = false,
	canwalkonpoison = false
}

monster.summons = {
{
	name = "green djinn",
	chance = 10,
	interval = 2 * 1000
}
}

monster.voices = {
	interval = 5000,
	chance = 10,
	{text = "I grant you a deathwish!", yell = false},
	{text = "Good wishes are for fairytales", yell = false},
}

monster.loot = {
{
	id = "gold coin",
	chance = 47000,
	maxCount = 100
},
{
	id = "gold coin",
	chance = 47000,
	maxCount = 30
},
{
	id = "royal spear",
	chance = 15570,
	maxCount = 3
},
{
	id = "strong mana potion",
	chance = 10500
},
{
	id = "pear",
	chance = 9390,
	maxCount = 5
},
{
	id = "jewelled belt",
	chance = 8540
},
{
	id = "small emerald",
	chance = 7200
},
{
	id = "heavy machete",
	chance = 5000
},
{
	id = "green piece of cloth",
	chance = 3000
},
{
	id = 1860,
	chance = 2200
},
{
	id = "noble turban",
	chance = 1130
},
{
	id = "magma monocle",
	chance = 420
},
{
	id = "wand of inferno",
	chance = 390
},
{
	id = "mystic turban",
	chance = 180
},
{
	id = "small oil lamp",
	chance = 180
},
{
	id = "green gem",
	chance = 150
}
}

monster.attacks = {
{
	name = "melee",
	interval = 2 * 1000,
	attack = 110,
	skill = 70,
	effect = CONST_ME_DRAWBLOOD
},
{
	name = "combat",
	interval = 2 * 1000,
	chance = 15,
	minDamage = -40,
	maxDamage = -110,
	range = 7,
	type = COMBAT_FIREDAMAGE,
	shootEffect = CONST_ANI_FIRE
},
{
	name = "combat",
	interval = 2 * 1000,
	chance = 10,
	minDamage = -30,
	maxDamage = -90,
	radius = 3,
	target = false,
	type = COMBAT_ENERGYDAMAGE,
	effect = CONST_ANI_ENERGY
},
{
	name = "combat",
	interval = 2 * 1000,
	chance = 15,
	minDamage = -65,
	maxDamage = -120,
	range = 7,
	type = COMBAT_ENERGYDAMAGE,
	shootEffect = CONST_ANI_ENERGY,
	effect = CONST_ANI_ENERGY
},
{
	name = "speed",
	interval = 2 * 1000,
	chance = 15,
	range = 7,
	speed = -650,
	duration = 15 * 1000,
	effect = CONST_ME_MAGIC_RED
},
{
	name = "drunk",
	interval = 2 * 1000,
	chance = 10,
	range = 7,
	duration = 6 * 1000,
	shootEffect = CONST_ANI_ENERGY
},
{
	name = "outfit",
	interval = 2 * 1000,
	chance = 1,
	range = 7,
	duration = 4 * 1000,
	effect = CONST_ME_MAGIC_BLUE
}
}

monster.defenses = {
	defense = 24,
	armor = 24,
	{
			name = "combat",
			interval = 2 * 1000,
			chance = 15,
			type = COMBAT_HEALING,
			minDamage = 50,
			maxDamage = 80,
			effect = CONST_ME_MAGIC_BLUE
		},
}

monster.elements = {
{
	type = COMBAT_FIREDAMAGE,
	percent = 90
},
{
	type = COMBAT_ENERGYDAMAGE,
	percent = 60
},
{
	type = COMBAT_EARTHDAMAGE,
	percent = 10
},
{
	type = COMBAT_DEATHDAMAGE,
	percent = 20
},
{
	type = COMBAT_ICEDAMAGE,
	percent = -5
},
{
	type = COMBAT_HOLYDAMAGE,
	percent = -8
}
}

monster.immunities = {
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
