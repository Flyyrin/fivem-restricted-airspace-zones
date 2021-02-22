AddEventHandler('seatbelt:sounds', function(soundFile, soundVolume)
  SendNUIMessage({
    transactionType = 'playSound',
    transactionFile = soundFile,
    transactionVolume = soundVolume
  })
end)

-- local Warns = {'warn1', 'warn2', 'warn3' 'warn4', 'warn5'}
-- local Warns2 = {'warn2_1', 'warn2_2', 'warn2_3' 'warn2_4', 'warn2_5'}
-- local Attacks = {'attack1', 'attack2', 'attack3' 'attack4', 'attack5', 'attack5', 'attack6'}
-- local Alloweds = {'allowed1', 'allowed2', 'allowed3' 'allowed4'}


RegisterCommand("warn", function()
  if Config.WarningMessage then
      Citizen.Wait(1)
      notify(Config.WarningMessageText)
  end  
  if Config.Sounds then
    Citizen.Wait(1)
    local myTable = {'warn1', 'warn2', 'warn3', 'warn4', 'warn5'}
    TriggerEvent("seatbelt:sounds", myTable[ math.random( 1, #myTable) ], Config.Volume)
  end    
end)

RegisterCommand("Warn2", function()
  if Config.WarningMessage then
    Citizen.Wait(1)
    notify(Config.WarningMessageText)
end  
if Config.Sounds then
  Citizen.Wait(1)
  local myTable = {'warn2_1', 'warn2_2', 'warn2_3', 'warn2_4', 'warn2_5'}
  TriggerEvent("seatbelt:sounds", myTable[ math.random( 1, #myTable) ], Config.Volume)
end    

end)

RegisterCommand("Attack", function()
  if Config.WarningMessage then
      Citizen.Wait(1)
      notify(Config.WarningMessageText)
  end  
  if Config.Sounds then
    Citizen.Wait(1)
    local myTable = {'attack1', 'attack2', 'attack3', 'attack4', 'attack5', 'attack5', 'attack6'}
    TriggerEvent("seatbelt:sounds", myTable[ math.random( 1, #myTable) ], Config.Volume)
  end    
end)

RegisterCommand("Allowed", function()
  if Config.WarningMessage then
      Citizen.Wait(1)
      notify(Config.WarningMessageText)
  end  
  if Config.Sounds then
    Citizen.Wait(1)
    local myTable = {'allowed2', 'allowed3', 'allowed4'}
    TriggerEvent("seatbelt:sounds", myTable[ math.random( 1, #myTable) ], Config.Volume)
  end    
end)


