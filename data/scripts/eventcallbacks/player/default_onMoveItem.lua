local event = Event()

event.onMoveItem = function(self, item, count, fromPosition, toPosition,
                            fromCylinder, toCylinder)
	-- House protection system
	local fromTile = Tile(fromPosition)
	local toTile = Tile(toPosition)
	
	if fromTile or toTile then
		local house = nil
		
		if fromTile then
			house = fromTile:getHouse()
		end
		
		if not house and toTile then
			house = toTile:getHouse()
		end
		
		if house then
			local houseId = house:getId()
			local ownerGuid = house:getOwnerGuid()
			
			if ownerGuid ~= 0 then
				if self:getGuid() == ownerGuid then
				else
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
					
					if protectionActive == 1 then
						self:sendCancelMessage("Only the house owner can move items while protection is active.")
						return RETURNVALUE_NOTPOSSIBLE
					end
				end
			end
		end
	end

	if toPosition.x ~= CONTAINER_POSITION then return true end

	if item:getTopParent() == self and (toPosition.y & 0x40) == 0 then
		local itemType, moveItem = ItemType(item:getId())
		if (itemType:getSlotPosition() & SLOTP_TWO_HAND) ~= 0 and toPosition.y ==
			CONST_SLOT_LEFT then
			moveItem = self:getSlotItem(CONST_SLOT_RIGHT)
		elseif itemType:getWeaponType() == WEAPON_SHIELD and toPosition.y ==
			CONST_SLOT_RIGHT then
			moveItem = self:getSlotItem(CONST_SLOT_LEFT)
			if moveItem and
				(ItemType(moveItem:getId()):getSlotPosition() & SLOTP_TWO_HAND) == 0 then
				return true
			end
		end

		if moveItem then
			local parent = item:getParent()
			if parent:isContainer() and parent:getSize() == parent:getCapacity() then
				self:sendTextMessage(MESSAGE_STATUS_SMALL, Game.getReturnMessage(
					                     RETURNVALUE_CONTAINERNOTENOUGHROOM))
				return false
			else
				return moveItem:moveTo(parent)
			end
		end
	end

	return true
end

event:register()
