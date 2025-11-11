-- Example using loop with position table (similar to uid example)
local portalPositions = {
	Position(95, 116, 7),
	Position(96, 116, 7),
	Position(97, 116, 7),
	Position(98, 116, 7),
	Position(99, 116, 7)
}

local portal = Action()

function portal.onUse(player, item, fromPosition, target, toPosition, isHotkey)
	if not player then
		return false
	end
	
	local destination = Position(95, 112, 7)
	
	fromPosition:sendMagicEffect(CONST_ME_TELEPORT)
	player:teleportTo(destination)
	player:getPosition():sendMagicEffect(CONST_ME_TELEPORT)
	player:sendTextMessage(MESSAGE_INFO_DESCR, "You have been teleported!")
	return true
end

-- Add all positions using loop
for _, pos in pairs(portalPositions) do
	portal:position(pos)
end

portal:register()

