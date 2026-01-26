local talkaction = TalkAction("/openserver")

function talkaction.onSay(player, words, param)
	Game.setGameState(GAME_STATE_NORMAL)
	player:sendTextMessage(MESSAGE_STATUS_CONSOLE_BLUE, "Server is now open.")
	return false
end

talkaction:accountType(6)
talkaction:access(true)
talkaction:register()

