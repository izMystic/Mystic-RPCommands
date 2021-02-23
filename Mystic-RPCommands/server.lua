
------------------------------------------------------------------------------------------------------------
--   __  __           _   _           ____  ____   ____                                          _        --
--  |  \/  |_   _ ___| |_(_) ___     |  _ \|  _ \ / ___|___  _ __ ___  _ __ ___   __ _ _ __   __| |___    --
--  | |\/| | | | / __| __| |/ __|____| |_) | |_) | |   / _ \| '_ ` _ \| '_ ` _ \ / _` | '_ \ / _` / __|   --
--  | |  | | |_| \__ \ |_| | (_|_____|  _ <|  __/| |__| (_) | | | | | | | | | | | (_| | | | | (_| \__ \   --
--  |_|  |_|\__, |___/\__|_|\___|    |_| \_\_|    \____\___/|_| |_| |_|_| |_| |_|\__,_|_| |_|\__,_|___/   --
--          |___/                                                                                         --
--                                         Made By Mystic#9999                                            --
------------------------------------------------------------------------------------------------------------

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
    TriggerClientEvent('chatMessage', -1, "^3^*GLOBAL ME | ^7" .. GetPlayerName(source) .. "^r", {128, 128, 128}, table.concat(args, ""))
end, false)

-- /twt command --
RegisterCommand('twt', function(source, args, user)
    TriggerClientEvent('chatMessage', -1, "^5^*Twitter | ^7@" .. GetPlayerName(source) .. "^r", {30, 144, 255}, table.concat(args, ""))
end, false)

-- /occ command --
RegisterCommand('ooc', function(source, args, user)
    TriggerClientEvent('chatMessage', -1, "^4^*OOC | ^7" .. GetPlayerName(source) .. "^r", {128, 128, 128}, table.concat(args, ""))
end, false)

-- /darkweb --
RegisterCommand('darkweb', function(source, args, user)
    TriggerClientEvent('chatMessage', -1, "^*Darkweb | ^7@Anonymous ^r", {0, 0, 0}, table.concat(args, ""))
end, false)
