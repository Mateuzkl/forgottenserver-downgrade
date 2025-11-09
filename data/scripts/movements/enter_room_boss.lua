local config = {
    position = Position(17114, 16954, 7),
    destination = Position(16804, 17069, 9)
}

local salaBossesEntrance = MoveEvent()
function salaBossesEntrance.onStepIn(creature, item, position, fromPosition)
    local player = creature:getPlayer()

    if not player then return false end

    if player:getLevel() < 250 then
        player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "Você precisa ser level 250 para entrar na sala dos bosses.")
        player:getPosition():sendMagicEffect(CONST_ME_TELEPORT)
        player:teleportTo(fromPosition, true)
        return false
    end
    
    if config.position == player:getPosition() then
        player:teleportTo(config.destination)
        player:getPosition():sendMagicEffect(CONST_ME_TELEPORT)
        return true
    end
end

salaBossesEntrance:type("stepin")
salaBossesEntrance:position(config.position)
salaBossesEntrance:register()
