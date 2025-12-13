-- gerado por Spell Converter
-- script original
local condition = Condition(CONDITION_OUTFIT)
condition:setTicks(200000)

local spell = Spell("rune")

function spell.onCastSpell(creature, variant) return combat:execute(creature, variant) end

spell:group("support")
spell:id(2291)
spell:runeId(2291)
spell:name("Chameleon Rune")
spell:level(27)
spell:isSelfTarget(true)
spell:cooldown(2 * 1000)
spell:groupCooldown(2 * 1000)
spell:needLearn(false)
spell:isAggressive(false)
spell:register()
