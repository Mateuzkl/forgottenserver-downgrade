local addPremium = TalkAction("/addpremium")

function addPremium.onSay(player, words, param)
	if not player:getGroup():getAccess() then
		return true
	end

	if param == "" then
		player:sendTextMessage(MESSAGE_STATUS_CONSOLE_BLUE, "Usage: /addpremium <player name>, <days>")
		return false
	end

	local split = param:split(",")
	local name = split[1]:trim()
	local days = tonumber(split[2]) or 30

	local target = Player(name)
	if target then
		target:addPremiumDays(days)
		player:sendTextMessage(MESSAGE_STATUS_CONSOLE_BLUE, "Added " .. days .. " premium days to " .. target:getName() .. ".")
		target:sendTextMessage(MESSAGE_INFO_DESCR, "You received " .. days .. " premium days!")
	else
		-- Player offline, update database directly
		local resultId = db.storeQuery("SELECT `account_id` FROM `players` WHERE `name` = " .. db.escapeString(name))
		if resultId then
			local accountId = result.getNumber(resultId, "account_id")
			result.free(resultId)
			
			local currentTime = os.time()
			local premiumResult = db.storeQuery("SELECT `premdays`, `lastday` FROM `accounts` WHERE `id` = " .. accountId)
			if premiumResult then
				local premDays = result.getNumber(premiumResult, "premdays")
				local lastDay = result.getNumber(premiumResult, "lastday")
				result.free(premiumResult)
				
				if lastDay < currentTime then
					lastDay = currentTime
				end
				
				db.query("UPDATE `accounts` SET `premdays` = " .. (premDays + days) .. ", `lastday` = " .. lastDay .. " WHERE `id` = " .. accountId)
				player:sendTextMessage(MESSAGE_STATUS_CONSOLE_BLUE, "Added " .. days .. " premium days to offline player " .. name .. ".")
			end
		else
			player:sendTextMessage(MESSAGE_STATUS_CONSOLE_BLUE, "Player " .. name .. " not found.")
		end
	end

	return false
end

addPremium:separator(" ")
addPremium:register()
