local mType = Game.createMonsterType("Parrot")
local monster = {}
monster.description = "a parrot"
monster.experience = 0
monster.outfit = {lookType = 217}

monster.health = 25
monster.maxHealth = monster.health
monster.race = "blood"
monster.corpse = 6056
monster.speed = 320

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

monster.voices = {
	interval = 5000,
	chance = 10,
	{text = "You advanshed, you advanshed!", yell = false},
	{text = "Neeewbiiieee!", yell = false},
	{text = "Screeech!", yell = false},
	{text = "Hunterrr ish PK!", yell = false},
	{text = "BR? PL? SWE?", yell = false},
	{text = "Hope you die and loooosh it!", yell = false},
	{text = "You powerrrrrrabuserrrrr!", yell = false},
	{text = "You are corrrrupt! Corrrrupt!", yell = false},
	{text = "Tarrrrp?", yell = false},
	{text = "Blesshhh my stake! Screeech!", yell = false},
	{text = "Leeave orrr hunted!!", yell = false},
	{text = "Shhtop whining! Rraaah!", yell = false},
	{text = "I'm heeerrre! Screeeech!", yell = false},
}

monster.attacks = {
{
	name = "melee",
	interval = 2 * 1000,
	attack = 5,
	skill = 70,
	effect = CONST_ME_DRAWBLOOD
}
}

monster.defenses = {
	defense = 2,
	armor = 2,
}

mType:register(monster)
