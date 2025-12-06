local action = Action()

function action.onUse(player, item, fromPosition, target, toPosition, isHotkey)
	player:sendTextMessage(MESSAGE_INFO_DESCR,
	                       "The time is " .. getFormattedWorldTime() .. ".")
	return true
end

action:id(1728, 1729, 1730, 1731, 2036, 3900, 6092, 7828, 9443, 9444)
action:register()
