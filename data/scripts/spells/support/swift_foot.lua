-- gerado por Spell Converter
-- script original
local combat = Combat()
combat:setParameter(COMBAT_PARAM_EFFECT, CONST_ME_MAGIC_GREEN)
combat:setParameter(COMBAT_PARAM_AGGRESSIVE, false)

local speed = Condition(CONDITION_HASTE)
speed:setParameter(CONDITION_PARAM_TICKS, 10000)
speed:setFormula(0.8, -64, 0.8, -64)
combat:addCondition(speed)

local pacified = Condition(CONDITION_PACIFIED)
pacified:setParameter(CONDITION_PARAM_TICKS, 10000)
combat:addCondition(pacified)

local spell = Spell("instant")
function spell.onCastSpell(creature, variant) return combat:execute(creature, variant) end


spell:group("support")
spell:id(147)
spell:name("Swift Foot")
spell:words("utamo tempo san")
spell:level(55)
spell:mana(400)
spell:isPremium(true)
spell:isSelfTarget(true)
spell:cooldown(2 * 1000)
spell:groupCooldown(2 * 1000)
spell:needLearn(false)
spell:isAggressive(false)
spell:vocation("paladin", "royal paladin")
spell:register()
