local moveevent = MoveEvent()
function moveevent.onAddItem(moveitem, tileitem, position)
	if moveitem:getId() == 2693 then
		moveitem:transform(2689)
		position:sendMagicEffect(CONST_ME_HITBYFIRE)
	elseif moveitem:getId() == 6277 then
		moveitem:transform(2687, 12)
		position:sendMagicEffect(CONST_ME_HITBYFIRE)
	end
	return true
end
moveevent:type("additem")
moveevent:id(1786, 1788, 1790, 1792)
moveevent:tileItem(1)
moveevent:register()
