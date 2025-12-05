local mType = Game.createMonsterType("Roaring Water Elemental")
local monster = {}
monster.description = "a roaring water elemental"
monster.experience = 1300
monster.outfit = {lookType = 11}

monster.health = 1750
monster.maxHealth = monster.health
monster.race = "undead"
monster.corpse = 8965
monster.speed = 390

monster.changeTarget = {interval = 20 * 1000, chance = 15}

monster.flags = {
	summonable = false,
	attackable = true,
	hostile = true,
	illusionable = false,
	convinceable = false,
	pushable = false,
	canpushitems = true,
	staticAttackChance = 90,
	targetDistance = 1,
	canwalkonenergy = false
}

monster.loot = {
{
	id = "small sapphire",
	chance = 4125,
	maxCount = 2
},
{
	id = "gold coin",
	chance = 27000,
	maxCount = 90
},
{
	id = "gold coin",
	chance = 27000,
	maxCount = 87
},
{
	id = "shiver arrow",
	chance = 1000,
	maxCount = 2
},
{
	id = "iced soil",
	chance = 9000
},
{
	id = "northwind rod",
	chance = 750
}
}

monster.attacks = {
{
	name = "melee",
	interval = 2 * 1000,
	attack = 225,
	skill = 70,
	effect = CONST_ME_DRAWBLOOD
},
{
	name = "combat",
	interval = 1 * 1000,
	chance = 15,
	minDamage = -240,
	maxDamage = -320,
	radius = 2,
	target = true,
	type = COMBAT_ICEDAMAGE,
	effect = CONST_ME_BLUEBUBBLE,
	shootEffect = CONST_ANI_ICE
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
			minDamage = 90,
			maxDamage = 150,
			effect = CONST_ME_MAGIC_BLUE
		},
}

monster.elements = {
{
	type = COMBAT_PHYSICALDAMAGE,
	percent = 50
},
{
	type = COMBAT_HOLYDAMAGE,
	percent = 30
}
}

monster.immunities = {
{
	type = "fire",
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
},
{
	type = "drown",
	condition = true
}
}

mType:register(monster)
