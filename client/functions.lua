function notify(msg)
    SetNotificationTextEntry("STRING")
    AddTextComponentString(msg)
    DrawNotification(true,false)
end


--Fort Zancudo
function checkLocationFZ(x, y, z, radius)
    Citizen.Wait(0)
  local ped = GetPlayerPed(-1)
    --Check in
    if GetDistanceBetweenCoords(x, y, z, GetEntityCoords(ped), true) < radius+900 and InMes == false then
        if Config.WarningMessage then
        notify(Config.WarningMessageText)
        InMes = true
        end
    end    
	if GetDistanceBetweenCoords(x, y, z, GetEntityCoords(ped), true) < radius+600 and InWarn == false then
        sound("warn")
        InWarn = true
    end
    if GetDistanceBetweenCoords(x, y, z, GetEntityCoords(ped), true) < radius+300 and InWarn2 == false  then
        sound("warn2")
         InWarn2 = true
     end
     if GetDistanceBetweenCoords(x, y, z, GetEntityCoords(ped), true) < radius and InAttack == false then
        sound("attack")
         InAttack = true
     end

     --Check out
     if GetDistanceBetweenCoords(x, y, z, GetEntityCoords(ped), true) > radius+900 then
        InMes = false
     end
	if GetDistanceBetweenCoords(x, y, z, GetEntityCoords(ped), true) > radius+600 then
        InWarn = false
    end
    if GetDistanceBetweenCoords(x, y, z, GetEntityCoords(ped), true) > radius+300 then
         InWarn2 = false
     end
     if GetDistanceBetweenCoords(x, y, z, GetEntityCoords(ped), true) > radius then
         InAttack = false
     end

    Citizen.Wait(500)
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


