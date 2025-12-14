function Spell:blockType(blockType)
	local type = blockType:lower()
	if type == 'solid' then
		self:isBlocking(true, false)
	elseif type == 'creature' then
		self:isBlocking(false, true)
	elseif type == 'all' then
		self:isBlocking(true, true)
	end
end

function Spell:playerNameParam(bool)
	self:hasPlayerNameParam(bool)
end

function Spell:secondaryGroup(secondaryGroup)
	local primaryGroup = self:group()
	self:group(primaryGroup, secondaryGroup)
end
