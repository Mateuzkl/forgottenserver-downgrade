-- ============================================================
-- EQUIPMENT REGISTER - TFS 1.5+ RevScript
-- Centralized file for equipment (Equip/DeEquip)
-- made by condinBlack. Thanks for the script converter, similar to this spell converter:
-- https://otland.net/threads/1-3-spell-converter.280247/
-- ============================================================

local equipment = {
    -- Boots
    {id = 2195, slot = "feet"}, -- boots of haste
    {id = 2640, slot = "feet"}, -- soft boots
    {id = 6132, slot = "feet"}, -- soft boots (worn)
    {id = 7886, slot = "feet", level = 35, vocation = {"Sorcerer", "Master Sorcerer", "Druid", "Elder Druid"}}, -- fur boots
    {id = 7891, slot = "feet", level = 35, vocation = {"Sorcerer", "Master Sorcerer", "Druid", "Elder Druid"}}, -- terra boots
    {id = 7892, slot = "feet", level = 35, vocation = {"Sorcerer", "Master Sorcerer", "Druid", "Elder Druid"}}, -- firewalker boots
    {id = 7893, slot = "feet", level = 35, vocation = {"Sorcerer", "Master Sorcerer", "Druid", "Elder Druid"}}, -- glacier kilt
    {id = 9932, slot = "feet", level = 130}, -- firewalker boots
    {id = 9933, slot = "feet", level = 130}, -- firewalker boots
    {id = 11117, slot = "feet", level = 70, vocation = {"Knight", "Elite Knight", "Paladin", "Royal Paladin"}}, -- guardian boots
    {id = 11118, slot = "feet", level = 70, vocation = {"Knight", "Elite Knight", "Paladin", "Royal Paladin"}}, -- guardian boots
    {id = 11240, slot = "feet", level = 70, vocation = {"Knight", "Elite Knight", "Paladin", "Royal Paladin"}}, -- guardian boots
    {id = 11303, slot = "feet"}, -- boots of haste
    {id = 12646, slot = "feet", level = 80, vocation = {"Knight", "Elite Knight", "Paladin", "Royal Paladin"}}, -- draken boots

    -- Amulets
    {id = 2161, slot = "necklace"}, -- blue crystal amulet
    {id = 2170, slot = "necklace"}, -- silver amulet
    {id = 2172, slot = "necklace"}, -- bronze amulet
    {id = 2173, slot = "necklace"}, -- garlic necklace
    {id = 2197, slot = "necklace"}, -- stone skin amulet
    {id = 2198, slot = "necklace"}, -- protection amulet
    {id = 2199, slot = "necklace"}, -- strange talisman
    {id = 2200, slot = "necklace"}, -- elven amulet
    {id = 2201, slot = "necklace"}, -- dragon necklace
    {id = 7887, slot = "necklace", level = 60}, -- platinum amulet
    {id = 7888, slot = "necklace", level = 60}, -- lightning pendant
    {id = 7889, slot = "necklace", level = 60}, -- glacier amulet
    {id = 7890, slot = "necklace", level = 60}, -- terra amulet
    {id = 8266, slot = "necklace"}, -- spirit amulet
    {id = 10218, slot = "necklace", level = 80}, -- sacred tree amulet
    {id = 10219, slot = "necklace", level = 80}, -- shockwave amulet
    {id = 10220, slot = "necklace", level = 80}, -- leviathan's amulet
    {id = 10221, slot = "necklace", level = 80}, -- volcano amulet
    {id = 11374, slot = "necklace"}, -- bronze amulet

    -- Rings
    {id = 2164, slot = "ring"}, -- might ring
    {id = 2165, slot = "ring"}, -- stealth ring
    {id = 2166, slot = "ring"}, -- power ring
    {id = 2167, slot = "ring"}, -- energy ring
    {id = 2168, slot = "ring"}, -- life ring
    {id = 2169, slot = "ring"}, -- time ring
    {id = 2202, slot = "ring"}, -- ring of healing
    {id = 2203, slot = "ring"}, -- dwarven ring
    {id = 2204, slot = "ring"}, -- ring of the sky
    {id = 2205, slot = "ring"}, -- sword ring
    {id = 2206, slot = "ring"}, -- axe ring
    {id = 2207, slot = "ring"}, -- club ring
    {id = 2208, slot = "ring"}, -- ornamented brooch
    {id = 2209, slot = "ring"}, -- death ring
    {id = 2210, slot = "ring"}, -- sword ring
    {id = 2211, slot = "ring"}, -- axe ring
    {id = 2212, slot = "ring"}, -- club ring
    {id = 2213, slot = "ring"}, -- dwarven ring
    {id = 2214, slot = "ring"}, -- warrior's ring
    {id = 2215, slot = "ring"}, -- ring of healing
    {id = 2216, slot = "ring"}, -- dragon scale mail
    {id = 6300, slot = "ring"}, -- death ring
    {id = 6301, slot = "ring"}, -- death ring
    {id = 10309, slot = "ring", level = 100}, -- blister ring
    {id = 10311, slot = "ring", level = 100}, -- prismatic ring
    {id = 10312, slot = "ring", level = 100}, -- prismatic ring
    {id = 10314, slot = "ring", level = 100}, -- prismatic ring

    -- Helmets
    {id = 2323, slot = "head", vocation = {"Sorcerer", "Master Sorcerer", "Druid", "Elder Druid"}}, -- hat of the mad
    {id = 2343, slot = "head"}, -- chain helmet
    {id = 2474, slot = "head"}, -- mystic turban
    {id = 2502, slot = "head"}, -- demon helmet
    {id = 2664, slot = "head", vocation = {"Paladin", "Royal Paladin"}}, -- ranger's cloak
    {id = 5461, slot = "head"}, -- pirate hat
    {id = 7459, slot = "head"}, -- pumpkinhead
    {id = 7900, slot = "head", vocation = {"Sorcerer", "Master Sorcerer", "Druid", "Elder Druid"}}, -- spirit cloak
    {id = 7901, slot = "head", vocation = {"Sorcerer", "Master Sorcerer", "Druid", "Elder Druid"}}, -- glacier robe
    {id = 7902, slot = "head", vocation = {"Sorcerer", "Master Sorcerer", "Druid", "Elder Druid"}}, -- lightning robe
    {id = 7903, slot = "head", vocation = {"Sorcerer", "Master Sorcerer", "Druid", "Elder Druid"}}, -- magma coat
    {id = 8820, slot = "head", vocation = {"Sorcerer", "Master Sorcerer", "Druid", "Elder Druid"}}, -- velvet mantle
    {id = 9778, slot = "head", level = 80, vocation = {"Sorcerer", "Master Sorcerer", "Druid", "Elder Druid"}}, -- yalahari mask
    {id = 10016, slot = "head", level = 50, vocation = {"Sorcerer", "Master Sorcerer", "Druid", "Elder Druid"}}, -- witch hat
    {id = 10570, slot = "head", vocation = {"Sorcerer", "Master Sorcerer", "Druid", "Elder Druid"}}, -- bonelord helmet
    {id = 11302, slot = "head", vocation = {"Knight", "Elite Knight", "Paladin", "Royal Paladin"}}, -- zaoan helmet
    {id = 11368, slot = "head", level = 60, vocation = {"Sorcerer", "Master Sorcerer", "Druid", "Elder Druid"}}, -- dragon scale helmet
    {id = 12630, slot = "head", vocation = {"Sorcerer", "Master Sorcerer", "Druid", "Elder Druid"}}, -- winged helmet
    {id = 12645, slot = "head", level = 100, vocation = {"Paladin", "Royal Paladin"}}, -- royal helmet

    -- Armors
    {id = 2466, slot = "armor", vocation = {"Knight", "Elite Knight", "Paladin", "Royal Paladin"}}, -- golden armor
    {id = 2472, slot = "armor", vocation = {"Knight", "Elite Knight", "Paladin", "Royal Paladin"}}, -- magic plate armor
    {id = 2476, slot = "armor", vocation = {"Knight", "Elite Knight", "Paladin", "Royal Paladin"}}, -- knight armor
    {id = 2487, slot = "armor", vocation = {"Knight", "Elite Knight", "Paladin", "Royal Paladin"}}, -- crown armor
    {id = 2492, slot = "armor", vocation = {"Knight", "Elite Knight", "Paladin", "Royal Paladin"}}, -- dragon scale mail
    {id = 2500, slot = "armor", level = 60, vocation = {"Paladin", "Royal Paladin"}}, -- royal scale robe
    {id = 2503, slot = "armor"}, -- dwarven armor
    {id = 2660, slot = "armor", vocation = {"Paladin", "Royal Paladin"}}, -- noble armor
    {id = 7884, slot = "armor", level = 50, vocation = {"Sorcerer", "Master Sorcerer", "Druid", "Elder Druid"}}, -- focus cape
    {id = 7897, slot = "armor", level = 50, vocation = {"Sorcerer", "Master Sorcerer", "Druid", "Elder Druid"}}, -- spirit cloak
    {id = 7898, slot = "armor", level = 50, vocation = {"Sorcerer", "Master Sorcerer", "Druid", "Elder Druid"}}, -- glacier robe
    {id = 7899, slot = "armor", level = 50, vocation = {"Sorcerer", "Master Sorcerer", "Druid", "Elder Druid"}}, -- lightning robe
    {id = 8819, slot = "armor", vocation = {"Sorcerer", "Master Sorcerer", "Druid", "Elder Druid"}}, -- velvet mantle
    {id = 8821, slot = "armor", level = 50}, -- rainbow shield
    {id = 8865, slot = "armor", level = 65, vocation = {"Sorcerer", "Master Sorcerer"}}, -- fireborn giant armor
    {id = 8866, slot = "armor", level = 75, vocation = {"Druid", "Elder Druid"}}, -- frozen plate
    {id = 8867, slot = "armor", level = 75, vocation = {"Sorcerer", "Master Sorcerer"}}, -- fireborn giant armor
    {id = 8868, slot = "armor", level = 75, vocation = {"Sorcerer", "Master Sorcerer"}}, -- fireborn giant armor
    {id = 8869, slot = "armor", level = 75, vocation = {"Druid", "Elder Druid"}}, -- earthborn titan armor
    {id = 8870, slot = "armor", vocation = {"Sorcerer", "Master Sorcerer", "Druid", "Elder Druid"}}, -- windborn colossus armor
    {id = 8871, slot = "armor", vocation = {"Sorcerer", "Master Sorcerer", "Druid", "Elder Druid"}}, -- fireborn giant armor
    {id = 8872, slot = "armor", vocation = {"Paladin", "Royal Paladin"}}, -- fireproof adventure backpack
    {id = 8877, slot = "armor", level = 60, vocation = {"Knight", "Elite Knight", "Paladin", "Royal Paladin"}}, -- firewalker boots
    {id = 8878, slot = "armor", level = 60, vocation = {"Knight", "Elite Knight", "Paladin", "Royal Paladin"}}, -- fireproof adventure backpack
    {id = 8879, slot = "armor", level = 60, vocation = {"Knight", "Elite Knight", "Paladin", "Royal Paladin"}}, -- fireborn giant armor
    {id = 8880, slot = "armor", level = 60, vocation = {"Knight", "Elite Knight", "Paladin", "Royal Paladin"}}, -- frozen plate
    {id = 8881, slot = "armor", level = 100, vocation = {"Knight", "Elite Knight"}}, -- master archer's armor
    {id = 8882, slot = "armor", level = 100, vocation = {"Knight", "Elite Knight"}}, -- fireborn giant armor
    {id = 8883, slot = "armor", level = 100, vocation = {"Knight", "Elite Knight"}}, -- frozen plate
    {id = 8884, slot = "armor", level = 100, vocation = {"Knight", "Elite Knight"}}, -- earthborn titan armor
    {id = 8885, slot = "armor", level = 75, vocation = {"Paladin", "Royal Paladin"}}, -- paladin armor
    {id = 8886, slot = "armor", level = 75, vocation = {"Paladin", "Royal Paladin"}}, -- fireproof adventure backpack
    {id = 8887, slot = "armor", level = 75, vocation = {"Paladin", "Royal Paladin"}}, -- frozen plate
    {id = 8888, slot = "armor", level = 100, vocation = {"Paladin", "Royal Paladin"}}, -- royal crossbow
    {id = 8889, slot = "armor", level = 85, vocation = {"Knight", "Elite Knight"}}, -- skullcracker armor
    {id = 8890, slot = "armor", level = 100, vocation = {"Sorcerer", "Master Sorcerer"}}, -- fireborn giant armor
    {id = 8891, slot = "armor", vocation = {"Paladin", "Royal Paladin"}}, -- composite hornbow
    {id = 8892, slot = "armor", vocation = {"Sorcerer", "Master Sorcerer", "Druid", "Elder Druid"}}, -- wand of voodoo
    {id = 9776, slot = "armor", level = 80, vocation = {"Knight", "Elite Knight"}}, -- elite draken mail
    {id = 11301, slot = "armor", level = 50, vocation = {"Knight", "Elite Knight", "Paladin", "Royal Paladin"}}, -- zaoan armor
    {id = 11355, slot = "armor", level = 60, vocation = {"Sorcerer", "Master Sorcerer", "Druid", "Elder Druid"}}, -- gill gugel
    {id = 11356, slot = "armor", level = 60, vocation = {"Sorcerer", "Master Sorcerer", "Druid", "Elder Druid"}}, -- gill coat
    {id = 12607, slot = "armor", level = 100, vocation = {"Knight", "Elite Knight", "Paladin", "Royal Paladin"}}, -- heroic armor
    {id = 12642, slot = "armor", level = 100, vocation = {"Knight", "Elite Knight"}}, -- demon armor
    {id = 12643, slot = "armor", level = 100, vocation = {"Sorcerer", "Master Sorcerer", "Druid", "Elder Druid"}}, -- draconian robe

    -- Legs
    {id = 2470, slot = "legs", vocation = {"Knight", "Elite Knight", "Paladin", "Royal Paladin"}}, -- golden legs
    {id = 2477, slot = "legs", vocation = {"Knight", "Elite Knight", "Paladin", "Royal Paladin"}}, -- knight legs
    {id = 2488, slot = "legs", vocation = {"Knight", "Elite Knight", "Paladin", "Royal Paladin"}}, -- crown legs
    {id = 2504, slot = "legs"}, -- dwarven legs
    {id = 7885, slot = "legs", level = 40, vocation = {"Sorcerer", "Master Sorcerer", "Druid", "Elder Druid"}}, -- spirit pants
    {id = 7894, slot = "legs", level = 40, vocation = {"Sorcerer", "Master Sorcerer", "Druid", "Elder Druid"}}, -- glacier kilt
    {id = 7895, slot = "legs", level = 40, vocation = {"Sorcerer", "Master Sorcerer", "Druid", "Elder Druid"}}, -- lightning legs
    {id = 7896, slot = "legs", level = 40, vocation = {"Sorcerer", "Master Sorcerer", "Druid", "Elder Druid"}}, -- magma legs
    {id = 8923, slot = "legs", vocation = {"Paladin", "Royal Paladin"}}, -- ranger's legs
    {id = 9777, slot = "legs", level = 80, vocation = {"Paladin", "Royal Paladin"}}, -- yalahari leg piece
    {id = 11304, slot = "legs"}, -- zaoan legs

    -- Shields
    {id = 2175, slot = "shield", vocation = {"Sorcerer", "Master Sorcerer", "Druid", "Elder Druid"}}, -- spellbook
    {id = 8900, slot = "shield", level = 30, vocation = {"Sorcerer", "Master Sorcerer", "Druid", "Elder Druid"}}, -- spellbook of enlightenment
    {id = 8901, slot = "shield", level = 40, vocation = {"Sorcerer", "Master Sorcerer", "Druid", "Elder Druid"}}, -- spellbook of warding
    {id = 8902, slot = "shield", level = 50, vocation = {"Sorcerer", "Master Sorcerer", "Druid", "Elder Druid"}}, -- spellbook of mind control
    {id = 8903, slot = "shield", level = 60, vocation = {"Sorcerer", "Master Sorcerer", "Druid", "Elder Druid"}}, -- spellbook of lost souls
    {id = 8904, slot = "shield", level = 70, vocation = {"Sorcerer", "Master Sorcerer", "Druid", "Elder Druid"}}, -- spellscroll of prophecies
    {id = 8905, slot = "shield", level = 100, vocation = {"Knight", "Elite Knight"}}, -- ornate shield
    {id = 8906, slot = "shield", level = 100, vocation = {"Knight", "Elite Knight"}}, -- master archer's armor
    {id = 8907, slot = "shield", level = 100, vocation = {"Knight", "Elite Knight"}}, -- fireborn giant armor
    {id = 8908, slot = "shield", level = 100, vocation = {"Knight", "Elite Knight"}}, -- frozen plate
    {id = 8909, slot = "shield", level = 100, vocation = {"Knight", "Elite Knight"}}, -- earthborn titan armor
    {id = 8918, slot = "shield", level = 80, vocation = {"Sorcerer", "Master Sorcerer", "Druid", "Elder Druid"}}, -- spellbook of ancient arcana
    {id = 12644, slot = "shield", level = 80, vocation = {"Knight", "Elite Knight"}}, -- draken elite helmet
    {id = 12647, slot = "shield", level = 100, vocation = {"Sorcerer", "Master Sorcerer", "Druid", "Elder Druid"}} -- umbral master spellbook
}

for _, equip in ipairs(equipment) do
    local equipEvent = MoveEvent()
    
    equipEvent.onEquip = function(player, item, slot, isCheck)
        return true
    end
    
    equipEvent:type("equip")
    equipEvent:id(equip.id)
    equipEvent:slot(equip.slot)
    
    if equip.level then
        equipEvent:level(equip.level)
    end
    
    if equip.vocation then
        for _, voc in ipairs(equip.vocation) do
            equipEvent:vocation(voc)
        end
    end
    equipEvent:register()
    
    local deEquipEvent = MoveEvent()
    deEquipEvent.onDeEquip = function(player, item, slot, isCheck)
        return true
    end
    
    deEquipEvent:type("deequip")
    deEquipEvent:id(equip.id)
    deEquipEvent:slot(equip.slot)
    deEquipEvent:register()
end
