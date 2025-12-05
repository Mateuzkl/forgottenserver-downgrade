local mType = Game.createMonsterType("Quara Mantassin Scout")
local monster = {}
monster.description = "a quara mantassin scout"
monster.experience = 100
monster.outfit = {lookType = 72}

monster.health = 220
monster.maxHealth = monster.health
monster.race = "blood"
monster.corpse = 6064
monster.speed = 140

monster.changeTarget = {interval = 4 * 1000, chance = 10}

monster.flags = {
	summonable = false,
	attackable = true,
	hostile = true,
	illusionable = false,
	convinceable = true,
	pushable = false,
	canpushitems = true,
	canpushcreatures = false,
	staticAttackChance = 90,
	targetDistance = 1,
	canwalkonenergy = false,
	canwalkonpoison = false
}

monster.voices = {
	interval = 5000,
	chance = 10,
	{text = "Zuerk Pachak!", yell = false},
	{text = "Shrrrr", yell = false},
}

monster.loot = {
{
	id = "gold coin",
	chance = 93987,
	maxCount = 30
},
{
	id = "mantassin tail",
	chance = 7916
},
{
	id = "chain armor",
	chance = 4990
},
{
	id = "small sapphire",
	chance = 996
},
{
	id = "skull (item)",
	chance = 979
},
{
	id = "two handed sword",
	chance = 802
},
{
	id = "stealth ring",
	chance = 711
},
{
	id = "fish fin",
	chance = 365
}
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
	defense = 7,
	armor = 7,
}

monster.elements = {
{
	type = COMBAT_ENERGYDAMAGE,
	percent = -10
}
}

monster.immunities = {
{
	type = "ice",
	combat = true,
	condition = true
},
{
	type = "fire",
	combat = true,
	condition = true
},
{
	type = "invisible",
	condition = true
},
{
	type = "lifedrain",
	combat = true
}
}

mType:register(monster)
