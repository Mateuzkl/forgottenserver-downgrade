local skillIds = {
    sword = SKILL_SWORD,
    axe = SKILL_AXE,
    club = SKILL_CLUB,
    distance = SKILL_DISTANCE,
    magic = SKILL_MAGLEVEL
}

local skillNames = {
    [SKILL_SWORD] = "Sword Fighting",
    [SKILL_AXE] = "Axe Fighting", 
    [SKILL_CLUB] = "Club Fighting",
    [SKILL_DISTANCE] = "Distance Fighting",
    [SKILL_MAGLEVEL] = "Magic Level"
}

local function hasHousePermission(player)
    local tile = player:getTile()
    local house = tile:getHouse()
    
    if not house then
        player:sendTextMessage(MESSAGE_STATUS_CONSOLE_BLUE, "You need to be inside a house to use training commands.")
        return false
    end
    
    if house:getOwnerGuid() ~= player:getGuid() and 
       not house:canEditAccessList(SUBOWNER_LIST, player) and 
       not house:canEditAccessList(GUEST_LIST, player) then
        player:sendTextMessage(MESSAGE_STATUS_CONSOLE_BLUE, "You don't have permission to use training in this house.")
        return false
    end
    
    return true
end
local trainAction = TalkAction("!train")

function trainAction.onSay(player, words, param)
    if not hasHousePermission(player) then
        return false
    end
    
    if param == "" then
        player:sendTextMessage(MESSAGE_STATUS_CONSOLE_BLUE, "Use: !train <skill>")
        player:sendTextMessage(MESSAGE_STATUS_CONSOLE_BLUE, "Skills: sword, axe, club, distance, shielding, magic")
        return false
    end
    
    local skills = {
        sword = SKILL_SWORD,
        axe = SKILL_AXE,
        club = SKILL_CLUB,
        distance = SKILL_DISTANCE,
        shielding = SKILL_SHIELD,
        magic = SKILL_MAGLEVEL
    }
    
    local skillId = skills[param:lower()]
    
    if not skillId then
        player:sendTextMessage(MESSAGE_STATUS_CONSOLE_BLUE, "Invalid skill. Use: sword, axe, club, distance, shielding, magic")
        return false
    end
    
    player:setOfflineTrainingSkill(skillId)
    player:sendTextMessage(MESSAGE_STATUS_CONSOLE_BLUE, "Skill " .. param .. " selected for training. Use !sleep near a bed to start training.")
    return false
end
trainAction:separator(" ")
trainAction:register()

local sleepAction = TalkAction("!sleep")
function sleepAction.onSay(player, words, param)
    if not hasHousePermission(player) then
        return false
    end
    
    local currentSkill = player:getOfflineTrainingSkill()
    
    if currentSkill == -1 then
        player:sendTextMessage(MESSAGE_STATUS_CONSOLE_BLUE, "You need to select a skill first using !train <skill>.")
        return false
    end
    
    local position = player:getPosition()
    local tile = Tile(position)
    local house = tile and tile:getHouse()
    
    if not house then
        player:sendTextMessage(MESSAGE_STATUS_CONSOLE_BLUE, "You need to be inside a house to sleep.")
        return false
    end
    
    if not player:isPremium() then
        player:sendTextMessage(MESSAGE_STATUS_CONSOLE_BLUE, "You need a premium account.")
        return false
    end
    
    if player:startOfflineTraining() then
        player:sendTextMessage(MESSAGE_STATUS_CONSOLE_BLUE, "You have started offline training and will be logged out.")
    else
        player:sendTextMessage(MESSAGE_STATUS_CONSOLE_BLUE, "Failed to start offline training.")
    end
    return false
end
sleepAction:register()
