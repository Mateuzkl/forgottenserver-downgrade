-- gerado por Spell Converter
-- script original
local combat = Combat()
combat:setParameter(COMBAT_PARAM_TYPE, COMBAT_ENERGYDAMAGE)
combat:setParameter(COMBAT_PARAM_EFFECT, CONST_ME_ENERGYHIT)
combat:setParameter(COMBAT_PARAM_DISTANCEEFFECT, CONST_ANI_ENERGYBALL)
combat:setArea(createCombatArea(AREA_CIRCLE3X3))

local function callback(player, level, magicLevel)
	local min = (level / 5) + magicLevel + 6
	local max = (level / 5) + (magicLevel * 2.6) + 16
	return -min, -max
end

combat:setCallback(CallBackParam.LEVELMAGICVALUE, callback)

local spell = Spell("rune")
function spell.onCastSpell(creature, variant, isHotkey)
	return combat:execute(creature, variant)
end


spell:group("attack")
spell:id(2315)
spell:runeId(2315)
spell:name("Thunderstorm Rune")
spell:level(28)
spell:cooldown(2 * 1000)
spell:groupCooldown(2 * 1000)
spell:needLearn(false)
spell:register()
