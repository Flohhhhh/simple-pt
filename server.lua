----------------------
------- Config -------
----------------------
-- whether to use ace perms
local usePerms = false

-- to change what actions are diabled during peacetime see client.lua line 49
-------------------
------- Code-------
-------------------
GlobalState.peactime = false

RegisterCommand('pt', function()
  if not usePerms or IsPlayerAceAllowed(source, 'simple.pt') then
    if GlobalState.peacetime then
      GlobalState.peacetime = disable
      TriggerClientEvent('pt:disabled', -1)
    else
      GlobalState.peacetime = true
      TriggerClientEvent('pt:enabled', -1)
    end
  end
end, false)
