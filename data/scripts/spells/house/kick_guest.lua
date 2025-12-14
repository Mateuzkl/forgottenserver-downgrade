-- gerado por Spell Converter
-- script original
local spell = Spell("instant")
function spell.onCastSpell(creature, variant)
	local target = Player(variant:getString()) or creature
	local house = target:getTile():getHouse()
	if not house or not house:kickPlayer(creature, target) then
		creature:sendCancelMessage(RETURNVALUE_NOTPOSSIBLE)
		creature:getPosition():sendMagicEffect(CONST_ME_POFF)
		return false
	end
	return true
end


spell:group("support")
spell:id(199)
spell:name("House Kick")
spell:words("alana sio")
spell:cooldown(2 * 1000)
spell:groupCooldown(2 * 1000)
spell:needLearn(false)
spell:isAggressive(false)
spell:playerNameParam(true)
spell:hasParams(true)
spell:register()
