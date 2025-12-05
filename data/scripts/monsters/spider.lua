local mType = Game.createMonsterType("Spider")
local monster = {}
monster.description = "a spider"
monster.experience = 12
monster.outfit = {lookType = 30}

monster.health = 20
monster.maxHealth = monster.health
monster.race = "venom"
monster.corpse = 5961
monster.speed = 152

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
	chance = 65000,
	maxCount = 5
},
{
	id = "spider fangs",
	chance = 950
}
}

monster.attacks = {
{
	name = "melee",
	interval = 2 * 1000,
	attack = 9,
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
	percent = -20
}
}

mType:register(monster)
