AddEventHandler('seatbelt:sounds', function(soundFile, soundVolume)
  SendNUIMessage({
    transactionType = 'playSound',
    transactionFile = soundFile,
    transactionVolume = soundVolume
  })
end)

--Trigger sound
RegisterCommand("Sound", function(source, args, rawCommand)
  sound(args[1])
end)

RegisterCommand("example", function()
  checkLocation()
  Warn()
end)



--- notification
-- if Config.WarningMessage then
--   Citizen.Wait(1)
--   notify(Config.WarningMessageText)
-- end  

