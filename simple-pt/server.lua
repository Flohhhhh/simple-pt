----------------------
------- Config -------
----------------------
-- whether to use ace perms
local usePerms = false

-- to change what actions are diabled during peacetime see client.lua line 49
-------------------
------- Code-------
-------------------
if not GlobalState.peacetime then
	GlobalState.peacetime = false
end

RegisterCommand('pt', function(source)
    if not usePerms or IsPlayerAceAllowed(source, 'simple.pt') then
        if GlobalState.peacetime then
        GlobalState.peacetime = false
        TriggerClientEvent('pt:disabled', -1)
        else
        GlobalState.peacetime = true
        TriggerClientEvent('pt:enabled', -1)
        end
    end
end, false)