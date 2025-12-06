local moveevent = MoveEvent()
function moveevent.onStepIn(creature, item, position, fromPosition)
	if not creature:isPlayer() then return false end

	if creature:getLevel() < item.actionid - actionIds.levelDoor and
		not creature:getGroup():getAccess() then
		creature:sendTextMessage(MESSAGE_EVENT_ADVANCE, "Only the worthy may pass.")
		creature:teleportTo(fromPosition, true)
		return false
	end
	return true
end
moveevent:type("stepin")
moveevent:id(1228, 1230, 1246, 1248, 1260, 1262, 3541, 3550, 5104, 5113, 5122, 5131, 5293, 5295, 6207, 6209, 6264, 6266, 6897, 6906, 7039, 7048, 8556, 8558, 9180, 9182, 9282, 9284, 10283, 10285, 10474, 10483, 10781, 10790, 12096, 12103, 12196, 12205)
moveevent:register()
