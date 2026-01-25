local event = Event()
event.onTradeRequest = function(self, target, item)
	-- Empty
	return true
end
event:register()
