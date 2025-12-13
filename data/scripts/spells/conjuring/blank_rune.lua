-- gerado por Spell Converter
-- script original
function onCastSpell(creature, variant) return creature:conjureItem(0, 2260, 1) end

local spell = Spell("instant")

function spell.onCastSpell(creature, variant) return combat:execute(creature, variant) end

spell:group("support")
spell:id(156)
spell:name("Blank Rune")
spell:words("adori blank")
spell:level(20)
spell:mana(50)
spell:soul(1)
spell:cooldown(2 * 1000)
spell:groupCooldown(2 * 1000)
spell:needLearn(false)
spell:isAggressive(false)
spell:vocation("druid", "elder druid", "paladin", "royal paladin", "sorcerer", "master sorcerer")
spell:register()
