
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

-- /me command --
RegisterCommand('me', function(source, args, user)
    local name = GetPlayerName(source)
    TriggerClientEvent("SendProximityMe", -1, source, name, table.concat(args, " "))
end, false)

-- /do Command --
RegisterCommand('do', function(source, args, user)
    local name = GetPlayerName(source)
    TriggerClientEvent("SendProximityDo", -1, source, name, table.concat(args, " "))
end, false)

-- /gme command--
RegisterCommand('gme', function(source, args, user)
    TriggerClientEvent('chatMessage', -1, "^".. CONFIG.GME_COLOR .."^*GLOBAL ME ^0| ^r" .. GetPlayerName(source) .. "^r", {128, 128, 128}, table.concat(args, " "))
end, false)

-- /twt command --
RegisterCommand('twt', function(source, args, user)
    TriggerClientEvent('chatMessage', -1, "^".. CONFIG.TWT_COLOR .."^*Twitter ^0| ^r@" .. GetPlayerName(source) .. "^r", {30, 144, 255}, table.concat(args, " "))
end, false)

-- /occ command --
RegisterCommand('ooc', function(source, args, user)
    TriggerClientEvent('chatMessage', -1, "^".. CONFIG.OOC_COLOR .."^*OOC ^0| ^r" .. GetPlayerName(source) .. "^r", {128, 128, 128}, table.concat(args, " "))
end, false)

-- /darkweb --
RegisterCommand('darkweb', function(source, args, user)
    TriggerClientEvent('chatMessage', -1, "^".. CONFIG.DARKWEB_COLOR .."^*Darkweb ^0| ^7@Anonymous ^r", {0, 0, 0}, table.concat(args, " "))
end, false)

-- /ad command --
RegisterCommand('ad', function(source, args, user)
    TriggerClientEvent('chatMessage', -1, "^".. CONFIG.ADVERT_COLOR .."^*ADVERT ^0| ^r" .. GetPlayerName(source), {255,215,0}, table.concat(args, " "))
end, false)
