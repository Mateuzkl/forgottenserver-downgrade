local record = GlobalEvent("PlayerRecord")
function record.onRecord(current, old)
    addEvent(Game.broadcastMessage, 150, "New record: " .. current .. " players are logged in.", MESSAGE_STATUS_DEFAULT)
    return true
end
record:type("record")
record:register()
