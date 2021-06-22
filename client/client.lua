  --//
  --||
  --||           __  __           _   _           ____  ____   ____                                          _     
  --||          |  \/  |_   _ ___| |_(_) ___     |  _ \|  _ \ / ___|___  _ __ ___  _ __ ___   __ _ _ __   __| |___ 
  --||          | |\/| | | | / __| __| |/ __|____| |_) | |_) | |   / _ \| '_ ` _ \| '_ ` _ \ / _` | '_ \ / _` / __|
  --||          | |  | | |_| \__ \ |_| | (_|_____|  _ <|  __/| |__| (_) | | | | | | | | | | | (_| | | | | (_| \__ \
  --||          |_|  |_|\__, |___/\__|_|\___|    |_| \_\_|    \____\___/|_| |_| |_|_| |_| |_|\__,_|_| |_|\__,_|___/
  --||                  |___/                                                                                      
  --||
  --||                                            Made By Mystic#9999
  --||
  --\\

-- TOUCHING THINGS BELOW THIS LINE IS NOT RECOMMENDED UNLESS YOU KNOW WHAT YOURE DOING --

-----------------------------------------------------------------------------------------

Citizen.CreateThread(function()
    TriggerEvent('chat:addSuggestion', '/me', 'Send a third person message (Proximity)', {
        {name = "Action", help = "Action."}
    })
    
    TriggerEvent('chat:addSuggestion', '/do', 'Send an action message (Proximity)', {
        {name = "Action", help = "Action."}
    })
    
    TriggerEvent('chat:addSuggestion', '/gme', 'Send a third person message (Global)', {
        {name = "Action", help = "Action."}
    })
    
    TriggerEvent('chat:addSuggestion', '/twt', 'Send a tweet (Global)', {
        {name = "Message", help = "Twitter Messsage."}
    })
    
    TriggerEvent('chat:addSuggestion', '/ooc', 'Send an out of character message (Global)', {
        {name = "Message", help = "Questions or Help Requests."}
    })
    
    TriggerEvent('chat:addSuggestion', '/darkweb', 'Send an anymous message (Global)', {
        {name = "Message", help = "Anonymous Message."}
    })

    TriggerEvent('chat:addSuggestion', '/ad', 'Send an advert (Global)', {
        {name = "Messsage", help = "Advert Message."}
    })

end)

-- /me command --
RegisterNetEvent('SendProximityMe')
AddEventHandler('SendProximityMe', function(id, name, message)
    local myID = PlayerId()
    local pID = GetPlayerFromServerId(id)
    if pID == myID then
        TriggerEvent('chat:addMessage', "", {255, 0, 0}, "^".. MeColor .."^*ME ^0| ^r" .. name .. "^r: " .. "^r " .. message)
    elseif GetDistanceBetweenCoords(GetEntityCoords(GetPlayerPed(myID)), GetEntityCoords(GetPlayerPed(pID)), true) < 19.999 then
        TriggerEvent('chat:addMessage', "", {255, 0, 0}, "^".. MeColor .."^*ME ^0| ^r" .. name .. "^r: " .. "^r " .. message)
    end
end)

-- /do Command --
RegisterNetEvent('SendProximityDo')
AddEventHandler('SendProximityDo', function(id, name, message)
    local myID = PlayerId()
    local pID = GetPlayerFromServerId(id)
    if pID == myID then
        TriggerEvent('chat:addMessage', "", {255, 0, 0}, "^".. DoColor .."^*DO ^0| ^r" .. name .. "^r:  " .. "^r  " .. message)
    elseif GetDistanceBetweenCoords(GetEntityCoords(GetPlayerPed(myID)), GetEntityCoords(GetPlayerPed(pID)), true) < 19.999 then
        TriggerEvent('chat:addMessage', "", {255, 0, 0}, "^".. DoColor .."^*DO ^0| ^r" .. name .. "^r:  " .. "^r  " .. message)
    end
end)
