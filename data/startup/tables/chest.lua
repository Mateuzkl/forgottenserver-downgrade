--[[
	Look README.md for see the reserved action/unique numbers
	From range 5000 to 6000 is reserved for keys chest
	From range 6001 to 472 is reserved for script reward
	Path: data\scripts\actions\system\quests_reward_common.lua

	From range 473 to 15000 is reserved for others scripts (varied rewards)

	There is no need to tamper with the chests scripts, just register a new table and configure correctly
	So the quests will work in-game

	Example:
	[xxxx] = {
		-- For use of the map
		itemId = xxxx,
		itemPos = {x = xxxxx, y = xxxxx, z = x},
		-- For use of the script
		container = xxxx (it's for use reward in a container, only put the id of the container here)
		keyAction = xxxx, (it's for use one key in the chest and is reward in container, only put the key in reward and action here)
		reward = {{xxxx, x}},
		storage = xxxxx
	},

	Note:
	The "for use of the map" variables are only used to create the action or unique on the map during startup
	If the reward is an key, do not need to use "keyAction", only set the storage as same action id

	The "for use of the script" variables are used by the scripts
	To allow a single script to manage all rewards
]] ChestAction = {
	--[[
	-- Example of usage
	[5000] = {
		itemId = xxxx,  id of chest
		itemPos = {
			{x = xxxxx, y = xxxxx, z = x},
			{x = xxxxx, y = xxxxx, z = x}
		},
		action = xxxx,
		reward = {{xxxx, 1}},
		storage = storage
	},]]

	-- Keys quests
}

ChestUnique = {
	-- The annihilator quests
	-- Demon armor
	-- example
	-- [5000] = {itemId = 1740, itemPos = {x = 16795, y = 17669, z = 13}, reward = {{2494, 1}}, storage = Storage.Quests.TheAnnihilator.Reward},
}
