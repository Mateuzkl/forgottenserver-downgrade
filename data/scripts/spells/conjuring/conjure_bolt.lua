-- gerado por Spell Converter
-- script original


local spell = Spell("instant")

function spell.onCastSpell(creature, variant) return combat:execute(creature, variant) end

spell:group("support")
spell:id(159)
spell:name("Conjure Bolt")
spell:words("exevo con mort")
spell:level(17)
spell:mana(140)
spell:soul(2)
spell:isPremium(true)
spell:isSelfTarget(true)
spell:cooldown(2 * 1000)
spell:groupCooldown(2 * 1000)
spell:needLearn(false)
spell:isAggressive(false)
spell:vocation("paladin", "royal paladin")
spell:register()
