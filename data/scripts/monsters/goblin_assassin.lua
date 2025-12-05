local mType = Game.createMonsterType("Goblin Assassin")
local monster = {}
monster.description = "a goblin assassin"
monster.experience = 52
monster.outfit = {lookType = 296}

monster.health = 75
monster.maxHealth = monster.health
monster.race = "blood"
monster.corpse = 6002
monster.speed = 140

monster.flags = {
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
	{text = "Goblin Powahhh!", yell = false},
	{text = "Me kill you!", yell = false},
	{text = "Me green menace!", yell = false},
	{text = "Gobabunga!", yell = false},
	{text = "Gooobliiiins!", yell = false},
}

monster.loot = {
{
	id = "gold coin",
	chance = 49810,
	maxCount = 9
},
{
	id = "dagger",
	chance = 17664
},
{
	id = "fish",
	chance = 12472
},
{
	id = "bone",
	chance = 12282
},
{
	id = "small stone",
	chance = 10620,
	maxCount = 3
},
{
	id = "leather helmet",
	chance = 10130
},
{
	id = "small axe",
	chance = 9687
},
{
	id = "short sword",
	chance = 8816
},
{
	id = "leather armor",
	chance = 7281
},
{
	id = "mouldy cheese",
	chance = 6933
},
{
	id = "bone club",
	chance = 5065
}
}

monster.attacks = {
{
	name = "melee",
	interval = 2 * 1000,
	attack = 15,
	skill = 70,
	effect = CONST_ME_DRAWBLOOD
},
{
	name = "drunk",
	interval = 2 * 1000,
	chance = 10,
	duration = 10 * 1000,
	shootEffect = CONST_ANI_POISON
},
{
	name = "combat",
	interval = 2 * 1000,
	chance = 10,
	minDamage = 0,
	maxDamage = -35,
	range = 6,
	type = COMBAT_PHYSICALDAMAGE,
	shootEffect = CONST_ANI_THROWINGKNIFE
}
}

monster.defenses = {
	defense = 6,
	armor = 6,
	{
			name = "invisible",
			interval = 2 * 1000,
			chance = 10,
			effect = CONST_ME_MAGIC_BLUE
		},
	{
			name = "speed",
			interval = 2 * 1000,
			chance = 15,
			speed = 160,
			duration = 3 * 1000,
			effect = CONST_ME_MAGIC_RED
		},
}

monster.elements = {
{
	type = COMBAT_ENERGYDAMAGE,
	percent = 20
},
{
	type = COMBAT_EARTHDAMAGE,
	percent = -10
},
{
	type = COMBAT_HOLYDAMAGE,
	percent = 20
},
{
	type = COMBAT_DEATHDAMAGE,
	percent = -10
}
}

mType:register(monster)
