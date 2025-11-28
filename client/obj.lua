MafiaInfo = {}
MafiaData = {}

RegisterNetEvent('esx:playerLoaded')
AddEventHandler('esx:playerLoaded', function(playerData)
	Wait(5000)
	local start_tries = 20000
	while (GetResourceState("esx_wirafmafia") ~= "started") and (start_tries > 0) do
		print("Trying to obtaing Wiraf Mafia")
		start_tries = start_tries - 10
		Wait(0)
	end

	if not ESX.PlayerData then
		ESX.PlayerData.Mafia = {}
	end

	if (start_tries > 0) then
		local fetchedData = false
		ESX.TriggerServerCallback("esx_wirafmafia:getMyData", function(cb)
			MafiaData = cb
			ESX.PlayerData.Mafia = MafiaInfo

			fetchedData = true
		end)
		
		local tries = 20000
		while (not fetchedData) and (tries > 0) do
			tries = tries - 10
			Wait(0)
		end

		if (tries < 0) then
			ESX.PlayerData.Mafia = {}
		end
	else
		ESX.PlayerData.Mafia = {}
	end

	ObtainAbilities()
end)

-- Fetch abilities
function ObtainAbilities()
	local start_tries = 20000
	while (GetResourceState("wAbilities") ~= "started") and (start_tries > 0) do
		print("Trying to obtaing Abilities")
		start_tries = start_tries - 10
		Wait(0)
	end
	
	if (start_tries > 0) then
		Wait(2000)

		ESX.TriggerServerCallback("wAbilities:fetchMyTeamsAbilities", function(cb)
			print("I've fetched abilities: ", json.encode(cb))
			if cb then
				if not ESX.PlayerData.Mafia then
					ESX.PlayerData.Mafia = {}
				end

				ESX.PlayerData.Mafia.abilities = {}
				for k, v in pairs(cb) do
					ESX.PlayerData.Mafia.abilities[k] = v
                end

				TriggerEvent("esx:updatedAbilities")
            end
		end)
	end
end

RegisterNetEvent("esx:sendMembersToRequestAbilities")
AddEventHandler("esx:sendMembersToRequestAbilities", function(mafiaid)
    if ESX and ESX.PlayerData and ESX.PlayerData.Mafia and (ESX.PlayerData.Mafia.getMafiaid() == mafiaid) then
        ObtainAbilities()
    end 
end)

AddEventHandler('onResourceStop', function(resourceName)
	if ("wAbilities" == resourceName) then
		if ESX.PlayerData.Mafia.abilities then
			ESX.PlayerData.Mafia.abilities = {}
			print("I have reseted your abilities")
		end

		return
	end
end)

RegisterNetEvent("esx:updateMafiaInfo")
AddEventHandler("esx:updateMafiaInfo", function(action, mid, key, value)
	if MafiaInfo then
		if (MafiaInfo.getMafiaid() == mid) then
			if (key == "new_level") then
				MafiaData.level = value
			elseif (key == "name") then
				MafiaData.name = value
			elseif (key == "role") then
				MafiaData.role = value
			elseif (key == "members") then
				MafiaData.members = value
			elseif (key == "obj") then
				-- Prepei na kanw na ta ksanaknei ola fetch
				MafiaData = value

				ObtainAbilities()
			end
		end
	end
end)

MafiaInfo.getName = function()
	if not MafiaData then
		return "No Name"
	end
	
	return MafiaData.name or "No Name"
end

MafiaInfo.getLevel = function()
	if not MafiaData then
		return 0
	end

	return MafiaData.level or 0
end

MafiaInfo.getMafiaid = function()
	if not MafiaData then
		return 0
	end

	return MafiaData.mafiaid or 0
end

MafiaInfo.getId = function()
	if not MafiaData then
		return 0
	end

	return MafiaData.id or 0
end

MafiaInfo.getRole = function()
	if not MafiaData then
		return 0
	end

	return MafiaData.role or -1
end

MafiaInfo.getMembers = function()
	if not MafiaData then
		return 0
	end

	return MafiaData.members or 0
end

--[[ Reload Shit ]]
RegisterNetEvent("esx_wirafmafia:reloadOBJS")
AddEventHandler("esx_wirafmafia:reloadOBJS", function()
	ESX.PlayerData.Mafia = MafiaInfo
end)