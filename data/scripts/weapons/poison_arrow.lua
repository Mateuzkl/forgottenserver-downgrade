local combat = Combat()
combat:setParameter(COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
combat:setParameter(COMBAT_PARAM_DISTANCEEFFECT, CONST_ANI_POISONARROW)
combat:setParameter(COMBAT_PARAM_BLOCKARMOR, true)
combat:setFormula(COMBAT_FORMULA_SKILL, 0, 0, 1, 0)

local poisonArrow = Weapon(WEAPON_AMMO)

function poisonArrow.onUseWeapon(player, variant)
    if not combat:execute(player, variant) then
        return false
    end

    player:addDamageCondition(Creature(variant:getNumber()), CONDITION_POISON, DAMAGELIST_LOGARITHMIC_DAMAGE, 3)
    return true
end

poisonArrow:id(2545)
poisonArrow:action("removecount")
poisonArrow:ammoType("arrow")
poisonArrow:shootType(CONST_ANI_POISONARROW)
poisonArrow:register()
