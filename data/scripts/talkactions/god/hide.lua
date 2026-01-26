local talkaction = TalkAction("/hide")

function talkaction.onSay(player, words, param)
	player:setHiddenHealth(not player:isHealthHidden())
	return false
end

talkaction:accountType(6)
talkaction:access(true)
talkaction:register()

