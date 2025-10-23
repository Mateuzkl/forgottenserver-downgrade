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