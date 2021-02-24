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
    if GetDistanceBetweenCoords(x, y, z, GetEntityCoords(ped), true) < radius+1500 and InMes == false then
        if Config.WarningMessage then
        notify(Config.WarningMessageText)
        InMes = true
        end
    end    
	if GetDistanceBetweenCoords(x, y, z, GetEntityCoords(ped), true) < radius+1000 and InWarn == false then
        sound("warn")
        InWarn = true
    end
    if GetDistanceBetweenCoords(x, y, z, GetEntityCoords(ped), true) < radius+500 and InWarn2 == false  then
        sound("warn2")
         InWarn2 = true
     end
     if GetDistanceBetweenCoords(x, y, z, GetEntityCoords(ped), true) < radius and InAttack == false then
        sound("attack")
         InAttack = true
         Citizen.Wait(000)
         vehicle = GetVehiclePedIsUsing(PlayerPedId())
         doExplosions()
         NetworkExplodeVehicle(vehicle, true, false, 0)
       
     end

     --Check out
     if GetDistanceBetweenCoords(x, y, z, GetEntityCoords(ped), true) > radius+1500 then
        InMes = false
     end
	if GetDistanceBetweenCoords(x, y, z, GetEntityCoords(ped), true) > radius+1000 then
        InWarn = false
    end
    if GetDistanceBetweenCoords(x, y, z, GetEntityCoords(ped), true) > radius+500 then
         InWarn2 = false
     end
     if GetDistanceBetweenCoords(x, y, z, GetEntityCoords(ped), true) > radius then
         InAttack = false
     end

    Citizen.Wait(500)
end    
   

--Perico
function checkLocationPer(x, y, z, radius)
    Citizen.Wait(0)
  local ped = GetPlayerPed(-1)
    --Check in
    if GetDistanceBetweenCoords(x, y, z, GetEntityCoords(ped), true) < radius+1500 and InMes == false then
        if Config.WarningMessage then
        notify(Config.WarningMessageText)
        InMes = true
        end
    end    
	if GetDistanceBetweenCoords(x, y, z, GetEntityCoords(ped), true) < radius+1000 and InWarn == false then
        sound("warn")
        InWarn = true
    end
    if GetDistanceBetweenCoords(x, y, z, GetEntityCoords(ped), true) < radius+500 and InWarn2 == false  then
        sound("warn2")
         InWarn2 = true
     end
     if GetDistanceBetweenCoords(x, y, z, GetEntityCoords(ped), true) < radius and InAttack == false then
        sound("attack")
         InAttack = true
         Citizen.Wait(1)
         vehicle = GetVehiclePedIsUsing(PlayerPedId())
         doExplosions()
         NetworkExplodeVehicle(vehicle, true, false, 0)
       
     end

     --Check out
     if GetDistanceBetweenCoords(x, y, z, GetEntityCoords(ped), true) > radius+1500 then
        InMes = false
     end
	if GetDistanceBetweenCoords(x, y, z, GetEntityCoords(ped), true) > radius+1000 then
        InWarn = false
    end
    if GetDistanceBetweenCoords(x, y, z, GetEntityCoords(ped), true) > radius+500 then
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






function doExplosions()
    Citizen.CreateThread(function()
        for i = 1, 1 do
            doExplosion()
            Citizen.Wait(100)
        end
    end)
  end
  
  function doExplosion()
       -- explosion in front 1 
       local x,y,z = table.unpack(GetOffsetFromEntityInWorldCoords(PlayerPedId(), 0.0, 300.0, 0.0))
       AddExplosion(x,
       y,
       z,
       'EXPLOSION_CAR', -- int explosionType
       1.0,             -- float damageScale
       true,            -- BOOL isAudible
       false,           -- BOOL isInvisible
       1.0              -- float cameraShake
   )
   Citizen.Wait(300)
       -- explosion in front 2 
       local x,y,z = table.unpack(GetOffsetFromEntityInWorldCoords(PlayerPedId(), 0.0, 250.0, 0.0))
       AddExplosion(x,
       y,
       z,
       'EXPLOSION_CAR', -- int explosionType
       1.0,             -- float damageScale
       true,            -- BOOL isAudible
       false,           -- BOOL isInvisible
       1.0              -- float cameraShake
   )

   Citizen.Wait(300)
   -- explosion in front 2 
   local x,y,z = table.unpack(GetOffsetFromEntityInWorldCoords(PlayerPedId(), 0.0, 200.0, 0.0))
   AddExplosion(x,
   y,
   z,
   'EXPLOSION_CAR', -- int explosionType
   1.0,             -- float damageScale
   true,            -- BOOL isAudible
   false,           -- BOOL isInvisible
   1.0              -- float cameraShake
)

    Citizen.Wait(300)
    -- explosion in front 2 
    local x,y,z = table.unpack(GetOffsetFromEntityInWorldCoords(PlayerPedId(), 0.0, 150.0, 0.0))
    AddExplosion(x,
    y,
    z,
    'EXPLOSION_CAR', -- int explosionType
    1.0,             -- float damageScale
    true,            -- BOOL isAudible
    false,           -- BOOL isInvisible
    1.0              -- float cameraShake
    )

    Citizen.Wait(300)
    -- explosion in front 2 
    local x,y,z = table.unpack(GetOffsetFromEntityInWorldCoords(PlayerPedId(), 0.0, 100.0, 0.0))
    AddExplosion(x,
    y,
    z,
    'EXPLOSION_CAR', -- int explosionType
    1.0,             -- float damageScale
    true,            -- BOOL isAudible
    false,           -- BOOL isInvisible
    1.0              -- float cameraShake
)

    Citizen.Wait(300)
    -- explosion in front 2 
    local x,y,z = table.unpack(GetOffsetFromEntityInWorldCoords(PlayerPedId(), 0.0, 50.0, 0.0))
    AddExplosion(x,
    y,
    z,
    'EXPLOSION_CAR', -- int explosionType
    1.0,             -- float damageScale
    true,            -- BOOL isAudible
    false,           -- BOOL isInvisible
    1.0              -- float cameraShake
)


    Citizen.Wait(300)
    -- explosion in front 2 
    local x,y,z = table.unpack(GetOffsetFromEntityInWorldCoords(PlayerPedId(), 0.0, 20, 0.0))
    AddExplosion(x,
    y,
    z,
    'EXPLOSION_CAR', -- int explosionType
    1.0,             -- float damageScale
    true,            -- BOOL isAudible
    false,           -- BOOL isInvisible
    1.0              -- float cameraShake
    )



   Citizen.Wait(300)


    --Explode vehicle
    local coords = GetEntityCoords(vehicle)
    AddExplosion(coords.x,
    coords.y,
    coords.z,
    'EXPLOSION_CAR', -- int explosionType
    1.0,             -- float damageScale
    true,            -- BOOL isAudible
    false,           -- BOOL isInvisible
    1.0              -- float cameraShake
)
  end
  