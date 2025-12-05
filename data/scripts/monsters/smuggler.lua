local mType = Game.createMonsterType("Smuggler")
local monster = {}
monster.description = "a smuggler"
monster.experience = 48
monster.outfit = {lookType = 134}

monster.health = 130
monster.maxHealth = monster.health
monster.race = "blood"
monster.corpse = 20507
monster.speed = 176

monster.changeTarget = {interval = 4 * 1000, chance = 10}

monster.flags = {
	summonable = true,
	attackable = true,
	hostile = true,
	illusionable = true,
	convinceable = true,
	pushable = false,
	canpushitems = true,
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
	{text = "I will silence you forever!", yell = false},
	{text = "You saw something you shouldn't!", yell = false},
}

monster.loot = {
{
	id = "gold coin",
	chance = 79815,
	maxCount = 10
},
{
	id = "torch",
	chance = 30203,
	maxCount = 2
},
{
	id = "leather legs",
	chance = 14782
},
{
	id = "ham",
	chance = 10185
},
{
	id = "short sword",
	chance = 10051
},
{
	id = "leather helmet",
	chance = 10036
},
{
	id = "knife",
	chance = 10012
},
{
	id = "sword",
	chance = 5012
},
{
	id = "raspberry",
	chance = 4896,
	maxCount = 5
},
{
	id = "combat knife",
	chance = 4042
},
{
	id = "deer trophy",
	chance = 112
}
}

monster.attacks = {
{
	name = "melee",
	interval = 2 * 1000,
	attack = 60,
	skill = 70,
	effect = CONST_ME_DRAWBLOOD
}
}

monster.defenses = {
	defense = 8,
	armor = 8,
}

monster.elements = {
{
	type = COMBAT_PHYSICALDAMAGE,
	percent = -5
},
{
	type = COMBAT_DEATHDAMAGE,
	percent = -5
}
}

mType:register(monster)
