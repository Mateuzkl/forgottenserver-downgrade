-- gerado por Spell Converter
-- script original


local spell = Spell("rune")

function spell.onCastSpell(creature, variant) return combat:execute(creature, variant) end

spell:group("support")
spell:id(2316)
spell:runeId(2316)
spell:name("Animate Dead Rune")
spell:level(27)
spell:cooldown(2 * 1000)
spell:groupCooldown(2 * 1000)
spell:needLearn(false)
spell:register()
