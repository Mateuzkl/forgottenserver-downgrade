local mType = Game.createMonsterType("Hero")
local monster = {}
monster.description = "a hero"
monster.experience = 1200
monster.outfit = {lookType = 73}

monster.health = 1400
monster.maxHealth = monster.health
monster.race = "blood"
monster.corpse = 20415
monster.speed = 280

monster.changeTarget = {interval = 4 * 1000, chance = 10}

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
	staticAttackChance = 90,
	canwalkonfire = false
}

monster.voices = {
	interval = 5000,
	chance = 10,
	{text = "Let's have a fight!", yell = false},
	{text = "Welcome to my battleground!", yell = false},
	{text = "Have you seen princess Lumelia?", yell = false},
	{text = "I will sing a tune at your grave.", yell = false},
}

monster.loot = {
{
	id = "gold coin",
	chance = 60324,
	maxCount = 100
},
{
	id = "scroll",
	chance = 45128
},
{
	id = "arrow",
	chance = 27005,
	maxCount = 13
},
{
	id = "red rose",
	chance = 20384
},
{
	id = "grapes",
	chance = 20164
},
{
	id = "bow",
	chance = 13005
},
{
	id = "sniper arrow",
	chance = 11558,
	maxCount = 4
},
{
	id = "meat",
	chance = 8585
},
{
	id = "green tunic",
	chance = 7964
},
{
	id = "wedding ring",
	chance = 5153
},
{
	id = "scroll of heroic deeds",
	chance = 5038
},
{
	id = "rope",
	chance = 2079
},
{
	id = "red piece of cloth",
	chance = 2013
},
{
	id = "two handed sword",
	chance = 1612
},
{
	id = "lyre",
	chance = 1577
},
{
	id = "scarf",
	chance = 1120
},
{
	id = "war hammer",
	chance = 959
},
{
	id = "small notebook",
	chance = 952
},
{
	id = "great health potion",
	chance = 736
},
{
	id = "crown armor",
	chance = 614
},
{
	id = "crown legs",
	chance = 586
},
{
	id = "might ring",
	chance = 527
},
{
	id = "fire sword",
	chance = 478
},
{
	id = "crown helmet",
	chance = 450
},
{
	id = "crown shield",
	chance = 202
},
{
	id = "piggy bank",
	chance = 73
}
}

monster.attacks = {
{
	name = "melee",
	interval = 2 * 1000,
	attack = 240,
	skill = 70,
	effect = CONST_ME_DRAWBLOOD
},
{
	name = "combat",
	interval = 2 * 1000,
	chance = 20,
	minDamage = 0,
	maxDamage = -120,
	range = 7,
	type = COMBAT_PHYSICALDAMAGE,
	shootEffect = CONST_ANI_ARROW
}
}

monster.defenses = {
	defense = 35,
	armor = 35,
	{
			name = "combat",
			interval = 2 * 1000,
			chance = 20,
			type = COMBAT_HEALING,
			minDamage = 200,
			maxDamage = 250,
			effect = CONST_ME_MAGIC_BLUE
		},
}

monster.elements = {
{
	type = COMBAT_ENERGYDAMAGE,
	percent = 40
},
{
	type = COMBAT_ICEDAMAGE,
	percent = 10
},
{
	type = COMBAT_FIREDAMAGE,
	percent = 30
},
{
	type = COMBAT_HOLYDAMAGE,
	percent = 50
},
{
	type = COMBAT_EARTHDAMAGE,
	percent = 50
},
{
	type = COMBAT_PHYSICALDAMAGE,
	percent = 10
},
{
	type = COMBAT_DEATHDAMAGE,
	percent = -20
}
}

monster.immunities = {
{
	type = "paralyze",
	condition = true
},
{
	type = "invisible",
	condition = true
}
}

mType:register(monster)
