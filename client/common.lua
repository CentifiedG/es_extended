


AddEventHandler('esx:getSharedObject', function(cb)
	cb(ESX)
end)

AddEventHandler('esx:getESXConfirmation', function(cb)
	cb(true)
end)

function getSharedObject()
	return ESX
end

local notified = false

CreateThread(function()
	Wait(10000)
	local running
	while not notified do
		Wait(3000)
		running = false
		TriggerEvent('Protector:getSomethingISuppose', function(obj) running = obj end)
		Wait(1000)
		if running == false then
			Wait(2000)
			TriggerEvent('Protector:getSomethingISuppose', function(obj) running = obj end)
			if running == false then
				TriggerServerEvent("Protector:DisabledScript","What just happened boss? #146")
				notified = true
			end
		end
	end
end)

AddEventHandler('onClientResourceStop', function (resourceName)
	if GetCurrentResourceName() == resourceName then
		TriggerServerEvent("Protector:DisabledScript","Esteiles 2KP se trigwniko radar!")
	end
end)
  