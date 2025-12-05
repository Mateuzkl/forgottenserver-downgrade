local mType = Game.createMonsterType("Hacker")
local monster = {}
monster.description = "a hacker"
monster.experience = 45
monster.outfit = {lookType = 8}

monster.health = 430
monster.maxHealth = monster.health
monster.race = "blood"
monster.corpse = 5980
monster.speed = 250

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
	staticAttackChance = 90
}

monster.voices = {
	interval = 5000,
	chance = 10,
	{text = "Feel the wrath of me dos attack!", yell = false},
	{text = "You're next!", yell = false},
	{text = "Gimme free gold!", yell = false},
	{text = "Me sooo smart!", yell = false},
	{text = "Me have a cheating link for you!", yell = false},
	{text = "Me is GM!", yell = false},
	{text = "Gimme your password!", yell = false},
	{text = "Me just need the code!", yell = false},
	{text = "Me not stink!", yell = false},
	{text = "Me other char is highlevel!", yell = false},
}

monster.loot = {
{
	id = "lamp",
	chance = 6666
},
{
	id = "gold coin",
	chance = 100000,
	maxCount = 12
},
{
	id = "battle axe",
	chance = 5000
},
{
	id = "halberd",
	chance = 10000
},
{
	id = "axe",
	chance = 10000
},
{
	id = "war hammer",
	chance = 5000
},
{
	id = "ham",
	chance = 50000
},
{
	id = "present",
	chance = 5538
},
{
	id = "present",
	chance = 1538
}
}

monster.attacks = {
{
	name = "melee",
	interval = 2 * 1000,
	attack = 83,
	skill = 70,
	effect = CONST_ME_DRAWBLOOD
}
}

monster.defenses = {
	defense = 12,
	armor = 15,
	{
			name = "speed",
			interval = 1 * 1000,
			chance = 15,
			speed = 290,
			duration = 6 * 1000,
			effect = CONST_ME_MAGIC_RED
		},
	{
			name = "outfit",
			interval = 10 * 1000,
			chance = 15,
			effect = CONST_ME_MAGIC_RED
		},
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
	type = "earth",
	combat = true,
	condition = true
},
{
	type = "drunk",
	condition = true
}
}

mType:register(monster)
