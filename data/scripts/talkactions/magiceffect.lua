local talkaction = TalkAction("!z")

function talkaction.onSay(player, words, param)
	local effect = tonumber(param)
	if (effect ~= nil and effect > 0) then
		player:getPosition():sendMagicEffect(effect)
	end

	return false
end

talkaction:separator(" ")
talkaction:access(true)
talkaction:register()

