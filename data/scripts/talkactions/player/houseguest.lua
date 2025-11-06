local houseGuest = TalkAction("!houseguest")
function houseGuest.onSay(player, words, param)
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
        if house:getOwner() == player:getGuid() then
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
            player:sendCancelMessage("Only Guild Leader or Vice-Leader of the owning guild can use this command.")
        else
            player:sendCancelMessage("Only the house owner can use this command.")
        end
        return false
    end

    param = param:trim()
    if param == "" then
        player:sendCancelMessage("Usage: !houseguest add|remove|list [playername]")
        return false
    end

    local split = param:split(",")
    local action = split[1]:lower():trim()

    if action == "list" then
        local guests = house:getProtectionGuests()
        if #guests == 0 then
            player:sendTextMessage(MESSAGE_INFO_DESCR, "There are no guests in the protection list.")
        else
            local guestNames = {}
            for _, guestId in ipairs(guests) do
                local guestName = getPlayerNameByGUID(guestId)
                if guestName then
                    table.insert(guestNames, guestName)
                end
            end
            if #guestNames > 0 then
                player:sendTextMessage(MESSAGE_INFO_DESCR, "Protection guests: " .. table.concat(guestNames, ", "))
            else
                player:sendTextMessage(MESSAGE_INFO_DESCR, "There are no guests in the protection list.")
            end
        end
        return false
    end

    if #split < 2 then
        player:sendCancelMessage("Usage: !houseguest " .. action .. " <playername>")
        return false
    end

    local targetName = split[2]:trim()
    local targetGuid = getPlayerGUIDByName(targetName)
    
    if not targetGuid or targetGuid == 0 then
        player:sendCancelMessage("Player '" .. targetName .. "' does not exist.")
        return false
    end

    if action == "add" then
        if targetGuid == player:getGuid() then
            player:sendCancelMessage("You cannot add yourself as a guest.")
            return false
        end

        if house:addProtectionGuest(targetGuid) then
            player:sendTextMessage(MESSAGE_INFO_DESCR, "Player '" .. targetName .. "' has been added to the protection guest list.")
        else
            player:sendCancelMessage("Player '" .. targetName .. "' is already in the guest list or could not be added.")
        end

    elseif action == "remove" then
        if house:removeProtectionGuest(targetGuid) then
            player:sendTextMessage(MESSAGE_INFO_DESCR, "Player '" .. targetName .. "' has been removed from the protection guest list.")
        else
            player:sendCancelMessage("Player '" .. targetName .. "' is not in the guest list.")
        end

    else
        player:sendCancelMessage("Usage: !houseguest add|remove|list [playername]")
    end

    return false
end
houseGuest:separator(" ")
houseGuest:register()