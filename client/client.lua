AddEventHandler('seatbelt:sounds', function(soundFile, soundVolume)
  SendNUIMessage({
    transactionType = 'playSound',
    transactionFile = soundFile,
    transactionVolume = soundVolume
  })
end)

RegisterCommand("warn", function()
  sound("warn")
end)

RegisterCommand("warn2", function() 
  sound("warn2")
end)

RegisterCommand("attack", function()
  sound("attack")
end)

RegisterCommand("allowed", function()
  sound("allowed")
end)

--TEST

RegisterCommand("example", function()
  checkLocation()
end)



--- notification
-- if Config.WarningMessage then
--   Citizen.Wait(1)
--   notify(Config.WarningMessageText)
-- end  

