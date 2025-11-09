local config = {[6530] = {changeTo = 6529}, value = 12000}
local reparoSoft = Action()

function reparoSoft.onUse(player, item, fromPosition, target, toPosition,
                          isHotkey)
    local soft = config[item:getId()]
    if soft.changeTo then
        if player:removeMoney(config.value) or player:removeMoneyBank(config.value) then
            item:remove()
            player:addItem(soft.changeTo)
            player:sendTextMessage(MESSAGE_REPORT,("A sua %s foi recarregada."):format(item:getName()))
            return true
        else
            player:getPosition():sendMagicEffect(CONST_ME_POFF)
            player:sendCancelMessage("Voce esta sem dinheiro para recarregar sua soft.")
            return true
        end
    end
    return false;
end
reparoSoft:id(6530)
reparoSoft:register()
