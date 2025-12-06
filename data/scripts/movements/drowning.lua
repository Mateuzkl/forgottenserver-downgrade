local condition = Condition(CONDITION_DROWN)
condition:setParameter(CONDITION_PARAM_PERIODICDAMAGE, -20)
condition:setParameter(CONDITION_PARAM_TICKS, -1)
condition:setParameter(CONDITION_PARAM_TICKINTERVAL, 2000)


local stepIn = MoveEvent()
function stepIn.onStepIn(creature, item, position, fromPosition)
    if creature:isPlayer() then
        creature:addCondition(condition)
        creature:addAchievementProgress("Deep Sea Diver", 1000000)
    end
    return true
end
stepIn:type("stepin")
stepIn:id(5405)
stepIn:register()


local stepOut = MoveEvent()
function stepOut.onStepOut(creature, item, position, fromPosition)
    if creature:isPlayer() then creature:removeCondition(CONDITION_DROWN) end
    return true
end
stepOut:type("stepout")
stepOut:id(5405)
stepOut:register()
