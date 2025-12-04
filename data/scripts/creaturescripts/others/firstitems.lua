local firstItems = {2050, 2382}

local login = CreatureEvent("FirstItems")
function login.onLogin(player)
    if player:getLastLoginSaved() == 0 then
        for i = 1, #firstItems do
            player:addItem(firstItems[i], 1)
        end
        player:addItem(player:getSex() == PLAYERSEX_FEMALE and 2651 or 2650, 1)
        player:addItem(ITEM_BAG, 1):addItem(2674, 1)
    end
    return true
end
login:register()
