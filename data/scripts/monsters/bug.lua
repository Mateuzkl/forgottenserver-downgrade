local mType = Game.createMonsterType("Bug")
local monster = {}
monster.description = "a bug"
monster.experience = 18
monster.outfit = {lookType = 45}

monster.health = 29
monster.maxHealth = monster.health
monster.race = "venom"
monster.corpse = 5990
monster.speed = 160

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

monster.loot = {
{
	id = "gold coin",
	chance = 50000,
	maxCount = 6
},
{
	id = 2679,
	chance = 3000,
	maxCount = 3
}
}

monster.attacks = {
{
	name = "melee",
	interval = 2 * 1000,
	attack = 23,
	skill = 70,
	effect = CONST_ME_DRAWBLOOD
}
}

monster.defenses = {
	defense = 2,
	armor = 2,
}

monster.elements = {
{
	type = COMBAT_FIREDAMAGE,
	percent = -10
}
}

mType:register(monster)
