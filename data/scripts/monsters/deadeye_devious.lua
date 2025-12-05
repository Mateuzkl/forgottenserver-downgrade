local mType = Game.createMonsterType("Deadeye Devious")
local monster = {}
monster.description = "Deadeye Devious"
monster.experience = 750
monster.outfit = {lookType = 151}

monster.health = 1450
monster.maxHealth = monster.health
monster.race = "blood"
monster.corpse = 20378
monster.speed = 300

monster.flags = {
	summonable = false,
	attackable = true,
	hostile = true,
	illusionable = false,
	convinceable = false,
	pushable = false,
	canpushitems = true,
	staticAttackChance = 50,
	targetDistance = 1,
	canwalkonenergy = false,
	canwalkonfire = false,
	canwalkonpoison = false,
	isboss = true
}

monster.voices = {
	interval = 5000,
	chance = 10,
	{text = "Let's kill 'em", yell = false},
	{text = "Arrrgh!", yell = false},
	{text = "You'll never take me alive!", yell = false},
}

monster.loot = {
{
	id = "gold coin",
	chance = 100000,
	maxCount = 65
},
{
	id = "skull of Ratha",
	chance = 100000,
	maxCount = 2
},
{
	id = "plate armor",
	chance = 4000
},
{
	id = "knight armor",
	chance = 1200
},
{
	id = "meat",
	chance = 100000
},
{
	id = "pirate backpack",
	chance = 4000
},
{
	id = "Deadeye Devious' eye patch",
	chance = 100000
}
}

monster.attacks = {
{
	name = "melee",
	interval = 2 * 1000,
	attack = 550,
	skill = 70,
	effect = CONST_ME_DRAWBLOOD
},
{
	name = "combat",
	interval = 4 * 1000,
	chance = 60,
	minDamage = -200,
	maxDamage = -250,
	type = COMBAT_PHYSICALDAMAGE,
	shootEffect = CONST_ANI_THROWINGKNIFE
}
}

monster.defenses = {
	defense = 50,
	armor = 35,
	{
			name = "combat",
			interval = 6 * 1000,
			chance = 65,
			type = COMBAT_HEALING,
			minDamage = 200,
			maxDamage = 250,
			effect = CONST_ME_MAGIC_BLUE
		},
}

monster.immunities = {
{
	type = "invisible",
	condition = true
}
}

mType:register(monster)
