local moveevent = MoveEvent()
function moveevent.onStepIn(creature, item, position, fromPosition)
	if item.uid > 0 and item.uid <= 65535 then
		creature:teleportTo(fromPosition, false)
	end
	return true
end
moveevent:type("stepin")
moveevent:id(1738, 1740, 1746, 1747, 1748, 1749)
moveevent:register()
