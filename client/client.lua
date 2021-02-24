AddEventHandler('seatbelt:sounds', function(soundFile, soundVolume)
  SendNUIMessage({
    transactionType = 'playSound',
    transactionFile = soundFile,
    transactionVolume = soundVolume
  })
end)



InWarn = false
InWarn2 = false
InAttack = false
InMes = false

Citizen.CreateThread(function()
  while true do
    checkLocationFZ(-2269.98, 3164.4, 32.39, 600.0) --FZ
  end
end)




RegisterCommand("fire", function(source , args , rawCommand)
  Citizen.Wait(1)
  AddExplosion(
	args[1], args[2], args[3], 5, 1, true, false, true)
end) 



--- notification
-- if Config.WarningMessage then
--   Citizen.Wait(1)
--   notify(Config.WarningMessageText)
-- end  


-- GetVehiclePedIsIn(GetPlayerPed, lastVehicle false) -- Player veh