local debugAssert = PacketHandler(0xE8)

function debugAssert.onReceive(player, msg)
	if player:hasDebugAssertSent() then return end

	local assertLine = msg:getString()
	local date = msg:getString()
	local description = msg:getString()
	local comment = msg:getString()
	
	local query = string.format(
		"INSERT INTO `player_debugasserts` (`player_id`, `assert_line`, `date`, `description`, `comment`) VALUES(%d, %s, %s, %s, %s)",
		player:getGuid(),
		db.escapeString(assertLine),
		db.escapeString(date),
		db.escapeString(description),
		db.escapeString(comment)
	)
	
	db.asyncQuery(query)
end

debugAssert:register()
