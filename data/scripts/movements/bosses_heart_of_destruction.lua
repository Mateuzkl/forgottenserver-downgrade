local config = {
    {destination = Position({x = 16882, y = 17157, z = 8}), position = Position({x = 16804, y = 17154, z = 8})},
    {destination = Position({x = 16804, y = 17152, z = 8}), position = Position({x = 16882, y = 17159, z = 8})}
}

local bossesHearthOfDestruction = MoveEvent()
function bossesHearthOfDestruction.onStepIn(creature, item, position, fromPosition)
    local player = creature:getPlayer()
    if not player then return false end

    for value in pairs(config) do
        if config[value].position == player:getPosition() then
            player:teleportTo(config[value].destination)
            player:getPosition():sendMagicEffect(CONST_ME_TELEPORT)
            return true
        end
    end
end

bossesHearthOfDestruction:type("stepin")
for value in pairs(config) do bossesHearthOfDestruction:position(config[value].position) end
bossesHearthOfDestruction:register()
