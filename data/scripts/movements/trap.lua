local traps = {
    [1510] = { -- strange slits
        transformTo = 1511,
        damage = {-60, -60}
    },
    [1513] = { -- spikes
        damage = {-60, -60}
    },
    [2579] = { -- trap
        transformTo = 2578,
        damage = {-30, -30}
    },
    [4208] = { -- jungle maw
        transformTo = 4209,
        damage = {-30, -30},
        type = COMBAT_EARTHDAMAGE
    }
}

local stepIn = MoveEvent()
function stepIn.onStepIn(creature, item, position, fromPosition)
    local trap = traps[item.itemid]
    if not trap then return true end

    if creature:isMonster() or creature:isPlayer() then
        doTargetCombat(0, creature, trap.type or COMBAT_PHYSICALDAMAGE,
                       trap.damage[1], trap.damage[2], CONST_ME_NONE, true, false,
                       false)
    end

    if trap.transformTo then item:transform(trap.transformTo) end
    return true
end
stepIn:type("stepin")
stepIn:id(1510, 1513, 2579, 4208)
stepIn:register()


local stepOut = MoveEvent()
function stepOut.onStepOut(creature, item, position, fromPosition)
    item:transform(item.itemid - 1)
    return true
end
stepOut:type("stepout")
stepOut:id(1511)
stepOut:register()

local removeItem = MoveEvent()
function removeItem.onRemoveItem(item, tile, position)
    local itemPosition = item:getPosition()
    if itemPosition:getDistance(position) > 0 then
        item:transform(item.itemid - 1)
        itemPosition:sendMagicEffect(CONST_ME_POFF)
    end
    return true
end
removeItem:type("removeitem")
removeItem:id(2579)
removeItem:register()
