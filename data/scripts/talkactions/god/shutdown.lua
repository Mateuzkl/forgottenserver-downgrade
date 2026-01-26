local talkaction = TalkAction("/shutdown")

local function shutdownSequence(minutes)
	if minutes == 0 then
		Game.setGameState(GAME_STATE_SHUTDOWN)
		return
	end

	Game.broadcastMessage("Server is shutting down in " .. minutes .. " minute(s). Please log off.", MESSAGE_STATUS_WARNING)

	if minutes > 1 then
		addEvent(shutdownSequence, 60 * 1000, minutes - 1)
	else
		addEvent(function() Game.broadcastMessage("Server is shutting down in 30 seconds.", MESSAGE_STATUS_WARNING) end, 30 * 1000)
		addEvent(function() Game.broadcastMessage("Server is shutting down in 10 seconds.", MESSAGE_STATUS_WARNING) end, 50 * 1000)
		addEvent(function() Game.setGameState(GAME_STATE_SHUTDOWN) end, 60 * 1000)
	end
end

function talkaction.onSay(player, words, param)
	if not param or param == "" then
		Game.setGameState(GAME_STATE_SHUTDOWN)
		return false
	end

	local minutes = tonumber(param)
	if not minutes then
		player:sendCancelMessage("Invalid time specified.")
		return false
	end

	shutdownSequence(minutes)
	return false
end

talkaction:separator(" ")
talkaction:accountType(6)
talkaction:access(true)
talkaction:register()
