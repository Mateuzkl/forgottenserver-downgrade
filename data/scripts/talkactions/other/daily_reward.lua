local config = {
    storage = 45002,
    cooldown = 24 * 60 * 60, -- 24 hours in seconds
    charges = 1000,
    rewards = {
        [4] = 31208, -- Knight
        [3] = 31211, -- Paladin
        [2] = 31212, -- Druid
        [1] = 31213  -- Sorcerer
    }
}

local dailyReward = TalkAction("!dailyexercise")
function dailyReward.onSay(player, words, param)
    local storageValue = player:getStorageValue(config.storage) or -1
    
    if storageValue ~= -1 and storageValue > os.time() then
        player:sendCancelMessage("You already claimed your daily reward. Try again in " .. os.date("!%H:%M:%S", storageValue - os.time()) .. ".")
        return false
    end

    local vocation = player:getVocation()
    local baseVocId = vocation:getBase():getId()
    local rewardId = config.rewards[baseVocId]
    
    if not rewardId then
        player:sendCancelMessage("Your vocation cannot receive this reward.")
        return false
    end

    local item = player:addItem(rewardId, 1)
    if item then
        item:setAttribute(ITEM_ATTRIBUTE_CHARGES, config.charges)
        player:setStorageValue(config.storage, os.time() + config.cooldown)
        player:sendTextMessage(MESSAGE_INFO_DESCR, "You received your daily " .. item:getName() .. " with " .. config.charges .. " charges!")
        player:getPosition():sendMagicEffect(CONST_ME_MAGIC_BLUE)
    else
        player:sendCancelMessage("You don't have enough space.")
    end

    return false
end
dailyReward:register()
