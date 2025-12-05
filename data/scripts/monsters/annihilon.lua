local mType = Game.createMonsterType("Annihilon")
local monster = {}
monster.description = "Annihilon"
monster.experience = 15000
monster.outfit = {lookType = 12}

monster.health = 46500
monster.maxHealth = monster.health
monster.race = "fire"
monster.corpse = 6068
monster.speed = 380

monster.changeTarget = {interval = 5 * 1000, chance = 8}

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
	staticAttackChance = 85,
	isboss = true
}

monster.voices = {
	interval = 5000,
	chance = 10,
	{text = "Flee as long as you can!", yell = false},
	{text = "Annihilon's might will crush you all!", yell = false},
	{text = "I am coming for you!", yell = false},
}

monster.loot = {
{
	id = "gold coin",
	chance = 100000,
	maxCount = 100
},
{
	id = "plate armor",
	chance = 62097
},
{
	id = "giant shimmering pearl",
	chance = 37903,
	maxCount = 2
},
{
	id = "heavy mace",
	chance = 28226
},
{
	id = "assassin star",
	chance = 23790,
	maxCount = 50
},
{
	id = "blue gem",
	chance = 22581
},
{
	id = "guardian halberd",
	chance = 22581
},
{
	id = "yellow gem",
	chance = 22581
},
{
	id = "emerald bangle",
	chance = 22177
},
{
	id = "gold ingot",
	chance = 20968
},
{
	id = "red gem",
	chance = 20968
},
{
	id = "infernal bolt",
	chance = 20565,
	maxCount = 46
},
{
	id = "berserk potion",
	chance = 19758
},
{
	id = "platinum coin",
	chance = 19758,
	maxCount = 30
},
{
	id = "power bolt",
	chance = 19758,
	maxCount = 99
},
{
	id = "halberd",
	chance = 19355
},
{
	id = "flaming arrow",
	chance = 18952,
	maxCount = 96
},
{
	id = "soul orb",
	chance = 18952,
	maxCount = 5
},
{
	id = "violet gem",
	chance = 17742
},
{
	id = "viper star",
	chance = 16935,
	maxCount = 70
},
{
	id = "green gem",
	chance = 16129
},
{
	id = "mastermind potion",
	chance = 15323
},
{
	id = "great health potion",
	chance = 14516
},
{
	id = "onyx flail",
	chance = 14113
},
{
	id = "ultimate health potion",
	chance = 13306
},
{
	id = "great mana potion",
	chance = 12903
},
{
	id = "crown shield",
	chance = 12500
},
{
	id = "great spirit potion",
	chance = 12500
},
{
	id = "demon horn",
	chance = 11694,
	maxCount = 2
},
{
	id = "paladin armor",
	chance = 10484
},
{
	id = "tower shield",
	chance = 10081
},
{
	id = "guardian shield",
	chance = 8468
},
{
	id = "diamond sceptre",
	chance = 7258
},
{
	id = "demon shield",
	chance = 4032
},
{
	id = "mastermind shield",
	chance = 3629
},
{
	id = "demonbone",
	chance = 1613
},
{
	id = "lavos armor",
	chance = 1210
},
{
	id = "obsidian truncheon",
	chance = 1210
},
{
	id = "the stomper",
	chance = 403
}
}

monster.attacks = {
{
	name = "melee",
	interval = 2 * 1000,
	attack = 1707,
	skill = 70,
	effect = CONST_ME_DRAWBLOOD
},
{
	name = "combat",
	interval = 1 * 1000,
	chance = 11,
	minDamage = 0,
	maxDamage = -600,
	length = 8,
	spread = 0,
	type = COMBAT_DEATHDAMAGE,
	effect = CONST_ME_MORTAREA
},
{
	name = "combat",
	interval = 2 * 1000,
	chance = 15,
	minDamage = -200,
	maxDamage = -700,
	radius = 4,
	target = false,
	type = COMBAT_DEATHDAMAGE,
	effect = CONST_ME_ICEAREA
},
{
	name = "combat",
	interval = 3 * 1000,
	chance = 18,
	minDamage = -50,
	maxDamage = -255,
	radius = 5,
	target = true,
	type = COMBAT_PHYSICALDAMAGE,
	effect = CONST_ME_GROUNDSHAKER
},
{
	name = "combat",
	interval = 2 * 1000,
	chance = 15,
	minDamage = -50,
	maxDamage = -600,
	radius = 6,
	target = true,
	type = COMBAT_FIREDAMAGE,
	effect = CONST_ME_FIREAREA,
	shootEffect = CONST_ANI_FIRE
}
}

monster.defenses = {
	defense = 55,
	armor = 60,
	{
			name = "combat",
			interval = 1 * 1000,
			chance = 14,
			type = COMBAT_HEALING,
			minDamage = 400,
			maxDamage = 900,
			effect = CONST_ME_MAGIC_GREEN
		},
	{
			name = "speed",
			interval = 1 * 1000,
			chance = 4,
			speed = 500,
			duration = 7 * 1000,
			effect = CONST_ME_MAGIC_BLUE
		},
}

monster.elements = {
{
	type = COMBAT_ENERGYDAMAGE,
	percent = 95
},
{
	type = COMBAT_ICEDAMAGE,
	percent = 20
},
{
	type = COMBAT_HOLYDAMAGE,
	percent = -5
},
{
	type = COMBAT_DEATHDAMAGE,
	percent = 95
}
}

monster.immunities = {
{
	type = "lifedrain",
	combat = true
},
{
	type = "invisible",
	condition = true
}
}

mType:register(monster)
