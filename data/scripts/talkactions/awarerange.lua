local COMMANDS = {
    help = {"!screen", "!awarerange"},
    set = {"!setscreen", "!setawarerange"},
    presets = {
        small = {"!small"},
        medium = {"!medium"},
        large = {"!large"},
        huge = {"!huge"}
    },
    increase = {"!screen+", "!screenup"},
    decrease = {"!screen-", "!screendown"},
    reset = {"!screenreset", "!screendefault"}
}

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
    },
    adjustmentStep = 1,
    messages = {
        currentSize = "Current screen size: %dx%d",
        sizeChanged = "Screen size set to: %dx%d",
        invalidDimensions = "Invalid dimensions",
        widthRange = "Width must be between %d and %d",
        heightRange = "Height must be between %d and %d",
        notAvailable = "Screen size function not available",
        invalidSize = "Invalid size",
        invalidParams = "Invalid parameters",
        usage = "Usage: !setscreen <width> <height> or !setscreen <size>",
        helpPresets = "Presets: !small (15x15), !medium (20x20), !large (25x25), !huge (30x30)",
        helpAdjust = "Adjust: !screen+ or !screen- to increase/decrease"
    }
}

local function clamp(value, min, max)
    return math.max(min, math.min(max, value))
end

local function validateDimensions(width, height)
    if not width or not height then
        return false, config.messages.invalidDimensions
    end
    if width < config.min.width or width > config.max.width then
        return false, string.format(config.messages.widthRange, config.min.width, config.max.width)
    end
    if height < config.min.height or height > config.max.height then
        return false, string.format(config.messages.heightRange, config.min.height, config.max.height)
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
        player:sendTextMessage(MESSAGE_STATUS_CONSOLE_RED, config.messages.notAvailable)
        return false
    end
    player:setAwareRangeWidth(width)
    player:setAwareRangeHeight(height)
    saveSettings(player, width, height)
    player:sendTextMessage(MESSAGE_STATUS_CONSOLE_BLUE, string.format(config.messages.sizeChanged, width, height))
    return true
end

local function showHelp(player)
    local width, height = getSettings(player)
    player:sendTextMessage(MESSAGE_STATUS_CONSOLE_BLUE, string.format(config.messages.currentSize, width, height))
    player:sendTextMessage(MESSAGE_STATUS_CONSOLE_BLUE, config.messages.usage)
    player:sendTextMessage(MESSAGE_STATUS_CONSOLE_BLUE, config.messages.helpPresets)
    player:sendTextMessage(MESSAGE_STATUS_CONSOLE_BLUE, config.messages.helpAdjust)
end

local handlers = {
    help = function(player)
        showHelp(player)
    end,
    set = function(player, param)
        if param == "" then
            showHelp(player)
            return
        end
        local params = param:split(" ")
        local width, height
        if #params == 1 then
            local size = tonumber(params[1])
            if not size then
                player:sendTextMessage(MESSAGE_STATUS_CONSOLE_RED, config.messages.invalidSize)
                return
            end
            width, height = size, size
        elseif #params == 2 then
            width = tonumber(params[1])
            height = tonumber(params[2])
            if not width or not height then
                player:sendTextMessage(MESSAGE_STATUS_CONSOLE_RED, config.messages.invalidParams)
                return
            end
        else
            player:sendTextMessage(MESSAGE_STATUS_CONSOLE_RED, config.messages.usage)
            return
        end
        applySettings(player, width, height)
    end,
    preset = function(player, presetName)
        local preset = config.presets[presetName]
        if preset then
            applySettings(player, preset.width, preset.height)
        end
    end,
    increase = function(player)
        local width, height = getSettings(player)
        applySettings(player, 
            clamp(width + config.adjustmentStep, config.min.width, config.max.width),
            clamp(height + config.adjustmentStep, config.min.height, config.max.height))
    end,
    decrease = function(player)
        local width, height = getSettings(player)
        applySettings(player, 
            clamp(width - config.adjustmentStep, config.min.width, config.max.width),
            clamp(height - config.adjustmentStep, config.min.height, config.max.height))
    end,
    reset = function(player)
        applySettings(player, config.default.width, config.default.height)
    end
}

local function getAllCommands()
    local allCommands = {}
    for _, cmdList in pairs(COMMANDS.help) do
        table.insert(allCommands, cmdList)
    end
    for _, cmdList in pairs(COMMANDS.set) do
        table.insert(allCommands, cmdList)
    end
    for _, presetCmds in pairs(COMMANDS.presets) do
        for _, cmd in pairs(presetCmds) do
            table.insert(allCommands, cmd)
        end
    end
    for _, cmdList in pairs(COMMANDS.increase) do
        table.insert(allCommands, cmdList)
    end
    for _, cmdList in pairs(COMMANDS.decrease) do
        table.insert(allCommands, cmdList)
    end
    for _, cmdList in pairs(COMMANDS.reset) do
        table.insert(allCommands, cmdList)
    end
    return table.unpack(allCommands)
end

local talkaction = TalkAction(getAllCommands())

function talkaction.onSay(player, words, param)
    local command = words:lower()
    
    for _, cmd in pairs(COMMANDS.help) do
        if command == cmd then
            handlers.help(player)
            return false
        end
    end
    
    for _, cmd in pairs(COMMANDS.set) do
        if command == cmd then
            handlers.set(player, param)
            return false
        end
    end
    
    for presetName, cmdList in pairs(COMMANDS.presets) do
        for _, cmd in pairs(cmdList) do
            if command == cmd then
                handlers.preset(player, presetName)
                return false
            end
        end
    end
    
    for _, cmd in pairs(COMMANDS.increase) do
        if command == cmd then
            handlers.increase(player)
            return false
        end
    end
    
    for _, cmd in pairs(COMMANDS.decrease) do
        if command == cmd then
            handlers.decrease(player)
            return false
        end
    end
    
    for _, cmd in pairs(COMMANDS.reset) do
        if command == cmd then
            handlers.reset(player)
            return false
        end
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
