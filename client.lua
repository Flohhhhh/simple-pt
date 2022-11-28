TriggerEvent('chat:addSuggestion', '/pt', 'Toggles peacetime.', {})


RegisterNetEvent('pt:enabled')
AddEventHandler('pt:enabled', function()
  TriggerEvent('chat:addMessage', {
    color = { 255, 120, 120},
    multiline = true,
    args = {"SERVER: Peacetime is now ENABLED. Violent crimes and priority calls are not allowed."}
  })

  SendNUIMessage({
    type = 'enablePT',
  })
end)

RegisterNetEvent('pt:disabled')
AddEventHandler('pt:disabled', function()
  TriggerEvent('chat:addMessage', {
    color = { 255, 120, 120},
    multiline = true,
    args = {"SERVER: Peacetime is now DISABLED. Resume normal RP."}
  })

  SendNUIMessage({
    type = 'disablePT',
  })
end)

local sleep = 0
local ped = PlayerPedId()

CreateThread( function()
	Wait(500)
	print("Peacetime: ".. tostring(GlobalState.peacetime))
	if GlobalState.peacetime == true then
		TriggerEvent('pt:enabled')
	end
  while true do Wait(sleep)
    if GlobalState.peacetime == true then
      sleep = 0
      disableControls()
    else
      sleep = 500
    end
  end
end)

CreateThread( function()

  while true do Wait(1000)
    ped = PlayerPedId()
  end
end)

function disableControls()
  DisablePlayerFiring(ped, true) -- weapon firing
  DisableControlAction(0, 24, true) -- attack
  DisableControlAction(0, 25, true) -- aim
  DisableControlAction(0, 47, true) -- weapon
  DisableControlAction(0, 58, true) -- weapon
  DisableControlAction(1, 37, true) -- change weapon
  DisableControlAction(0, 140, true) -- melee
  DisableControlAction(0, 141, true) -- melee
  DisableControlAction(0, 142, true) -- melee
  DisableControlAction(0, 143, true) -- melee
  DisableControlAction(0, 263, true) -- melee
  DisableControlAction(0, 264, true) -- melee
  DisableControlAction(0, 257, true) -- melee
end

