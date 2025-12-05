local mType = Game.createMonsterType("Wolf")
local monster = {}
monster.description = "a wolf"
monster.experience = 18
monster.outfit = {lookType = 27}

monster.health = 25
monster.maxHealth = monster.health
monster.race = "blood"
monster.corpse = 5968
monster.speed = 164

monster.flags = {
	summonable = true,
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
	{text = "Yoooohhuuuu!", yell = false},
	{text = "Grrrrrrr", yell = false},
}

monster.loot = {
{
	id = "meat",
	chance = 70000,
	maxCount = 2
},
{
	id = "wolf paw",
	chance = 1000
}
}

monster.attacks = {
{
	name = "melee",
	interval = 2 * 1000,
	attack = 17,
	skill = 70,
	effect = CONST_ME_DRAWBLOOD
}
}

monster.defenses = {
	defense = 1,
	armor = 1,
}

monster.elements = {
{
	type = COMBAT_HOLYDAMAGE,
	percent = 30
},
{
	type = COMBAT_ICEDAMAGE,
	percent = -10
},
{
	type = COMBAT_DEATHDAMAGE,
	percent = -5
}
}

mType:register(monster)
