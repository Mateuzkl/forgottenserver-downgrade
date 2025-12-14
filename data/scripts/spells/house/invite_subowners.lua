-- gerado por Spell Converter
-- script original
local spell = Spell("instant")
function spell.onCastSpell(creature, variant)
	local house = creature:getTile():getHouse()
	if not house or not house:canEditAccessList(SUBOWNER_LIST, creature) then
		creature:sendCancelMessage(RETURNVALUE_NOTPOSSIBLE)
		creature:getPosition():sendMagicEffect(CONST_ME_POFF)
		return false
	end

	creature:setEditHouse(house, SUBOWNER_LIST)
	creature:sendHouseWindow(house, SUBOWNER_LIST)
	return true
end


spell:group("support")
spell:id(200)
spell:name("House Subowner List")
spell:words("aleta som")
spell:cooldown(2 * 1000)
spell:groupCooldown(2 * 1000)
spell:needLearn(false)
spell:isAggressive(false)
spell:register()
