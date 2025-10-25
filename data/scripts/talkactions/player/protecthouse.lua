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

    if house:getOwnerGuid() ~= player:getGuid() then
        player:sendCancelMessage("Only the house owner can use this command.")
        return false
    end

    param = param:lower():trim()
    if param ~= "on" and param ~= "off" then
        player:sendCancelMessage("Usage: !protecthouse on|off")
        return false
    end

    local isProtected = (param == "on")
    
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
        player:sendTextMessage(MESSAGE_INFO_DESCR, "House protection is now enabled. Only you and your guests can move items in this house.")
    else
        player:sendTextMessage(MESSAGE_INFO_DESCR, "House protection is now disabled.")
    end

    return false
end
protectHouse:separator(" ")
protectHouse:register()