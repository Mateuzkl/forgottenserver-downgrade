local accountManagerLogin = CreatureEvent("AccountManagerLogin")

function accountManagerLogin.onLogin(player)
	if not player:isAccountManager() then
		return true
	end
	local mode = player:getAccountManagerMode()
	if mode == ACCOUNT_MANAGER_NAMELOCK then
		player:sendTextMessage(MESSAGE_STATUS_CONSOLE_ORANGE,
			"Account Manager: Hello, it appears that your character has been namelocked, what would you like as your new name?")
	elseif mode == ACCOUNT_MANAGER_ACCOUNT then
		player:sendTextMessage(MESSAGE_STATUS_CONSOLE_ORANGE,
			"Account Manager: Hello, type 'account' to manage your account and if you want to start over then type 'cancel'.")
	else
		player:sendTextMessage(MESSAGE_STATUS_CONSOLE_ORANGE,
			"Account Manager: Hello, type 'account' to create an account or type 'recover' to recover an account.")
	end
	return true
end
accountManagerLogin:register()

