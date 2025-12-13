-- gerado por Spell Converter
-- script original


local spell = Spell("instant")

function spell.onCastSpell(creature, variant) return combat:execute(creature, variant) end

spell:group("support")
spell:id(146)
spell:name("Summon Creature")
spell:words("utevo res")
spell:level(25)
spell:cooldown(2 * 1000)
spell:groupCooldown(2 * 1000)
spell:needLearn(false)
spell:vocation("sorcerer", "master sorcerer", "druid", "elder druid")
spell:register()
