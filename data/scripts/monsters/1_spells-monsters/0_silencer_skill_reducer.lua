local combats = {}

for i = 40, 70 do
    local combat = Combat()
    combat:setParameter(COMBAT_PARAM_EFFECT, CONST_ME_ENERGYHIT)
    combat:setParameter(COMBAT_PARAM_DISTANCEEFFECT, CONST_ANI_ENERGY)

    local condition = Condition(CONDITION_ATTRIBUTES)
    condition:setParameter(CONDITION_PARAM_TICKS, 7000)
    condition:setParameter(CONDITION_PARAM_STAT_MAGICPOINTSPERCENT, i)

    combat:addCondition(condition)

    combats[i] = combat
end

local spell = Spell(SPELL_INSTANT)

function spell.onCastSpell(creature, variant)
    local idx = math.random(40, 70)
    return combats[idx]:execute(creature, variant)
end

spell:name("silencer skill reducer")
spell:words("###29")
spell:needTarget(true)
spell:isAggressive(true)
spell:blockWalls(true)
spell:register()
