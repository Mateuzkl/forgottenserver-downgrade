local GUEST_MAX_SLOTS = 50

local function getGuestSlotStorage(houseId, slot)
    return PlayerStorageKeys.houseGuestListBase + (houseId * 100) + slot
end

local function isPlayerInGuestList(playerGuid, ownerGuid, houseId)
    local owner = Player(ownerGuid)
    for i = 1, GUEST_MAX_SLOTS do
        local storageKey = getGuestSlotStorage(houseId, i)
        local guestGuid = -1
        if owner then
            guestGuid = owner:getStorageValue(storageKey)
        else
            local result = db.storeQuery("SELECT `value` FROM `player_storage` WHERE `player_id` = " .. ownerGuid .. " AND `key` = " .. storageKey)
            if result then
                guestGuid = result:getNumber("value")
                result:free()
            end
        end
        if guestGuid == playerGuid then
            return true
        end
    end
    return false
end

local function isAllowedToMoveInHouse(player, house)
    local houseId = house:getId()
    local ownerGuid = house:getOwnerGuid()
    if ownerGuid == 0 then
        return true
    end
    if player:getGuid() == ownerGuid then
        return true
    end
    local owner = Player(ownerGuid)
    local storageKey = PlayerStorageKeys.houseProtectionBase + houseId
    local protectionActive = -1
    if owner then
        protectionActive = owner:getStorageValue(storageKey)
    else
        local result = db.storeQuery("SELECT `value` FROM `player_storage` WHERE `player_id` = " .. ownerGuid .. " AND `key` = " .. storageKey)
        if result then
            protectionActive = result:getNumber("value")
            result:free()
        end
    end
    if protectionActive ~= 1 then
        return true
    end
    return isPlayerInGuestList(player:getGuid(), ownerGuid, houseId)
end

local event = Event()
event.onMoveItem = function(self, item, count, fromPosition, toPosition, fromCylinder, toCylinder)
    local fromTile = Tile(fromPosition)
    local toTile = Tile(toPosition)
    if fromTile then
        local house = fromTile:getHouse()
        if house then
            if not isAllowedToMoveInHouse(self, house) then
                self:sendCancelMessage("Only the house owner and invited guests can move items while protection is active.")
                return RETURNVALUE_NOTPOSSIBLE
            end
        end
    end
    if toTile then
        local house = toTile:getHouse()
        if house then
            if not isAllowedToMoveInHouse(self, house) then
                self:sendCancelMessage("Only the house owner and invited guests can move items while protection is active.")
                return RETURNVALUE_NOTPOSSIBLE
            end
        end
    end
    if toPosition.x ~= CONTAINER_POSITION then return true end
    if item:getTopParent() == self and (toPosition.y & 0x40) == 0 then
        local itemType, moveItem = ItemType(item:getId())
        if (itemType:getSlotPosition() & SLOTP_TWO_HAND) ~= 0 and toPosition.y == CONST_SLOT_LEFT then
            moveItem = self:getSlotItem(CONST_SLOT_RIGHT)
        elseif itemType:getWeaponType() == WEAPON_SHIELD and toPosition.y == CONST_SLOT_RIGHT then
            moveItem = self:getSlotItem(CONST_SLOT_LEFT)
            if moveItem and (ItemType(moveItem:getId()):getSlotPosition() & SLOTP_TWO_HAND) == 0 then
                return true
            end
        end
        if moveItem then
            local parent = item:getParent()
            if parent:isContainer() and parent:getSize() == parent:getCapacity() then
                self:sendTextMessage(MESSAGE_STATUS_SMALL, Game.getReturnMessage(RETURNVALUE_CONTAINERNOTENOUGHROOM))
                return false
            else
                return moveItem:moveTo(parent)
            end
        end
    end
    return true
end
event:register()
