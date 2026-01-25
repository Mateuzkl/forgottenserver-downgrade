local restrictedItems = {
	[31208] = true, [31209] = true, [31210] = true,
	[37941] = true, [37942] = true, [37943] = true,
	[31211] = true, [37944] = true,
	[31212] = true, [37945] = true,
	[31213] = true, [37946] = true,
	[31196] = true, [31197] = true, [31198] = true,
	[31199] = true,
	[31200] = true,
	[31201] = true
}

local function containsRestrictedItem(container)
	local items = container:getItems()
	for _, item in ipairs(items) do
		if restrictedItems[item:getId()] then
			return true
		end
		
		local subContainer = item:getContainer()
		if subContainer and containsRestrictedItem(subContainer) then
			return true
		end
	end
	return false
end

local event = Event()
event.onMoveItem = function(self, item, count, fromPosition, toPosition,
                            fromCylinder, toCylinder)
	local isRestricted = restrictedItems[item:getId()]
	
	if not isRestricted then
		local container = item:getContainer()
		if container and containsRestrictedItem(container) then
			isRestricted = true
		end
	end

	if isRestricted then
		if not toCylinder or (toCylinder ~= self and (not toCylinder:isItem() or toCylinder:getTopParent() ~= self)) then
			return RETURNVALUE_CANNOTMOVEEXERCISEWEAPON
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