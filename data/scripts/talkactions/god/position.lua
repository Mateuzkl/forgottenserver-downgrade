local talk = TalkAction("/pos", "!pos")
function talk.onSay(player, words, param)
	if player:getGroup():getAccess() and param ~= "" then
		local split = param:split(",")
		local x = tonumber(split[1])
		local y = tonumber(split[2])
		local z = tonumber(split[3])

		if x and y and z then
			player:teleportTo(Position(x, y, z))
		else
			player:sendCancelMessage("Invalid coordinates. Usage: /pos x,y,z")
		end
	else
		local position = player:getPosition()
		player:sendTextMessage(MESSAGE_STATUS_CONSOLE_BLUE,
		                       "Your current position is: " .. position.x .. ", " ..
			                       position.y .. ", " .. position.z .. ".")
	end
	return false
end
talk:separator(" ")
talk:register()
