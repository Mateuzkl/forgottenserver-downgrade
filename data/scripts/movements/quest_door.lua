local moveevent = MoveEvent()
function moveevent.onStepIn(creature, item, position, fromPosition)
	if not creature:isPlayer() then return false end

	if creature:getStorageValue(item.actionid) == -1 and
		not creature:getGroup():getAccess() then
		creature:sendTextMessage(MESSAGE_EVENT_ADVANCE,
		                         "The door seems to be sealed against unwanted intruders.")
		creature:teleportTo(fromPosition, true)
		return false
	end
	return true
end
moveevent:type("stepin")
moveevent:id(1224, 1226, 1242, 1244, 1256, 1258, 3543, 3552, 5106, 5115, 5124, 5133, 5289, 5291, 5746, 5749, 6203, 6205, 6260, 6262, 6899, 6908, 7041, 7050, 8552, 8554, 9176, 9178, 9278, 9280, 10279, 10281, 10476, 10485, 10783, 10792, 12098, 12105, 12194, 12203)
moveevent:register()
