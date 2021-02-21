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


RegisterCommand("test", function()
  if Config.WarningMessage then
      Citizen.Wait(1)
      notify(Config.WarningMessageText)
      TriggerEvent("seatbelt:sounds", "warn1", Config.Volume)
      Citizen.Wait(5000)
      TriggerEvent("seatbelt:sounds", "warn2_1", Config.Volume)
  end    
end)


  
