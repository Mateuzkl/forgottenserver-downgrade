local statues = {
	18488, 18489, 18490, 18491, 18492
}

local skillOffline = Action()

function skillOffline.onUse(player, item, fromPosition, target, toPosition, isHotkey)
	if player:isPzLocked() then
		return false
	end
	
	-- SKILL_OFFLINE_AUTO = 255
	player:setOfflineTrainingSkill(255)
	player:remove()
	return true
end

for _, id in ipairs(statues) do
	skillOffline:id(id)
end

skillOffline:register()