-- Conversor de MoveEvents para RevScript - TFS 1.4
-- Use: /runmovements no jogo

local movementsFile = "data/movements/movements.xml"
local scriptsFolder = "data/movements/scripts/"
local outputFolder = "data/scripts/movements/"

local function readFile(path)
    local file = io.open(path, "r")
    if not file then
        return nil
    end
    local content = file:read("*a")
    file:close()
    return content
end

local function writeFile(path, content)
    local dir = path:match("(.*/)")
    if dir then
        os.execute('mkdir "' .. dir:gsub("/", "\\") .. '" 2>nul')
    end
    
    local file = io.open(path, "w")
    if not file then
        return false
    end
    file:write(content)
    file:close()
    return true
end

local function parseMovements()
    local xmlContent = readFile(movementsFile)
    if not xmlContent then
        return nil, "Erro ao ler " .. movementsFile
    end
    
    local movementsByScript = {}
    
    for line in xmlContent:gmatch("[^\r\n]+") do
        if line:match("<movevent") and line:match('script=') then
            local movement = {}
            
            movement.event = line:match('event="([^"]+)"')
            movement.itemid = line:match('itemid="(%d+)"')
            movement.fromid = line:match('fromid="(%d+)"')
            movement.toid = line:match('toid="(%d+)"')
            movement.uniqueid = line:match('uniqueid="(%d+)"')
            movement.actionid = line:match('actionid="(%d+)"')
            movement.slot = line:match('slot="([^"]+)"')
            movement.level = line:match('level="(%d+)"')
            movement.tileitem = line:match('tileitem="(%d+)"')
            movement.script = line:match('script="([^"]+)"')
            
            -- Vocations
            movement.vocations = {}
            for voc in line:gmatch('<vocation name="([^"]+)"') do
                table.insert(movement.vocations, voc)
            end
            
            if movement.script then
                if not movementsByScript[movement.script] then
                    movementsByScript[movement.script] = {}
                end
                table.insert(movementsByScript[movement.script], movement)
            end
        end
    end
    
    return movementsByScript
end

local function convertMovement(scriptPath, movements)
    local luaContent = readFile(scriptsFolder .. scriptPath)
    if not luaContent then
        return nil, "Script não encontrado: " .. scriptPath
    end
    
    -- Converte funções
    luaContent = luaContent:gsub("function%s+onStepIn%s*%(", "function moveevent.onStepIn(")
    luaContent = luaContent:gsub("function%s+onStepOut%s*%(", "function moveevent.onStepOut(")
    luaContent = luaContent:gsub("function%s+onAddItem%s*%(", "function moveevent.onAddItem(")
    luaContent = luaContent:gsub("function%s+onRemoveItem%s*%(", "function moveevent.onRemoveItem(")
    luaContent = luaContent:gsub("function%s+onEquip%s*%(", "function moveevent.onEquip(")
    luaContent = luaContent:gsub("function%s+onDeEquip%s*%(", "function moveevent.onDeEquip(")
    
    local revscript = "local moveevent = MoveEvent()\n\n"
    revscript = revscript .. luaContent
    
    if not luaContent:match("\n$") then
        revscript = revscript .. "\n"
    end
    
    revscript = revscript .. "\n"
    
    -- Agrupa por tipo de evento
    local eventTypes = {}
    for _, mv in ipairs(movements) do
        local eventType = mv.event:lower()
        if not eventTypes[eventType] then
            eventTypes[eventType] = {
                ids = {},
                slots = {},
                levels = {},
                vocations = {},
                tileitems = {}
            }
        end
        
        if mv.itemid then
            table.insert(eventTypes[eventType].ids, mv.itemid)
        elseif mv.fromid and mv.toid then
            for id = tonumber(mv.fromid), tonumber(mv.toid) do
                table.insert(eventTypes[eventType].ids, id)
            end
        end
        
        if mv.slot then
            eventTypes[eventType].slots[mv.slot] = true
        end
        
        if mv.level then
            eventTypes[eventType].levels[mv.level] = true
        end
        
        if mv.tileitem then
            eventTypes[eventType].tileitems[mv.tileitem] = true
        end
        
        for _, voc in ipairs(mv.vocations) do
            table.insert(eventTypes[eventType].vocations, voc)
        end
    end
    
    -- Registra cada tipo de evento
    for eventType, data in pairs(eventTypes) do
        revscript = revscript .. 'moveevent:type("' .. eventType .. '")\n'
        
        if #data.ids > 0 then
            revscript = revscript .. "moveevent:id(" .. table.concat(data.ids, ", ") .. ")\n"
        end
        
        for slot in pairs(data.slots) do
            revscript = revscript .. 'moveevent:slot("' .. slot .. '")\n'
        end
        
        for level in pairs(data.levels) do
            revscript = revscript .. "moveevent:level(" .. level .. ")\n"
        end
        
        for tileitem in pairs(data.tileitems) do
            revscript = revscript .. "moveevent:tileItem(" .. tileitem .. ")\n"
        end
        
        for _, voc in ipairs(data.vocations) do
            revscript = revscript .. 'moveevent:vocation("' .. voc .. '")\n'
        end
    end
    
    revscript = revscript .. "moveevent:register()\n"
    
    return revscript
end

local converter = TalkAction("/runmovements")

function converter.onSay(player, words, param)
    if not player:getGroup():getAccess() then
        player:sendTextMessage(MESSAGE_STATUS_SMALL, "Você não tem permissão.")
        return false
    end
    
    player:sendTextMessage(MESSAGE_STATUS_CONSOLE_BLUE, "🔄 Iniciando conversão de MoveEvents para RevScript...")
    
    os.execute('mkdir "' .. outputFolder:gsub("/", "\\") .. '" 2>nul')
    
    local movementsByScript, err = parseMovements()
    if not movementsByScript then
        player:sendTextMessage(MESSAGE_STATUS_CONSOLE_RED, "❌ " .. err)
        return false
    end
    
    local totalScripts = 0
    for _ in pairs(movementsByScript) do
        totalScripts = totalScripts + 1
    end
    
    player:sendTextMessage(MESSAGE_STATUS_CONSOLE_BLUE, 
        string.format("📋 Encontrados %d scripts únicos para converter", totalScripts))
    
    local converted = 0
    local errors = 0
    
    for scriptPath, movements in pairs(movementsByScript) do
        local revscript, err = convertMovement(scriptPath, movements)
        
        if revscript then
            local outputPath = outputFolder .. scriptPath
            if writeFile(outputPath, revscript) then
                converted = converted + 1
                player:sendTextMessage(MESSAGE_STATUS_CONSOLE_BLUE, "✅ " .. scriptPath)
            else
                errors = errors + 1
            end
        else
            errors = errors + 1
            player:sendTextMessage(MESSAGE_STATUS_CONSOLE_RED, "❌ " .. scriptPath .. " - " .. err)
        end
    end
    
    player:sendTextMessage(MESSAGE_STATUS_CONSOLE_BLUE, string.rep("=", 60))
    player:sendTextMessage(MESSAGE_STATUS_CONSOLE_BLUE, 
        string.format("✅ Convertidos: %d | ❌ Erros: %d", converted, errors))
    player:sendTextMessage(MESSAGE_STATUS_CONSOLE_BLUE, 
        "💡 Revise: data/scripts/movements/ | Recarregue: /reload movements")
    
    return false
end

converter:separator(" ")
converter:register()
