local mType = Game.createMonsterType("Dark Torturer")
local monster = {}
monster.description = "a dark torturer"
monster.experience = 4650
monster.outfit = {lookType = 234}

monster.health = 7350
monster.maxHealth = monster.health
monster.race = "blood"
monster.corpse = 6328
monster.speed = 370

monster.changeTarget = {interval = 4 * 1000, chance = 10}

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
	staticAttackChance = 80,
	canwalkonenergy = false
}

monster.voices = {
	interval = 5000,
	chance = 10,
	{text = "You like it, don't you?", yell = false},
	{text = "IahaEhheAie!", yell = false},
	{text = "It's party time!", yell = false},
	{text = "Harrr, Harrr!", yell = false},
	{text = "The torturer is in!", yell = false},
}

monster.loot = {
{
	id = "gold coin",
	chance = 100000,
	maxCount = 199
},
{
	id = "ham",
	chance = 65733
},
{
	id = "platinum coin",
	chance = 57202,
	maxCount = 8
},
{
	id = "flask of demonic blood",
	chance = 35009
},
{
	id = "soul orb",
	chance = 24088
},
{
	id = "great mana potion",
	chance = 15083,
	maxCount = 2
},
{
	id = "great health potion",
	chance = 9602,
	maxCount = 2
},
{
	id = "demonic essence",
	chance = 8860
},
{
	id = "saw",
	chance = 5316
},
{
	id = "steel boots",
	chance = 5007
},
{
	id = "gold ingot",
	chance = 3132
},
{
	id = "orichalcum pearl",
	chance = 2823,
	maxCount = 2
},
{
	id = "cat's paw",
	chance = 2061
},
{
	id = "death ring",
	chance = 1958
},
{
	id = "assassin star",
	chance = 1772,
	maxCount = 5
},
{
	id = "jewelled backpack",
	chance = 845
},
{
	id = "butcher's axe",
	chance = 762
},
{
	id = "vile axe",
	chance = 536
},
{
	id = "golden legs",
	chance = 82
}
}

monster.attacks = {
{
	name = "melee",
	interval = 2 * 1000,
	attack = 500,
	skill = 70,
	effect = CONST_ME_DRAWBLOOD
},
{
	name = "combat",
	interval = 2 * 1000,
	chance = 10,
	minDamage = 0,
	maxDamage = -781,
	range = 7,
	type = COMBAT_PHYSICALDAMAGE,
	shootEffect = CONST_ANI_THROWINGKNIFE
}
}

monster.defenses = {
	defense = 45,
	armor = 45,
	{
			name = "combat",
			interval = 2 * 1000,
			chance = 10,
			type = COMBAT_HEALING,
			minDamage = 200,
			maxDamage = 250,
			effect = CONST_ME_MAGIC_BLUE
		},
}

monster.elements = {
{
	type = COMBAT_ENERGYDAMAGE,
	percent = 30
},
{
	type = COMBAT_EARTHDAMAGE,
	percent = 90
},
{
	type = COMBAT_ICEDAMAGE,
	percent = -10
},
{
	type = COMBAT_HOLYDAMAGE,
	percent = -10
},
{
	type = COMBAT_DEATHDAMAGE,
	percent = 10
}
}

monster.immunities = {
{
	type = "fire",
	combat = true,
	condition = true
},
{
	type = "invisible",
	condition = true
}
}

mType:register(monster)
