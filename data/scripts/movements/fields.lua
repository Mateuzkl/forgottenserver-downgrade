-- Field items using SERVER IDs from items.xml
local fieldItems = {
	-- Campfires (1423-1425)
	1423, 1424, 1425,
	
	-- Fire fields
	1487, 1488, 1489,  -- standard fire field
	1492, 1493, 1494,  -- fire field variant
	1500, 1501, 1502,  -- fire field variant
	1505, 1506,        -- fire bomb
	10986, 10987, 10988, -- fire field variant
	7465,              -- fire field
	
	-- Poison fields
	1490,              -- poison gas
	1496,              -- poison gas
	1503,              -- poison gas
	26023, 26024,      -- poison/smoke trap
	
	-- Energy fields
	1491,              -- energy field
	1495,              -- energy field
	1504,              -- energy field
	26022,             -- energy trap
}

for _, itemId in ipairs(fieldItems) do
	local stepIn = MoveEvent()
	stepIn:type("stepin")
	stepIn:id(itemId)
	stepIn:onStepIn(function(creature, item, position, fromPosition)
		if item:isMagicField() then
			item:onStepInField(creature)
		end
		return true
	end)
	stepIn:register()

	local addItem = MoveEvent()
	addItem:type("additem")
	addItem:id(itemId)
	addItem:onAddItem(function(moveitem, tileitem, position)
		if moveitem:isMagicField() then
			local tile = Tile(position)
			if tile then
				local creatures = tile:getCreatures()
				if creatures then
					for _, creature in ipairs(creatures) do
						moveitem:onStepInField(creature)
					end
				end
			end
		end
		return true
	end)
	addItem:register()
end
