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
  checkLocation(-1392.51, -1483.06, 3.8, 50.0)
  Warn()
end)



--- notification
-- if Config.WarningMessage then
--   Citizen.Wait(1)
--   notify(Config.WarningMessageText)
-- end  

