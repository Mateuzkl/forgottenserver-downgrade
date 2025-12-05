local mType = Game.createMonsterType("Bloodpaw")
local monster = {}
monster.description = "Bloodpaw"
monster.experience = 50
monster.outfit = {lookType = 42}

monster.health = 100
monster.maxHealth = monster.health
monster.race = "blood"
monster.corpse = 7349
monster.speed = 156

monster.flags = {
	summonable = false,
	attackable = true,
	hostile = true,
	illusionable = false,
	convinceable = false,
	pushable = false,
	canpushitems = true,
	targetDistance = 1,
	canwalkonenergy = false,
	canwalkonfire = false,
	canwalkonpoison = false
}

monster.attacks = {
{
	name = "melee",
	interval = 2 * 1000,
	attack = 40,
	skill = 70,
	effect = CONST_ME_DRAWBLOOD
}
}

monster.defenses = {
	defense = 8,
	armor = 3,
}

monster.elements = {
{
	type = COMBAT_FIREDAMAGE,
	percent = 20
},
{
	type = COMBAT_ENERGYDAMAGE,
	percent = -10
}
}

monster.immunities = {
{
	type = "outfit",
	condition = true
},
{
	type = "drunk",
	condition = true
},
{
	type = "invisible",
	condition = true
}
}

mType:register(monster)
