local OPCODE_LANGUAGE = 1

local extendedOpcode = CreatureEvent("ExtendedOpcode")
function extendedOpcode.onExtendedOpcode(player, opcode, buffer)
    if opcode == OPCODE_LANGUAGE then
        if buffer == "en" or buffer == "pt" then
            player:setStorageValue(Storage.Language, buffer == "pt" and 1 or 0)
        end
    end
    return true
end
extendedOpcode:register()

local login = CreatureEvent("ExtendedOpcodeLogin")
function login.onLogin(player)
    player:registerEvent("ExtendedOpcode")
    return true
end
login:register()
