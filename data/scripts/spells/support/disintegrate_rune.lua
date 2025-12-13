-- gerado por Spell Converter
-- script original
local corpseIds = {3058, 3059, 3060, 3061, 3064, 3065, 3066}
local removalLimit = 500

local spell = Spell("rune")

function spell.onCastSpell(creature, variant) return combat:execute(creature, variant) end

spell:group("support")
spell:id(2310)
spell:runeId(2310)
spell:name("Disintegrate Rune")
spell:level(21)
spell:range(1)
spell:cooldown(2 * 1000)
spell:groupCooldown(2 * 1000)
spell:needLearn(false)
spell:register()
