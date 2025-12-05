local mType = Game.createMonsterType("Grynch Clan Goblin")
local monster = {}
monster.description = "Grynch Clan Goblin"
monster.experience = 4
monster.outfit = {lookType = 61}

monster.health = 80
monster.maxHealth = monster.health
monster.race = "blood"
monster.corpse = 6002
monster.speed = 200

monster.flags = {
	summonable = false,
	attackable = true,
	hostile = false,
	illusionable = false,
	convinceable = false,
	pushable = false,
	canpushitems = false,
	canpushcreatures = false,
	targetDistance = 11,
	staticAttackChance = 90
}

monster.voices = {
	interval = 1000,
	chance = 5,
	{text = "T'was not me hand in your pocket!", yell = false},
	{text = "Look! Cool stuff in house. Let's get it!", yell = false},
	{text = "Uhh! Nobody home! <chuckle>", yell = false},
	{text = "Me just borrowed it!", yell = false},
	{text = "Me no steal! Me found it!", yell = false},
	{text = "Me had it for five minutes. It's family heirloom now!", yell = false},
	{text = "Nice human won't hurt little, good goblin?", yell = false},
	{text = "Gimmegimme!", yell = false},
	{text = "Invite me in you lovely house plx!", yell = false},
	{text = "Other Goblin stole it!", yell = false},
	{text = "All presents mine!", yell = false},
	{text = "Me got ugly ones purse", yell = false},
	{text = "Free itans plz!", yell = false},
	{text = "Not me! Not me!", yell = false},
	{text = "Guys, help me here! Guys? Guys???", yell = false},
	{text = "That only much dust in me pocket! Honest!", yell = false},
	{text = "Can me have your stuff?", yell = false},
	{text = "Halp, Big dumb one is after me!", yell = false},
	{text = "Uh, So many shiny things!", yell = false},
	{text = "Utani hur hur hur!", yell = false},
	{text = "Mee? Stealing? Never!!!", yell = false},
	{text = "Oh what fun it is to steal a one-horse open sleigh!", yell = false},
	{text = "Must have it! Must have it!", yell = false},
	{text = "Where me put me lockpick?", yell = false},
	{text = "Catch me if you can!", yell = false},
}

monster.loot = {
{
	id = "gold coin",
	chance = 55320,
	maxCount = 16
},
{
	id = "christmas present bag",
	chance = 29918
},
{
	id = "snowball",
	chance = 14919,
	maxCount = 3
},
{
	id = "red apple",
	chance = 10196,
	maxCount = 3
},
{
	id = "cookie",
	chance = 8023,
	maxCount = 5
},
{
	id = "orange",
	chance = 5033,
	maxCount = 2
},
{
	id = "lump of cake dough",
	chance = 4934
},
{
	id = "walnut",
	chance = 1998,
	maxCount = 4
},
{
	id = "egg",
	chance = 1019,
	maxCount = 2
},
{
	id = "candy cane",
	chance = 997,
	maxCount = 3
},
{
	id = "snowman package",
	chance = 965
},
{
	id = "peanut",
	chance = 961,
	maxCount = 5
},
{
	id = "scarf",
	chance = 808
},
{
	id = "bat wing",
	chance = 638,
	maxCount = 3
},
{
	id = "bottle",
	chance = 543
},
{
	id = "explorer brooch",
	chance = 476
},
{
	id = "broom",
	chance = 400
},
{
	id = "honeycomb",
	chance = 400
},
{
	id = "gingerbreadman",
	chance = 391
},
{
	id = "chicken feather",
	chance = 382,
	maxCount = 3
},
{
	id = "cherry",
	chance = 341,
	maxCount = 4
},
{
	id = "blank rune",
	chance = 121
},
{
	id = "flower bowl",
	chance = 117
},
{
	id = "watch",
	chance = 117
},
{
	id = "picture (landscape)",
	chance = 112
},
{
	id = "cream cake",
	chance = 108
},
{
	id = "magic light wand",
	chance = 108
},
{
	id = "valentine's cake",
	chance = 108
},
{
	id = "die",
	chance = 103
},
{
	id = "scarab coin",
	chance = 99
},
{
	id = "lute",
	chance = 90
},
{
	id = "orichalcum pearl",
	chance = 81
},
{
	id = "rope",
	chance = 81
},
{
	id = "small white pillow",
	chance = 76
},
{
	id = "mirror",
	chance = 72
},
{
	id = "piggy bank",
	chance = 72
}
}

monster.defenses = {
	defense = 5,
	armor = 5,
	{
			name = "speed",
			interval = 1 * 1000,
			chance = 15,
			speed = 300,
			duration = 5 * 1000,
			effect = CONST_ME_MAGIC_RED
		},
}

monster.immunities = {
{
	type = "fire",
	combat = true,
	condition = true
},
{
	type = "invisible",
	condition = true
}
}

mType:register(monster)
