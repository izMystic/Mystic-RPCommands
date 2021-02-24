------------------------------------------------------------------------------------------------------------
--   __  __           _   _           ____  ____   ____                                          _        --
--  |  \/  |_   _ ___| |_(_) ___     |  _ \|  _ \ / ___|___  _ __ ___  _ __ ___   __ _ _ __   __| |___    --
--  | |\/| | | | / __| __| |/ __|____| |_) | |_) | |   / _ \| '_ ` _ \| '_ ` _ \ / _` | '_ \ / _` / __|   --
--  | |  | | |_| \__ \ |_| | (_|_____|  _ <|  __/| |__| (_) | | | | | | | | | | | (_| | | | | (_| \__ \   --
--  |_|  |_|\__, |___/\__|_|\___|    |_| \_\_|    \____\___/|_| |_| |_|_| |_| |_|\__,_|_| |_|\__,_|___/   --
--          |___/                                                                                         --
--                                         Made By Mystic#9999                                            --
------------------------------------------------------------------------------------------------------------

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
