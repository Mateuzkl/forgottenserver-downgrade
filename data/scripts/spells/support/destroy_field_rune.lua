-- gerado por Spell Converter
-- script original


local spell = Spell("rune")

function spell.onCastSpell(creature, variant) return combat:execute(creature, variant) end

spell:group("support")
spell:id(2261)
spell:runeId(2261)
spell:name("Destroy Field Rune")
spell:level(17)
spell:range(5)
spell:cooldown(2 * 1000)
spell:groupCooldown(2 * 1000)
spell:needLearn(false)
spell:isAggressive(false)
spell:register()
