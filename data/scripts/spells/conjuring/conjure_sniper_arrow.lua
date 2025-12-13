-- gerado por Spell Converter
-- script original


local spell = Spell("instant")

function spell.onCastSpell(creature, variant) return combat:execute(creature, variant) end

spell:group("support")
spell:id(164)
spell:name("Conjure Sniper Arrow")
spell:words("exevo con hur")
spell:level(24)
spell:mana(160)
spell:soul(3)
spell:isPremium(true)
spell:isSelfTarget(true)
spell:cooldown(2 * 1000)
spell:groupCooldown(2 * 1000)
spell:needLearn(false)
spell:isAggressive(false)
spell:vocation("paladin", "royal paladin")
spell:register()
