-- gerado por Spell Converter
-- script original
local combat = Combat()
combat:setParameter(COMBAT_PARAM_TYPE, COMBAT_ENERGYDAMAGE)
combat:setParameter(COMBAT_PARAM_EFFECT, CONST_ME_BIGCLOUDS)
combat:setArea(createCombatArea(AREA_CIRCLE6X6))

local function callback(player, level, magicLevel)
	local min = (level / 5) + (magicLevel * 4) + 75
	local max = (level / 5) + (magicLevel * 10) + 150
	return -min, -max
end

combat:setCallback(CallBackParam.LEVELMAGICVALUE, callback)

local spell = Spell("instant")
function spell.onCastSpell(creature, variant) return combat:execute(creature, variant) end


spell:group("attack")
spell:id(117)
spell:name("Rage of the Skies")
spell:words("exevo gran mas vis")
spell:level(55)
spell:mana(600)
spell:isPremium(true)
spell:isSelfTarget(true)
spell:cooldown(40 * 1000)
spell:groupCooldown(2 * 1000)
spell:needLearn(false)
spell:vocation("sorcerer", "master sorcerer")
spell:register()
