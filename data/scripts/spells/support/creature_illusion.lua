-- gerado por Spell Converter
-- script original
local condition = Condition(CONDITION_OUTFIT)
condition:setTicks(180000)

local spell = Spell("instant")

function spell.onCastSpell(creature, variant) return combat:execute(creature, variant) end

spell:group("support")
spell:id(133)
spell:name("Creature Illusion")
spell:words("utevo res ina")
spell:level(23)
spell:mana(100)
spell:cooldown(2 * 1000)
spell:groupCooldown(2 * 1000)
spell:needLearn(false)
spell:isAggressive(false)
spell:vocation("sorcerer", "master sorcerer", "druid", "elder druid")
spell:register()
