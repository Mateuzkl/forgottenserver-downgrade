local destination = {x = 17118, y = 16960, z = 7}
local portal = {
    {position = {x = 16804, y = 17067, z = 9}},
    {position = {x = 16797, y = 17116, z = 8}},
    {position = {x = 16799, y = 17142, z = 8}}
}
-- templo

local portalBoss = Action()
function portalBoss.onUse(player, item, position, fromPosition)
    if not player then return false end

    doSendMagicEffect(item:getPosition(), CONST_ME_TELEPORT)
    player:teleportTo(Position(destination))
    player:getPosition():sendMagicEffect(CONST_ME_TELEPORT)
    player:sendTextMessage(MESSAGE_INFO_DESCR, "You have been teleported out of the Sala Boss.")
    return true
end

for value in ipairs(portal) do portalBoss:position(portal[value].position) end
portalBoss:register()
