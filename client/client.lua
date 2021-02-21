RegisterCommand("test", function()
    if Config.WarningMessage then
        Citizen.Wait(1)
        notify(Config.WarningMessageText)
        TriggerEvent("seatbelt:sounds", "unbuckle", Config.Volume)
    end    
end)
    
