local talkaction = TalkAction("/chameleon")

local condition = Condition(CONDITION_OUTFIT, CONDITIONID_COMBAT)
condition:setTicks(-1)

function talkaction.onSay(player, words, param)
	local itemType = ItemType(param)
	if itemType:getId() == 0 then
		local id = tonumber(param)
		if id then
			itemType = ItemType(id)
		end
	end

	if not itemType or itemType:getId() == 0 then
		player:sendCancelMessage("There is no item with that id or name.")
		return false
	end

	condition:setOutfit(itemType:getId())
	player:addCondition(condition)
	return false
end

talkaction:separator(" ")
talkaction:accountType(6)
talkaction:access(true)
talkaction:register()

