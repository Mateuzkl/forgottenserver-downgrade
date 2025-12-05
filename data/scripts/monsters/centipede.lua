local mType = Game.createMonsterType("Centipede")
local monster = {}
monster.description = "a centipede"
monster.experience = 34
monster.outfit = {lookType = 124}

monster.health = 70
monster.maxHealth = monster.health
monster.race = "venom"
monster.corpse = 6050
monster.speed = 166

monster.flags = {
	summonable = true,
	attackable = true,
	hostile = true,
	illusionable = true,
	convinceable = false,
	pushable = true,
	canpushitems = true,
	canpushcreatures = false,
	targetDistance = 1,
	staticAttackChance = 90,
	canwalkonenergy = false,
	canwalkonfire = false
}

monster.loot = {
{
	id = "gold coin",
	chance = 80000,
	maxCount = 15
},
{
	id = "centipede leg",
	chance = 10300
}
}

monster.attacks = {
{
	name = "melee",
	interval = 2 * 1000,
	attack = 45,
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
	type = COMBAT_ICEDAMAGE,
	percent = 20
},
{
	type = COMBAT_ENERGYDAMAGE,
	percent = 10
},
{
	type = COMBAT_FIREDAMAGE,
	percent = -15
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
