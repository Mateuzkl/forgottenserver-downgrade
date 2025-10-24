local guestConfig = {
    placeholderText = "Enter the player name to invite",
    maxGuests = 50
}

local function getGuestSlotStorage(houseId, slot)
    return PlayerStorageKeys.houseGuestListBase + (houseId * 100) + slot
end

local function saveGuestList(player, houseId, guestList)
    for i = 1, guestConfig.maxGuests do
        player:setStorageValue(getGuestSlotStorage(houseId, i), -1)
    end
    for i, guid in ipairs(guestList) do
        if guid and guid > 0 then
            player:setStorageValue(getGuestSlotStorage(houseId, i), guid)
        end
    end
end

local function loadGuestList(ownerGuid, houseId)
    local guestList = {}
    local owner = Player(ownerGuid)
    for i = 1, guestConfig.maxGuests do
        local storageKey = getGuestSlotStorage(houseId, i)
        local guestGuid = nil
        if owner then
            local value = owner:getStorageValue(storageKey)
            if value and value > 0 then
                guestGuid = value
            end
        else
            local result = db.storeQuery("SELECT `value` FROM `player_storage` WHERE `player_id` = " .. ownerGuid .. " AND `key` = " .. storageKey)
            if result then
                local value = result:getNumber("value")
                if value and value > 0 then
                    guestGuid = value
                end
                result:free()
            end
        end
        if guestGuid then
            table.insert(guestList, guestGuid)
        end
    end
    return guestList
end

local function getPlayerNameByGuid(guid)
    if not guid or guid <= 0 then
        return "Unknown Player"
    end
    local player = Player(guid)
    if player then
        return player:getName()
    end
    local result = db.storeQuery("SELECT `name` FROM `players` WHERE `id` = " .. guid .. " LIMIT 1;")
    if result then
        local name = result:getString("name")
        result:free()
        return name
    end
    return "Unknown Player"
end

function onHouseGuestInvite(player, item, text)
    player:unregisterEvent("HouseGuestInvite")
    if text == guestConfig.placeholderText or text == "" then
        player:sendCancelMessage("You need to enter a player name.")
        return true
    end
    local guestName = text:match("^%s*(.-)%s*$")
    if not guestName or guestName == "" then
        player:sendCancelMessage("Invalid player name.")
        return true
    end
    local tile = player:getTile()
    if not tile then
        player:sendCancelMessage("You must be inside the house.")
        return true
    end
    local house = tile:getHouse()
    if not house then
        player:sendCancelMessage("You are not inside a house.")
        return true
    end
    if house:getOwnerGuid() ~= player:getGuid() then
        player:sendCancelMessage("You are not the owner of this house.")
        return true
    end
    local targetPlayer = Player(guestName)
    local targetGuid = nil
    if targetPlayer then
        targetGuid = targetPlayer:getGuid()
    else
        local result = db.storeQuery("SELECT `id` FROM `players` WHERE `name` = " .. db.escapeString(guestName) .. " LIMIT 1;")
        if result then
            targetGuid = result:getNumber("id")
            result:free()
        else
            player:sendCancelMessage("Player '" .. guestName .. "' does not exist.")
            return true
        end
    end
    if not targetGuid or targetGuid <= 0 then
        player:sendCancelMessage("Invalid player.")
        return true
    end
    local houseId = house:getId()
    local guestList = loadGuestList(player:getGuid(), houseId)
    for _, guid in ipairs(guestList) do
        if guid == targetGuid then
            player:sendCancelMessage(guestName .. " is already in the guest list.")
            return true
        end
    end
    if #guestList >= guestConfig.maxGuests then
        player:sendCancelMessage("Guest list is full (max " .. guestConfig.maxGuests .. " guests).")
        return true
    end
    table.insert(guestList, targetGuid)
    saveGuestList(player, houseId, guestList)
    player:sendTextMessage(MESSAGE_EVENT_ADVANCE, guestName .. " has been added to the guest list.")
    player:getPosition():sendMagicEffect(CONST_ME_MAGIC_GREEN)
    return true
end

function onHouseGuestRemove(player, item, text)
    player:unregisterEvent("HouseGuestRemove")
    if text == "Enter the player name to remove" or text == "" then
        player:sendCancelMessage("You need to enter a player name.")
        return true
    end
    local guestName = text:match("^%s*(.-)%s*$")
    if not guestName or guestName == "" then
        player:sendCancelMessage("Invalid player name.")
        return true
    end
    local tile = player:getTile()
    if not tile then
        player:sendCancelMessage("You must be inside the house.")
        return true
    end
    local house = tile:getHouse()
    if not house then
        player:sendCancelMessage("You are not inside a house.")
        return true
    end
    if house:getOwnerGuid() ~= player:getGuid() then
        player:sendCancelMessage("You are not the owner of this house.")
        return true
    end
    local targetPlayer = Player(guestName)
    local targetGuid = nil
    if targetPlayer then
        targetGuid = targetPlayer:getGuid()
    else
        local result = db.storeQuery("SELECT `id` FROM `players` WHERE `name` = " .. db.escapeString(guestName) .. " LIMIT 1;")
        if result then
            targetGuid = result:getNumber("id")
            result:free()
        else
            player:sendCancelMessage("Player '" .. guestName .. "' does not exist.")
            return true
        end
    end
    if not targetGuid or targetGuid <= 0 then
        player:sendCancelMessage("Invalid player.")
        return true
    end
    local houseId = house:getId()
    local guestList = loadGuestList(player:getGuid(), houseId)
    local found = false
    local newGuestList = {}
    for _, guid in ipairs(guestList) do
        if guid == targetGuid then
            found = true
        else
            table.insert(newGuestList, guid)
        end
    end
    if not found then
        player:sendCancelMessage(guestName .. " is not in the guest list.")
        return true
    end
    saveGuestList(player, houseId, newGuestList)
    player:sendTextMessage(MESSAGE_EVENT_ADVANCE, guestName .. " has been removed from the guest list.")
    player:getPosition():sendMagicEffect(CONST_ME_MAGIC_GREEN)
    return true
end

local guestInviteEvent = CreatureEvent("HouseGuestInvite")
guestInviteEvent.onTextEdit = function(player, item, text)
    return onHouseGuestInvite(player, item, text)
end
guestInviteEvent:register()

local guestRemoveEvent = CreatureEvent("HouseGuestRemove")
guestRemoveEvent.onTextEdit = function(player, item, text)
    return onHouseGuestRemove(player, item, text)
end
guestRemoveEvent:register()

local protectHouse = TalkAction("!protecthouse")
function protectHouse.onSay(player, words, param)
    local tile = player:getTile()
    if not tile then
        return false
    end
    local house = tile:getHouse()
    if not house then
        player:sendTextMessage(MESSAGE_STATUS_SMALL, "You are not inside a house.")
        return false
    end
    local houseId = house:getId()
    local houseName = house:getName()
    if house:getOwnerGuid() ~= player:getGuid() then
        player:sendTextMessage(MESSAGE_STATUS_SMALL, "You are not the owner of this house.")
        return false
    end
    local storageKey = PlayerStorageKeys.houseProtectionBase + houseId
    local currentProtection = player:getStorageValue(storageKey)
    if currentProtection == 1 then
        player:setStorageValue(storageKey, -1)
        player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "House protection disabled for " .. houseName .. ".")
    else
        player:setStorageValue(storageKey, 1)
        player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "House protection activated for " .. houseName .. ".")
    end
    return false
end
protectHouse:separator(" ")
protectHouse:register()

local inviteHouse = TalkAction("!invitehouse")
function inviteHouse.onSay(player, words, param)
    local tile = player:getTile()
    if not tile then
        return false
    end
    local house = tile:getHouse()
    if not house then
        player:sendTextMessage(MESSAGE_STATUS_SMALL, "You are not inside a house.")
        return false
    end
    if house:getOwnerGuid() ~= player:getGuid() then
        player:sendTextMessage(MESSAGE_STATUS_SMALL, "You are not the owner of this house.")
        return false
    end
    player:registerEvent("HouseGuestInvite")
    player:showTextDialog(1948, guestConfig.placeholderText, true)
    return false
end
inviteHouse:separator(" ")
inviteHouse:register()

local removeGuest = TalkAction("!removeguest")
function removeGuest.onSay(player, words, param)
    local tile = player:getTile()
    if not tile then
        return false
    end
    local house = tile:getHouse()
    if not house then
        player:sendTextMessage(MESSAGE_STATUS_SMALL, "You are not inside a house.")
        return false
    end
    if house:getOwnerGuid() ~= player:getGuid() then
        player:sendTextMessage(MESSAGE_STATUS_SMALL, "You are not the owner of this house.")
        return false
    end
    local houseId = house:getId()
    local guestList = loadGuestList(player:getGuid(), houseId)
    if #guestList == 0 then
        player:sendTextMessage(MESSAGE_STATUS_SMALL, "Guest list is empty.")
        return false
    end
    player:registerEvent("HouseGuestRemove")
    player:showTextDialog(1948, "Enter the player name to remove", true)
    return false
end
removeGuest:separator(" ")
removeGuest:register()

local guestListCmd = TalkAction("!guestlist")
function guestListCmd.onSay(player, words, param)
    local tile = player:getTile()
    if not tile then
        return false
    end
    local house = tile:getHouse()
    if not house then
        player:sendTextMessage(MESSAGE_STATUS_SMALL, "You are not inside a house.")
        return false
    end
    if house:getOwnerGuid() ~= player:getGuid() then
        player:sendTextMessage(MESSAGE_STATUS_SMALL, "You are not the owner of this house.")
        return false
    end
    local houseId = house:getId()
    local houseName = house:getName()
    local guestList = loadGuestList(player:getGuid(), houseId)
    if #guestList == 0 then
        player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "Guest list for " .. houseName .. " is empty.")
        return false
    end
    local message = "Guest list for " .. houseName .. ":\n"
    for i, guid in ipairs(guestList) do
        local guestName = getPlayerNameByGuid(guid)
        message = message .. i .. ". " .. guestName .. "\n"
    end
    player:showTextDialog(1948, message, false)
    return false
end
guestListCmd:separator(" ")
guestListCmd:register()

local clearGuests = TalkAction("!clearguestlist")
function clearGuests.onSay(player, words, param)
    local tile = player:getTile()
    if not tile then
        return false
    end
    local house = tile:getHouse()
    if not house then
        player:sendTextMessage(MESSAGE_STATUS_SMALL, "You are not inside a house.")
        return false
    end
    if house:getOwnerGuid() ~= player:getGuid() then
        player:sendTextMessage(MESSAGE_STATUS_SMALL, "You are not the owner of this house.")
        return false
    end
    local houseId = house:getId()
    local houseName = house:getName()
    saveGuestList(player, houseId, {})
    player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "All guests have been removed from " .. houseName .. ".")
    player:getPosition():sendMagicEffect(CONST_ME_MAGIC_GREEN)
    return false
end
clearGuests:separator(" ")
clearGuests:register()
