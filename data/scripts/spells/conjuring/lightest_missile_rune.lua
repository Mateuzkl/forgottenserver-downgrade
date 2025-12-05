local spell = Spell(SPELL_INSTANT)

function spell.onCastSpell(creature, variant)
	return creature:conjureItem(2260, 23723, 10)
end

spell:group("support")
spell:name("Lightest Missile Rune")
spell:words("adori infir vis")
spell:level(1)
spell:mana(6)
spell:soul(0)
spell:isAggressive(false)
spell:cooldown(2000)
spell:groupCooldown(2000)
spell:vocation("sorcerer", "druid", "paladin", "master sorcerer", "elder druid", "royal paladin")
spell:register()
