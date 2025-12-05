local mType = Game.createMonsterType("Slime")
local monster = {}
monster.description = "a slime"
monster.experience = 160
monster.outfit = {lookType = 19}

monster.health = 150
monster.maxHealth = monster.health
monster.race = "venom"
monster.corpse = 1496
monster.speed = 120
monster.maxSummons = 3

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
	canwalkonfire = false
}

monster.summons = {
{
	name = "Squidgy Slime",
	chance = 10,
	interval = 2 * 1000
}
}

monster.voices = {
	interval = 5000,
	chance = 10,
	{text = "Blubb", yell = false},
}

monster.attacks = {
{
	name = "melee",
	interval = 2 * 1000,
	attack = 110,
	skill = 70,
	effect = CONST_ME_DRAWBLOOD
}
}

monster.defenses = {
	defense = 3,
	armor = 3,
}

monster.elements = {
{
	type = COMBAT_ICEDAMAGE,
	percent = 20
},
{
	type = COMBAT_FIREDAMAGE,
	percent = -10
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
}
}

mType:register(monster)
