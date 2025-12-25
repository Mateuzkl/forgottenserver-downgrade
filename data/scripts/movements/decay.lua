local moveevent = MoveEvent()
function moveevent.onStepIn(creature, item, position, fromPosition)
local player = creature:getPlayer()
	if not player then
		return false
	end
	item:transform(item.itemid + 1)
	item:decay()
	return true
end
moveevent:type("stepin")
moveevent:id(293, 461)
moveevent:register()
