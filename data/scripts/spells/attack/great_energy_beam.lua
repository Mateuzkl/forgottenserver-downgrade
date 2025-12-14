-- gerado por Spell Converter
-- script original
local combat = Combat()
combat:setParameter(COMBAT_PARAM_TYPE, COMBAT_ENERGYDAMAGE)
combat:setParameter(COMBAT_PARAM_EFFECT, CONST_ME_ENERGYAREA)
combat:setArea(createCombatArea(AREA_BEAM8))

local function callback(player, level, magicLevel)
	local min = (level / 5) + (magicLevel * 3.6) + 22
	local max = (level / 5) + (magicLevel * 6) + 37
	return -min, -max
end

combat:setCallback(CallBackParam.LEVELMAGICVALUE, callback)

local spell = Spell("instant")
function spell.onCastSpell(creature, variant) return combat:execute(creature, variant) end


spell:group("attack")
spell:id(112)
spell:name("Great Energy Beam")
spell:words("exevo gran vis lux")
spell:level(29)
spell:mana(110)
spell:cooldown(6 * 1000)
spell:groupCooldown(2 * 1000)
spell:needLearn(false)
spell:vocation("sorcerer", "master sorcerer")
spell:register()
