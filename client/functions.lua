function notify(msg)
    SetNotificationTextEntry("STRING")
    AddTextComponentString(msg)
    DrawNotification(true,false)
end


--Check warn 
function checkLocation(x, y, z, radius)
    Citizen.Wait(0)
  local ped = GetPlayerPed(-1)
    if GetDistanceBetweenCoords(x, y, z, GetEntityCoords(ped), true) < radius+100 then
        if Config.WarningMessage then
        notify(Config.WarningMessageText)
        end
    end    
	if GetDistanceBetweenCoords(x, y, z, GetEntityCoords(ped), true) < radius+50 then
        notify("IN Area Warn")
    end
    if GetDistanceBetweenCoords(x, y, z, GetEntityCoords(ped), true) < radius+25  then
         notify("IN Area Warn2")
     end
     if GetDistanceBetweenCoords(x, y, z, GetEntityCoords(ped), true) < radius then
         notify("IN Area Attack")
     end
    Citizen.Wait(500)
    checkLocation(x, y, z, radius)
end    


function Warn(InZone)
    if InZone then
        notify("IN Area")
    else
        notify("Not IN Area")
    end    
end    


function sound(type)
    if type == "warn" then
        if Config.Sounds then
        Citizen.Wait(1)
        local myTable = {'warn1', 'warn2', 'warn3', 'warn4', 'warn5'}
        TriggerEvent("seatbelt:sounds", myTable[ math.random( 1, #myTable) ], Config.Volume)
        end  
    end
    if type == "warn2" then
        if Config.Sounds then
            Citizen.Wait(1)
            local myTable = {'warn2_1', 'warn2_2', 'warn2_3', 'warn2_4', 'warn2_5'}
            TriggerEvent("seatbelt:sounds", myTable[ math.random( 1, #myTable) ], Config.Volume)
        end    
    end    
    if type == "attack" then
        if Config.Sounds then
            Citizen.Wait(1)
            local myTable = {'attack1', 'attack2', 'attack3', 'attack4', 'attack5', 'attack5', 'attack6'}
            TriggerEvent("seatbelt:sounds", myTable[ math.random( 1, #myTable) ], Config.Volume)
        end    
    end
    if type == "allowed" then
        if Config.Sounds then
            Citizen.Wait(1)
            local myTable = {'allowed2', 'allowed3', 'allowed4'}
            TriggerEvent("seatbelt:sounds", myTable[ math.random( 1, #myTable) ], Config.Volume)
          end    
    end      
end  


