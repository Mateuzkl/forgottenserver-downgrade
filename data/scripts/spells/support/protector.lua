-- gerado por Spell Converter
-- script original
local combat = Combat()
combat:setParameter(COMBAT_PARAM_EFFECT, CONST_ME_MAGIC_GREEN)
combat:setParameter(COMBAT_PARAM_AGGRESSIVE, false)

local skill = Condition(CONDITION_ATTRIBUTES)
skill:setParameter(CONDITION_PARAM_TICKS, 13000)
skill:setParameter(CONDITION_PARAM_SKILL_SHIELDPERCENT, 220)
skill:setParameter(CONDITION_PARAM_BUFF_SPELL, true)
combat:addCondition(skill)

local pacified = Condition(CONDITION_PACIFIED)
pacified:setParameter(CONDITION_PARAM_TICKS, 10000)
combat:addCondition(pacified)

local spell = Spell("instant")
function spell.onCastSpell(creature, variant) return combat:execute(creature, variant) end


spell:group("support")
spell:id(143)
spell:name("Protector")
spell:words("utamo tempo")
spell:level(55)
spell:mana(200)
spell:isPremium(true)
spell:isSelfTarget(true)
spell:cooldown(2 * 1000)
spell:groupCooldown(2 * 1000)
spell:needLearn(false)
spell:isAggressive(false)
spell:vocation("knight", "elite knight")
spell:register()
