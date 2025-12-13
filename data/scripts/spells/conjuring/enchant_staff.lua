-- gerado por Spell Converter
-- script original


local spell = Spell("instant")

function spell.onCastSpell(creature, variant) return combat:execute(creature, variant) end

spell:group("support")
spell:id(170)
spell:name("Enchant Staff")
spell:words("exeta vis")
spell:level(41)
spell:mana(80)
spell:isPremium(true)
spell:isSelfTarget(true)
spell:cooldown(2 * 1000)
spell:groupCooldown(2 * 1000)
spell:needLearn(false)
spell:isAggressive(false)
spell:vocation("master sorcerer")
spell:register()
