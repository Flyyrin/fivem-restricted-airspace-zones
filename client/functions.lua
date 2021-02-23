function notify(msg)
    SetNotificationTextEntry("STRING")
    AddTextComponentString(msg)
    DrawNotification(true,false)
end
 
function checkLocation()
    Citizen.Wait(0)
  local ped = GetPlayerPed(-1)
	if GetDistanceBetweenCoords(-1392.51, -1483.06, 3.8, GetEntityCoords(ped)) < 50.0 then
    notify("IN Area")
  else   
    notify("Not IN Area")
	end
    Citizen.Wait(500)
    checkLocation()
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


