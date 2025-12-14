-- gerado por Spell Converter
-- script original
local combat = Combat()
combat:setParameter(COMBAT_PARAM_TYPE, COMBAT_ENERGYDAMAGE)
combat:setParameter(COMBAT_PARAM_EFFECT, CONST_ME_ENERGYHIT)
combat:setParameter(COMBAT_PARAM_DISTANCEEFFECT, CONST_ANI_ENERGYBALL)
combat:setParameter(COMBAT_PARAM_CREATEITEM, ITEM_ENERGYFIELD_PVP)
combat:setArea(createCombatArea(AREA_WALLFIELD, AREADIAGONAL_WALLFIELD))

local spell = Spell("rune")
function spell.onCastSpell(creature, variant, isHotkey)
	return combat:execute(creature, variant)
end


spell:group("attack")
spell:id(2279)
spell:runeId(2279)
spell:name("Energy Wall Rune")
spell:level(41)
spell:cooldown(2 * 1000)
spell:groupCooldown(2 * 1000)
spell:needLearn(false)
spell:register()
