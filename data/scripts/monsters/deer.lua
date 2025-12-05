local mType = Game.createMonsterType("Deer")
local monster = {}
monster.description = "a deer"
monster.experience = 0
monster.outfit = {lookType = 31}

monster.health = 25
monster.maxHealth = monster.health
monster.race = "blood"
monster.corpse = 5970
monster.speed = 196

monster.changeTarget = {interval = 4 * 1000, chance = 20}

monster.flags = {
	summonable = true,
	attackable = true,
	hostile = false,
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

monster.loot = {
{
	id = "meat",
	chance = 80405
},
{
	id = "ham",
	chance = 51110
},
{
	id = "antlers",
	chance = 1063
}
}

monster.attacks = {
{
	name = "melee",
	interval = 2 * 1000,
	attack = 1,
	skill = 70,
	effect = CONST_ME_DRAWBLOOD
}
}

monster.defenses = {
	defense = 2,
	armor = 2,
}

mType:register(monster)
