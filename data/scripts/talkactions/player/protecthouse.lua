local protectHouse = TalkAction("!protecthouse")
function protectHouse.onSay(player, words, param)
    local position = player:getPosition()
    local tile = Tile(position)
    if not tile then
        player:sendCancelMessage("You are not inside a house.")
        return false
    end

    local house = tile:getHouse()
    if not house then
        player:sendCancelMessage("You are not inside a house.")
        return false
    end

    local houseType = house:getType()
    local canUse = false

    if houseType == HOUSE_TYPE_NORMAL then
        -- Normal house: check if player is the owner
        if house:getOwnerGuid() == player:getGuid() then
            canUse = true
        end
    elseif houseType == HOUSE_TYPE_GUILDHALL then
        -- Guildhall: check if player is leader or vice-leader of the owning guild
        local guild = player:getGuild()
        if guild then
            local houseOwnerGuildId = house:getOwnerGuild()
            local guildId = guild:getId()
            
            if houseOwnerGuildId == guildId then
                local isLeader = player:isGuildLeader()
                local isVice = player:isGuildVice()
                if isLeader or isVice then
                    canUse = true
                end
            end
        end
    end

    if not canUse then
        if houseType == HOUSE_TYPE_GUILDHALL then
            player:sendCancelMessage("Only the Leader or Vice-Leader of the owning guild can use this command.")
        else
            player:sendCancelMessage("Only the house owner can use this command.")
        end
        return false
    end

    param = (param or ""):lower():trim()
    
    if param == "" then
        local isProtected = house:getProtected()
        print(string.format("[ProtectHouse] status house=%d type=%d ownerGuid=%d protected=%s", house:getId(), houseType, house:getOwnerGuid(), tostring(isProtected)))
        if isProtected then
            player:popupFYI("House protection is ENABLED.\n\nOnly you and your guests can move items in this house.\n\nUse: !protecthouse off to disable.")
        else
            player:popupFYI("House protection is DISABLED.\n\nAny player can move items in this house.\n\nUse: !protecthouse on to enable.")
        end
        return false
    end
    
    if param ~= "on" and param ~= "off" then
        player:sendCancelMessage("Usage: !protecthouse [on|off]\n\nUse without parameters to see the current status.")
        return false
    end

    local isProtected = (param == "on")
    print(string.format("[ProtectHouse] toggle request house=%d param='%s' before=%s after=%s", house:getId(), param, tostring(house:getProtected()), tostring(isProtected)))
    
    if house:getProtected() == isProtected then
        if isProtected then
            player:sendCancelMessage("House protection is already enabled.")
        else
            player:sendCancelMessage("House protection is already disabled.")
        end
        return false
    end
    
    house:setProtected(isProtected)
    
    local query = string.format("UPDATE `houses` SET `is_protected` = %d WHERE `id` = %d", isProtected and 1 or 0, house:getId())
    db.query(query)

    if isProtected then
        player:sendTextMessage(MESSAGE_INFO_DESCR, "Protection enabled. Only you and your guests can move items in this house.")
    else
        player:sendTextMessage(MESSAGE_INFO_DESCR, "Protection disabled. Any player can move items in this house.")
    end

    return false
end
protectHouse:separator(" ")
protectHouse:register()