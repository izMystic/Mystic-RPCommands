
Citizen.CreateThread(function()
    TriggerEvent('chat:addSuggestion', '/me', 'Send a third person message (Proximity)', {
        {name = "Action", help = "action."}
    })
    
    TriggerEvent('chat:addSuggestion', '/do', 'Send an action message (Proximity)', {
        {name = "Action", help = "action."}
    })
    
    TriggerEvent('chat:addSuggestion', '/gme', 'Send a third person message (Global)', {
        {name = "Action", help = "action."}
    })
    
    TriggerEvent('chat:addSuggestion', '/twt', 'Send a tweet (Global)', {
        {name = "Action", help = "action."}
    })
    
    TriggerEvent('chat:addSuggestion', '/ooc', 'Send an out of character message (Global)', {
        {name = "Action", help = "action."}
    })
    
    TriggerEvent('chat:addSuggestion', '/darkweb', 'Send an anymous message (Global)', {
        {name = "Action", help = "action."}
    })

end)

-- /me command --
RegisterNetEvent('SendProximityMe')
AddEventHandler('SendProximityMe', function(id, name, message)
    local myID = PlayerId()
    local pID = GetPlayerFromServerId(id)
    if pID == myID then
        TriggerEvent('chatMessage', "", {255, 0, 0}, " ^6 ^*ME | ^7" .. name .. "^7: " .. "^r " .. message)
    elseif GetDistanceBetweenCoords(GetEntityCoords(GetPlayerPed(myID)), GetEntityCoords(GetPlayerPed(pID)), true) < 19.999 then
        TriggerEvent('chatMessage', "", {255, 0, 0}, " ^6 ^*ME | ^7" .. name .. "^7: " .. "^r " .. message)
    end
end)

-- /do Command --
RegisterNetEvent('SendProximityDo')
AddEventHandler('SendProximityDo', function(id, name, message)
    local myID = PlayerId()
    local pID = GetPlayerFromServerId(id)
    if pID == myID then
        TriggerEvent('chatMessage', "", {255, 0, 0}, " ^9 ^*DO | ^7" .. name .. "^7:  " .. "^r  " .. message)
    elseif GetDistanceBetweenCoords(GetEntityCoords(GetPlayerPed(myID)), GetEntityCoords(GetPlayerPed(pID)), true) < 19.999 then
        TriggerEvent('chatMessage', "", {255, 0, 0}, " ^9 ^*DO | ^7" .. name .. "^7:  " .. "^r  " .. message)
    end
end)
