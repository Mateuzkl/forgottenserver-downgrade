local clean = TalkAction("/clean")

function clean.onSay(player, words, param)
	if player:getGroup():getAccess() then
		local itemCount = cleanMap()
		if itemCount > 0 then
			player:sendTextMessage(MESSAGE_STATUS_CONSOLE_BLUE, "Cleaned " .. itemCount .. " item" .. (itemCount > 1 and "s" or "") .. " from the map.")
		else
			player:sendTextMessage(MESSAGE_STATUS_CONSOLE_BLUE, "No cleanable items found.")
		end
	else
		player:sendCancelMessage("You cannot execute this command.")
	end
	return false
end

clean:separator(" ")
clean:register()
