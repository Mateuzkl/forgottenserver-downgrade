local talkaction = TalkAction("/autoloot", "!autoloot")
function talkaction.onSay(player, words, param)
	player:sendAutoLootWindow()
	return false
end
talkaction:register()
