local mType = Game.createMonsterType("Poison Spider")
local monster = {}
monster.description = "a poison spider"
monster.experience = 22
monster.outfit = {lookType = 36}

monster.health = 26
monster.maxHealth = monster.health
monster.race = "venom"
monster.corpse = 5974
monster.speed = 160

monster.flags = {
	summonable = true,
	attackable = true,
	hostile = true,
	illusionable = true,
	convinceable = false,
	pushable = true,
	canpushitems = false,
	canpushcreatures = false,
	targetDistance = 1,
	staticAttackChance = 90,
	canwalkonenergy = false,
	canwalkonfire = false
}

monster.loot = {
{
	id = "gold coin",
	chance = 75000,
	maxCount = 4
},
{
	id = "poison spider shell",
	chance = 1140
}
}

monster.attacks = {
{
	name = "melee",
	interval = 2 * 1000,
	attack = 20,
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

monster.immunities = {
{
	type = "earth",
	combat = true,
	condition = true
}
}

mType:register(monster)
