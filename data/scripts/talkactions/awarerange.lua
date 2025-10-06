local config = {
    min = {width = 10, height = 10},
    max = {width = 30, height = 30},
    default = {width = 20, height = 20},
    storage = {width = 50001, height = 50002},
    presets = {
        small = {width = 15, height = 15},
        medium = {width = 20, height = 20},
        large = {width = 25, height = 25},
        huge = {width = 30, height = 30}
    }
}

local function clamp(value, min, max)
    return math.max(min, math.min(max, value))
end

local function validateDimensions(width, height)
    if not width or not height then
        return false, "Dimensões inválidas"
    end
    if width < config.min.width or width > config.max.width then
        return false, string.format("Largura deve estar entre %d e %d", config.min.width, config.max.width)
    end
    if height < config.min.height or height > config.max.height then
        return false, string.format("Altura deve estar entre %d e %d", config.min.height, config.max.height)
    end
    return true, ""
end

local function getSettings(player)
    local width = player:getStorageValue(config.storage.width)
    local height = player:getStorageValue(config.storage.height)
    return width > 0 and width or config.default.width,
           height > 0 and height or config.default.height
end

local function saveSettings(player, width, height)
    player:setStorageValue(config.storage.width, width)
    player:setStorageValue(config.storage.height, height)
end

local function applySettings(player, width, height)
    local valid, error = validateDimensions(width, height)
    if not valid then
        player:sendTextMessage(MESSAGE_STATUS_CONSOLE_RED, error)
        return false
    end
    
    if not player.setAwareRangeWidth or not player.setAwareRangeHeight then
        player:sendTextMessage(MESSAGE_STATUS_CONSOLE_RED, "Função de tela não disponível")
        return false
    end
    
    player:setAwareRangeWidth(width)
    player:setAwareRangeHeight(height)
    saveSettings(player, width, height)
    player:sendTextMessage(MESSAGE_STATUS_CONSOLE_BLUE, string.format("Tamanho da tela: %dx%d", width, height))
    return true
end

local function showHelp(player)
    local width, height = getSettings(player)
    player:sendTextMessage(MESSAGE_STATUS_CONSOLE_BLUE, string.format("Tamanho atual: %dx%d", width, height))
    player:sendTextMessage(MESSAGE_STATUS_CONSOLE_BLUE, "!setscreen <largura> <altura> ou !setscreen <tamanho>")
    player:sendTextMessage(MESSAGE_STATUS_CONSOLE_BLUE, string.format("Presets: !small (15x15), !medium (20x20), !large (25x25), !huge (30x30)"))
    player:sendTextMessage(MESSAGE_STATUS_CONSOLE_BLUE, "!screen+ ou !screen- para ajustar")
end

local talkaction = TalkAction("!screen", "!awarerange", "!setscreen", "!setawarerange", 
                              "!small", "!medium", "!large", "!huge",
                              "!screen+", "!screen-", "!screenup", "!screendown",
                              "!screenreset", "!screendefault")

function talkaction.onSay(player, words, param)
    local command = words:lower()
    
    if command == "!screen" or command == "!awarerange" then
        showHelp(player)
        return false
    end
    
    if command == "!setscreen" or command == "!setawarerange" then
        if param == "" then
            showHelp(player)
            return false
        end
        
        local params = param:split(" ")
        local width, height
        
        if #params == 1 then
            local size = tonumber(params[1])
            if not size then
                player:sendTextMessage(MESSAGE_STATUS_CONSOLE_RED, "Tamanho inválido")
                return false
            end
            width, height = size, size
        elseif #params == 2 then
            width = tonumber(params[1])
            height = tonumber(params[2])
            if not width or not height then
                player:sendTextMessage(MESSAGE_STATUS_CONSOLE_RED, "Parâmetros inválidos")
                return false
            end
        else
            player:sendTextMessage(MESSAGE_STATUS_CONSOLE_RED, "Use: !setscreen <largura> <altura> ou !setscreen <tamanho>")
            return false
        end
        
        applySettings(player, width, height)
        return false
    end
    
    if config.presets[command:sub(2)] then
        local preset = config.presets[command:sub(2)]
        applySettings(player, preset.width, preset.height)
        return false
    end
    
    if command == "!screen+" or command == "!screenup" then
        local width, height = getSettings(player)
        applySettings(player, 
            clamp(width + 1, config.min.width, config.max.width),
            clamp(height + 1, config.min.height, config.max.height))
        return false
    end
    
    if command == "!screen-" or command == "!screendown" then
        local width, height = getSettings(player)
        applySettings(player, 
            clamp(width - 1, config.min.width, config.max.width),
            clamp(height - 1, config.min.height, config.max.height))
        return false
    end
    
    if command == "!screenreset" or command == "!screendefault" then
        applySettings(player, config.default.width, config.default.height)
        return false
    end
    
    return false
end

talkaction:separator(" ")
talkaction:register()

local loginEvent = CreatureEvent("AwareRangeAutoload")

function loginEvent.onLogin(player)
    local width, height = getSettings(player)
    if player.setAwareRangeWidth and player.setAwareRangeHeight then
        player:setAwareRangeWidth(width)
        player:setAwareRangeHeight(height)
    end
    return true
end

loginEvent:register()
