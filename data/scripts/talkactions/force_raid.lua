local talkaction = TalkAction("/raid")

function talkaction.onSay(player, words, param)
	logCommand(player, words, param)

	local returnValue = Game.startRaid(param)
	if returnValue ~= RETURNVALUE_NOERROR then
		player:sendTextMessage(MESSAGE_STATUS_CONSOLE_BLUE,
		                       Game.getReturnMessage(returnValue))
	else
		player:sendTextMessage(MESSAGE_STATUS_CONSOLE_BLUE, "Raid started.")
	end

	return false
end

talkaction:separator(" ")
talkaction:accountType(4)
talkaction:access(true)
talkaction:register()

