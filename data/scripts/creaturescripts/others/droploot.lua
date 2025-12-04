local DropLoot = CreatureEvent("DropLoot")
function DropLoot.onDeath(player, corpse, killer, mostDamageKiller, lastHitUnjustified, mostDamageUnjustified)
    if player:hasFlag(PlayerFlag_NotGenerateLoot) or player:getVocation():getId() == VOCATION_NONE then
        return true
    end

    local isRedOrBlack = table.contains({SKULL_RED, SKULL_BLACK}, player:getSkull())

    local totalReduceSkillLoss = 0
    for i = CONST_SLOT_HEAD, CONST_SLOT_AMMO do
        local item = player:getSlotItem(i)
        if item then
            local reduceSkillLoss = item:getReduceSkillLoss()
            if reduceSkillLoss > 0 then
                totalReduceSkillLoss = totalReduceSkillLoss + reduceSkillLoss
            end
        end
    end

    local baseLoss = player:getLossPercent() * 100
    local finalLossPercent = math.max(0, baseLoss - totalReduceSkillLoss)

    local amulet = player:getSlotItem(CONST_SLOT_NECKLACE)
    if amulet and amulet:getId() == ITEM_AMULETOFLOSS and not isRedOrBlack then
        local isPlayer = killer and (killer:isPlayer() or (killer:getMaster() and killer:getMaster():isPlayer()))
        if not isPlayer or not player:hasBlessing(6) then
            player:removeItem(ITEM_AMULETOFLOSS, 1, -1, false)
        end
        if not player:getSlotItem(CONST_SLOT_BACKPACK) then
            player:addItem(ITEM_BAG, 1, false, CONST_SLOT_BACKPACK)
        end
        return true
    end

    for i = CONST_SLOT_HEAD, CONST_SLOT_AMMO do
        local item = player:getSlotItem(i)
        if item then
            local maxRandom = item:isContainer() and 100 or 1000
            local randomValue = math.random(1, maxRandom)
            local threshold = (finalLossPercent / 100) * maxRandom
            local willLose = isRedOrBlack or randomValue <= threshold

            if willLose and (isRedOrBlack or finalLossPercent > 0) then
                if not item:moveTo(corpse) then
                    item:remove()
                end
            end
        end
    end

    if not player:getSlotItem(CONST_SLOT_BACKPACK) then
        player:addItem(ITEM_BAG, 1, false, CONST_SLOT_BACKPACK)
    end
    return true
end
DropLoot:register()

local login = CreatureEvent("DropLogin")
function login.onLogin(player)
    player:registerEvent("DropLoot")
    return true
end
login:register()
