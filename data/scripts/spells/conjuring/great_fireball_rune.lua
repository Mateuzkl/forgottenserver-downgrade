-- gerado por Spell Converter
-- script original
local spell = Spell("instant")
function spell.onCastSpell(creature, variant)
	return creature:conjureItem(2260, 2304, 4)
end


spell:group("support")
spell:id(179)
spell:name("Great Fireball Rune")
spell:words("adori mas flam")
spell:level(30)
spell:mana(530)
spell:soul(3)
spell:cooldown(2 * 1000)
spell:groupCooldown(2 * 1000)
spell:needLearn(false)
spell:isAggressive(false)
spell:vocation("sorcerer", "master sorcerer")
spell:register()
