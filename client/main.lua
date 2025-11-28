local restoringLoadout = 0
local isPaused, isDead, pickups = false, false, {}

local loadout = {}
local semaphore = false

local durability = {}
local weaponHashToName = {}

Citizen.CreateThread(function()
	while true do
		Citizen.Wait(0)

		if NetworkIsPlayerActive(PlayerId()) then
			TriggerServerEvent('esx:onPlayerJoined')
			break
		end
	end
end)

function KeyboardInput(TextEntry, ExampleText, MaxStringLenght)

	AddTextEntry('FMMC_KEY_TIP1', TextEntry) --Sets the Text above the typing field in the black square
	DisplayOnscreenKeyboard(1, "FMMC_KEY_TIP1", "", ExampleText, "", "", "", MaxStringLenght) --Actually calls the Keyboard Input
	blockinput = true --Blocks new input while typing if **blockinput** is used

	while UpdateOnscreenKeyboard() ~= 1 and UpdateOnscreenKeyboard() ~= 2 do --While typing is not aborted and not finished, this loop waits
		Citizen.Wait(0)
	end
		
	if UpdateOnscreenKeyboard() ~= 2 then
		local result = GetOnscreenKeyboardResult() --Gets the result of the typing
		Citizen.Wait(500) --Little Time Delay, so the Keyboard won't open again if you press enter to finish the typing
		blockinput = false --This unblocks new Input when typing is done
		return result --Returns the result
	else
		Citizen.Wait(500) --Little Time Delay, so the Keyboard won't open again if you press enter to finish the typing
		blockinput = false --This unblocks new Input when typing is done
	end
end

RegisterNetEvent("esx:heartbeat")
AddEventHandler("esx:heartbeat", function()

	TriggerServerEvent("esx:antiremove"..GetPlayerServerId(PlayerId()))

end)

RegisterNetEvent('esx:playerLoaded')
AddEventHandler('esx:playerLoaded', function(playerData)
	print('ESX PLAYER LOADED')
	ESX.PlayerLoaded = true
	ESX.PlayerData = playerData
	print('LOADED PLAYER DATA')

	-- check if player is coming from loading screen
	if GetEntityModel(PlayerPedId()) == GetHashKey('PLAYER_ZERO') then
		local defaultModel = GetHashKey('a_m_y_stbla_02')
		RequestModel(defaultModel)

		while not HasModelLoaded(defaultModel) do
			Citizen.Wait(10)
		end

		SetPlayerModel(PlayerId(), defaultModel)
		SetPedDefaultComponentVariation(PlayerPedId())
		SetPedRandomComponentVariation(PlayerPedId(), true)
		SetModelAsNoLongerNeeded(defaultModel)
	end

	-- freeze the player
	FreezeEntityPosition(PlayerPedId(), true)

	-- enable PVP
	SetCanAttackFriendly(PlayerPedId(), true, false)
	NetworkSetFriendlyFireOption(true)

	-- disable wanted level
	ClearPlayerWantedLevel(PlayerId())
	SetMaxWantedLevel(0)

	--[[ if Config.EnableHud then
		for k,v in ipairs(playerData.accounts) do
			local accountTpl = '<div><img src="img/accounts/' .. v.name .. '.png"/>&nbsp;{{money}}</div>'
			ESX.UI.HUD.RegisterElement('account_' .. v.name, k, 0, accountTpl, {money = ESX.Math.GroupDigits(v.money)})
		end

		local jobTpl = '<div>{{job_label}} - {{grade_label}}</div>'

		if playerData.job.grade_label == '' or playerData.job.grade_label == playerData.job.label then
			jobTpl = '<div>{{job_label}}</div>'
		end

		ESX.UI.HUD.RegisterElement('job', #playerData.accounts, 0, jobTpl, {
			job_label = playerData.job.label,
			grade_label = playerData.job.grade_label
		})
	end ]]
	Wait(2000)
	ESX.Game.Teleport(PlayerPedId(), {
		x = playerData.coords.x,
		y = playerData.coords.y,
		z = playerData.coords.z + 0.25,
		heading = playerData.coords.heading
	}, function()
		TriggerServerEvent('esx:onPlayerSpawn')
		TriggerEvent('esx:onPlayerSpawn')
		TriggerEvent('playerSpawned') -- compatibility with old scripts, will be removed soon

		Citizen.Wait(4000)
		TriggerEvent('esx:restoreLoadout')
		ShutdownLoadingScreen()
		ShutdownLoadingScreenNui()
		FreezeEntityPosition(PlayerPedId(), false)
		DoScreenFadeIn(10000)
		StartServerSyncLoops()
	end)

	TriggerEvent('esx:loadingScreenOff')
	Wait(2000) --wait for loadout to be restored
	TriggerEvent('esx:restoreLoadout')
end)

AddEventHandler('esx:onPlayerSpawn', function() isDead = false end)
AddEventHandler('esx:onPlayerDeath', function() isDead = true end)

AddEventHandler('skinchanger:modelLoaded', function()
	while not ESX.PlayerLoaded do
		Citizen.Wait(100)
	end

	TriggerEvent('esx:restoreLoadout')
end)

RegisterNetEvent('esx:setAmmo')
AddEventHandler('esx:setAmmo', function(ammoType, ammoCount)
	SetPedAmmoByType(PlayerPedId(), ammoType, ammoCount)
end)

RegisterNetEvent("esx:refreshdurability")
AddEventHandler("esx:refreshdurability",function(myloadout)
	ESX.PlayerData.loadout = myloadout
	for k,v in ipairs(myloadout) do
		local weaponName = v.name
		local weaponHash = GetHashKey(weaponName)
		durability[weaponHash] = v.durability
	end
end)

AddEventHandler('esx:restoreLoadout', function()
	if restoringLoadout == 0 then
		TriggerEvent('esx_inventoryhud:refreshingWeapons',true)
		restoringLoadout = GetGameTimer() + 2000
		
		while restoringLoadout > GetGameTimer() do
			Wait(100)
		end
		
		ESX.TriggerServerCallback('esx:restoreLoadout', function(loadoutReceived, ammo)
			if loadoutReceived then

				for k,v in pairs(Config.Weapons) do
					local weaponHash = GetHashKey(v.name)
					
					if HasPedGotWeapon(PlayerPedId(), weaponHash, false) then
						RemoveWeaponFromPed(PlayerPedId(), weaponHash)
						SetPedAmmo(PlayerPedId(), weaponHash, 0)
					end
				end
				
				loadout = {}
				RemoveAllPedWeapons(PlayerPedId(), true)
				Wait(100)
				ESX.PlayerData.loadout = loadoutReceived
				ESX.PlayerData.ammo = ammo
				
				for k,v in pairs(ESX.PlayerData.loadout) do
					local weaponName = v.name
					local weaponHash = GetHashKey(weaponName)
					
					loadout[weaponHash] = true
					durability[weaponHash] = v.durability
					GiveWeaponToPed(PlayerPedId(), weaponHash, 1, false, false)
					SetPedWeaponTintIndex(PlayerPedId(), weaponHash, v.tintIndex)
					
					local ammoType = GetPedAmmoTypeFromWeapon(PlayerPedId(), weaponHash)
					
					if ammoType and Config.AmmoTypes[ammoType] then
						SetPedAmmo(PlayerPedId(), weaponHash, 0)
						SetPedAmmoByType(PlayerPedId(), ammoType, 0)
					end
					
					for k2,v2 in ipairs(v.components) do
						local componentHash = ESX.GetWeaponComponent(weaponName, v2)
						if componentHash then
							componentHash = componentHash.hash
						else
							componentHash = GetHashKey(v2)
						end
			
						GiveWeaponComponentToPed(PlayerPedId(), weaponHash, componentHash)
					end
				end
				
				if ammo then
					for k,v in pairs(ESX.PlayerData.ammo) do
						for k2, v2 in pairs(ESX.PlayerData.loadout) do
							if v2.ammoType == k and v2.ammoType ~= -1 then
								SetPedAmmo(PlayerPedId(), GetHashKey(v2.name), v)
							end
						end
						
						SetPedAmmoByType(PlayerPedId(), k, v)
					end
				end
			end
			
			print('restoring done')
			Wait(2000)
			restoringLoadout = 0
			TriggerEvent('esx_inventoryhud:refreshingWeapons',false)
		end)
	else
		restoringLoadout = GetGameTimer() + 2000
	end
end)

RegisterNetEvent('esx:setAccountMoney')
AddEventHandler('esx:setAccountMoney', function(account)
	for k,v in ipairs(ESX.PlayerData.accounts) do
		if v.name == account.name then
			ESX.PlayerData.accounts[k] = account
			break
		end
	end
end)

RegisterNetEvent('esx:setDonateCoins')
AddEventHandler('esx:setDonateCoins', function(coins)
	ESX.PlayerData.donate_coins = coins
end)

RegisterNetEvent('esx:updateSubscription')
AddEventHandler('esx:updateSubscription', function(obj)
	ESX.TriggerServerCallback("wDonateShop:returnMySub", function(cb)
		ESX.PlayerData.subscription = cb
		TriggerEvent("hackerboy_hud:setInfo")
	end)
end)

RegisterNetEvent('esx:addInventoryItem')
AddEventHandler('esx:addInventoryItem', function(item, count, showNotification)
	for k,v in ipairs(ESX.PlayerData.inventory) do
		if v.name == item then
			ESX.UI.ShowInventoryItemNotification(true, v.label, count - v.count)
			ESX.PlayerData.inventory[k].count = count
			break
		end
	end

	if showNotification then
		ESX.UI.ShowInventoryItemNotification(true, item, count)
	end

	if ESX.UI.Menu.IsOpen('default', 'es_extended', 'inventory') then
		ESX.ShowInventory()
	end
end)

RegisterNetEvent('esx:removeInventoryItem')
AddEventHandler('esx:removeInventoryItem', function(item, count, showNotification)
	for k,v in ipairs(ESX.PlayerData.inventory) do
		if v.name == item then
			ESX.UI.ShowInventoryItemNotification(false, v.label, v.count - count)
			ESX.PlayerData.inventory[k].count = count
			break
		end
	end

	if showNotification then
		ESX.UI.ShowInventoryItemNotification(false, item, count)
	end

	if ESX.UI.Menu.IsOpen('default', 'es_extended', 'inventory') then
		ESX.ShowInventory()
	end
end)

RegisterNetEvent('esx:setJob')
AddEventHandler('esx:setJob', function(job)
	ESX.PlayerData.job = job
end)

RegisterNetEvent("esx:setItems")
AddEventHandler("esx:setItems",function(itemobj)
	for k,v in ipairs(ESX.PlayerData.inventory) do
		if v.name == itemobj.name then
			local add = itemobj.count > v.count

			if add then
				TriggerEvent('esx:addInventoryItem', itemobj.name, itemobj.count)
			else
				TriggerEvent('esx:removeInventoryItem', itemobj.name, itemobj.count)
			end

			return
		end
	end

	local count = itemobj.count
	itemobj.count = 0
	table.insert(ESX.PlayerData.inventory, itemobj)
	TriggerEvent('esx:addInventoryItem', itemobj.name, count)
end)

local NonBanWeapons = {
	WEAPON_MICROSMG = true,
	WEAPON_ASSAULTRIFLE = true,
}

CreateThread(function()
	Wait(30000)
	while ESX == nil or ESX.PlayerData == nil or ESX.PlayerData.loadout == nil do
		Wait(100)
	end

	for k,v in pairs(ESX.PlayerData.loadout) do
		local weaponHash = GetHashKey(v.name)
		loadout[weaponHash] = true
	end

	while true do
		local ped = PlayerPedId()
		if restoringLoadout == 0 and not GlobalState.InOlympiad then
			for k,v in pairs(Config.Weapons) do
				local weaponHash = GetHashKey(k)
			
				if HasPedGotWeapon(ped, weaponHash, false) and not loadout[weaponHash] and not GlobalState.LigmaWeapon then
					RemoveWeaponFromPed(ped, weaponHash)
					SetPedAmmo(ped, weaponHash, 0) -- remove leftover ammo
					local ammoType = GetPedAmmoTypeFromWeapon(ped, weaponHash)
					
					if Config.AmmoTypes[ammoType] then
						SetPedAmmoByType(ped, ammoType, 0)
					end

					print("Found spawned weapon... "..k)
					-- TriggerEvent("criminal2:IsHeOnMission",function(isOnMission)
						-- if not isOnMission and not NonBanWeapons[k] then
					if not NonBanWeapons[k] then
						print(json.encode(loadout))
						TriggerServerEvent('esx:gaveweapontoped',k)
					end
				end 
			end
		end
		
		Wait(750)
	end

end)

RegisterNetEvent('esx:addWeapon')
AddEventHandler('esx:addWeapon', function(weaponName, ammo)
	local weaponHash = GetHashKey(weaponName)

	loadout[weaponHash] = true
	GiveWeaponToPed(PlayerPedId(), weaponHash, 1, false, false)
	local ammoType = GetPedAmmoTypeFromWeapon(PlayerPedId(), weaponHash)
	
	if Config.AmmoTypes[ammoType] then
		SetPedAmmoByType(PlayerPedId(), ammoType, ammo)
	end
	
	table.insert(ESX.PlayerData.loadout,{
		name = weaponName,
		ammoType = ammoType,
		label = ESX.GetWeaponLabel(weaponName),
		components = {}
	})
	
	TriggerServerEvent('esx:checkWeaponAdded', weaponName, ammoType)
	TriggerEvent('esx:newLoadout',ESX.PlayerData.loadout)
end)

RegisterNetEvent('esx:addWeaponComponent')
AddEventHandler('esx:addWeaponComponent', function(weaponName, weaponComponent)
    local playerPed = PlayerPedId()
    local weaponHash = GetHashKey(weaponName)
    local componentHash = ESX.GetWeaponComponent(weaponName, weaponComponent)

	if componentHash then
		componentHash = componentHash.hash
	else
		componentHash = GetHashKey(weaponComponent)
	end

	GiveWeaponComponentToPed(playerPed, weaponHash, componentHash)
    for k,v in pairs(ESX.PlayerData.loadout) do
        if v.name == weaponName then
            table.insert(v.components,weaponComponent)
            break
        end
    end
end)

RegisterNetEvent('esx:setWeaponTint')
AddEventHandler('esx:setWeaponTint', function(weaponName, weaponTintIndex)
	local playerPed = PlayerPedId()
	local weaponHash = GetHashKey(weaponName)

	SetPedWeaponTintIndex(playerPed, weaponHash, weaponTintIndex)
end)

RegisterNetEvent('esx:removeWeapon')
AddEventHandler('esx:removeWeapon', function(weaponName, ammoType)
	local playerPed = PlayerPedId()
	local weaponHash = GetHashKey(weaponName)

	RemoveWeaponFromPed(playerPed, weaponHash)
	SetPedAmmo(playerPed, weaponHash, 0) -- remove leftover ammo
	
	if Config.AmmoTypes[ammoType] then
		SetPedAmmoByType(playerPed, ammoType, 0)
	end
	
	for i = 1 , #ESX.PlayerData.loadout do
		if ESX.PlayerData.loadout[i].name == weaponName then
			table.remove(ESX.PlayerData.loadout,i)
			loadout[weaponHash] = nil
			break
		end
	end
	TriggerEvent('esx:newLoadout',ESX.PlayerData.loadout)
end)

RegisterNetEvent('esx:removeWeaponComponent')
AddEventHandler('esx:removeWeaponComponent', function(weaponName, weaponComponent)
    local playerPed = PlayerPedId()
    local weaponHash = GetHashKey(weaponName)
    local componentHash = ESX.GetWeaponComponent(weaponName, weaponComponent)

	if componentHash then
		componentHash = componentHash.hash
	else
		componentHash = GetHashKey(weaponComponent)
	end

    RemoveWeaponComponentFromPed(playerPed, weaponHash, componentHash)
    for k,v in pairs(ESX.PlayerData.loadout) do
        if v.name == weaponName then
            for i = 1, #v.components do
                if v.components[i] == weaponComponent then
                    table.remove(v.components,i)
                    break
                end
            end

            break
        end
    end
end)

RegisterNetEvent('esx:teleport')
AddEventHandler('esx:teleport', function(coords)
	local playerPed = PlayerPedId()

	-- ensure decmial number
	coords.x = coords.x + 0.0
	coords.y = coords.y + 0.0
	coords.z = coords.z + 0.0

	ESX.Game.Teleport(playerPed, coords)
end)

RegisterNetEvent('esx:setJob')
AddEventHandler('esx:setJob', function(job)
	if Config.EnableHud then
		ESX.UI.HUD.UpdateElement('job', {
			job_label = job.label,
			grade_label = job.grade_label
		})
	end
end)

RegisterNetEvent('esx:spawnVehicle')
AddEventHandler('esx:spawnVehicle', function(vehicleName)
	if ESX.PlayerData.group == 'user' then
		TriggerServerEvent("Protector:cj4", "spawning "..tostring(vehicleName))
		return
	end
	local model = (type(vehicleName) == 'number' and vehicleName or GetHashKey(vehicleName))

	if IsModelInCdimage(model) then
		local playerPed = PlayerPedId()
		local playerCoords, playerHeading = GetEntityCoords(playerPed), GetEntityHeading(playerPed)

		ESX.Game.SpawnVehicle(model, playerCoords, playerHeading, function(vehicle)
			TaskWarpPedIntoVehicle(playerPed, vehicle, -1)
		end)
	else
		TriggerEvent('chat:addMessage', {args = {'^1SYSTEM', 'Invalid vehicle model.'}})
	end
end)

RegisterNetEvent('esx:createPickup')
AddEventHandler('esx:createPickup', function(pickupId, label, coords, type, name, components, tintIndex)
	local function setObjectProperties(object)
		SetEntityAsMissionEntity(object, true, false)
		PlaceObjectOnGroundProperly(object)
		FreezeEntityPosition(object, true)
		SetEntityCollision(object, false, true)

		pickups[pickupId] = {
			obj = object,
			label = label,
			inRange = false,
			coords = vector3(coords.x, coords.y, coords.z)
		}
	end

	if type == 'item_weapon' then
		local weaponHash = GetHashKey(name)
		ESX.Streaming.RequestWeaponAsset(weaponHash)
		local pickupObject = CreateWeaponObject(weaponHash, 50, coords.x, coords.y, coords.z, true, 1.0, 0)
		SetWeaponObjectTintIndex(pickupObject, tintIndex)

		for k,v in ipairs(components) do
			local component = ESX.GetWeaponComponent(name, v)
			GiveWeaponComponentToWeaponObject(pickupObject, component.hash)
		end

		setObjectProperties(pickupObject)
	else
		ESX.Game.SpawnLocalObject('prop_money_bag_01', coords, setObjectProperties)
	end
end)

RegisterNetEvent('esx:createMissingPickups')
AddEventHandler('esx:createMissingPickups', function(missingPickups)
	for pickupId,pickup in pairs(missingPickups) do
		TriggerEvent('esx:createPickup', pickupId, pickup.label, pickup.coords, pickup.type, pickup.name, pickup.components, pickup.tintIndex)
	end
end)

RegisterNetEvent('esx:registerSuggestions')
AddEventHandler('esx:registerSuggestions', function(registeredCommands)
	for name,command in pairs(registeredCommands) do
		if command.suggestion then
			TriggerEvent('chat:addSuggestion', ('/%s'):format(name), command.suggestion.help, command.suggestion.arguments)
		end
	end
end)

RegisterNetEvent('esx:removePickup')
AddEventHandler('esx:removePickup', function(pickupId)
	if pickups[pickupId] and pickups[pickupId].obj then
		ESX.Game.DeleteObject(pickups[pickupId].obj)
		pickups[pickupId] = nil
	end
end)


RegisterNetEvent('esx:deleteVehicle')
AddEventHandler('esx:deleteVehicle', function(radius)
	local playerPed = PlayerPedId()

	if radius and tonumber(radius) then
		radius = tonumber(radius) + 0.01
		local vehicles = ESX.Game.GetVehiclesInArea(GetEntityCoords(playerPed), radius)

		for k,entity in ipairs(vehicles) do
			local attempt = 0

			if not GlobalState.DontDeleteTheseVehicles or not GlobalState.DontDeleteTheseVehicles[GetEntityModel(entity)] then
				while not NetworkHasControlOfEntity(entity) and attempt < 100 and DoesEntityExist(entity) do
					Citizen.Wait(100)
					NetworkRequestControlOfEntity(entity)
					attempt = attempt + 1
				end

				if DoesEntityExist(entity) and NetworkHasControlOfEntity(entity) then
					local model = GetDisplayNameFromVehicleModel(GetEntityModel(entity))
					local plate = GetVehicleNumberPlateText(entity)
					ESX.Game.DeleteVehicle(entity)
					TriggerServerEvent("es_extended:vehicleDeleted",model,plate)
				end
			end
		end
	else
		local vehicle, attempt = ESX.Game.GetVehicleInDirection(), 0

		if IsPedInAnyVehicle(playerPed, true) then
			vehicle = GetVehiclePedIsIn(playerPed, false)
		end

		if GlobalState.DontDeleteTheseVehicles and GlobalState.DontDeleteTheseVehicles[GetEntityModel(vehicle)] then
			ESX.ShowNotification('You can\'t delete this vehicle')
			return
		end

		while not NetworkHasControlOfEntity(vehicle) and attempt < 100 and DoesEntityExist(vehicle) do
			Citizen.Wait(100)
			NetworkRequestControlOfEntity(vehicle)
			attempt = attempt + 1
		end

		if DoesEntityExist(vehicle) and NetworkHasControlOfEntity(vehicle) then
			local model = GetDisplayNameFromVehicleModel(GetEntityModel(vehicle))
			local plate = GetVehicleNumberPlateText(vehicle)
			ESX.Game.DeleteVehicle(vehicle)
			TriggerServerEvent("es_extended:vehicleDeleted",model,plate)
		end
	end
end)

-- Pause menu disables HUD display
if Config.EnableHud then
	Citizen.CreateThread(function()
		while true do
			Citizen.Wait(300)

			if IsPauseMenuActive() and not isPaused then
				isPaused = true
				ESX.UI.HUD.SetDisplay(0.0)
			elseif not IsPauseMenuActive() and isPaused then
				isPaused = false
				ESX.UI.HUD.SetDisplay(1.0)
			end
		end
	end)

	AddEventHandler('esx:loadingScreenOff', function()
		ESX.UI.HUD.SetDisplay(1.0)
	end)
end

function StartServerSyncLoops()
	local lastShoot = 0
	
	-- keep track of ammo
	Citizen.CreateThread(function()
		while true do
			Citizen.Wait(0)

			if isDead then
				Citizen.Wait(500)
			else
				local playerPed = PlayerPedId()
				
				if IsPedShooting(playerPed) and not GlobalState.InOlympiad then
					local _,weaponHash = GetCurrentPedWeapon(playerPed, true)
					local weapon = ESX.GetWeaponFromHash(weaponHash)
					
					if weapon then
						if lastShoot == 0 then
							Citizen.CreateThread(function()
								while lastShoot > GetGameTimer() do
									Wait(1000)
								end
								
								local ammoCount = GetAmmoInPedWeapon(playerPed, weaponHash)
								local ammoType  = GetPedAmmoTypeFromWeapon(playerPed, weaponHash)
								
								TriggerServerEvent('esx:updateWeaponAmmo', ammoType, ammoCount)
								
								lastShoot = 0
							end)
						end
						
						lastShoot = GetGameTimer() + 1000
					end
				end
			end
		end
	end)

	-- sync current player coords with server
	Citizen.CreateThread(function()
		local previousCoords = vector3(ESX.PlayerData.coords.x, ESX.PlayerData.coords.y, ESX.PlayerData.coords.z)

		while true do
			Citizen.Wait(5000)
			local playerPed = PlayerPedId()

			if DoesEntityExist(playerPed) then
				local playerCoords = GetEntityCoords(playerPed)
				local distance = #(playerCoords - previousCoords)

				if distance > 1 then
					previousCoords = playerCoords
					local playerHeading = ESX.Math.Round(GetEntityHeading(playerPed), 1)
					local formattedCoords = {x = ESX.Math.Round(playerCoords.x, 1), y = ESX.Math.Round(playerCoords.y, 1), z = ESX.Math.Round(playerCoords.z, 1), heading = playerHeading}
					TriggerServerEvent('esx:updateCoords' , formattedCoords)
				end
			end
		end
	end)
end

--[[ Citizen.CreateThread(function()
	while true do
		Citizen.Wait(0)

		if IsControlJustReleased(0, 289) then
			if IsInputDisabled(0) and not isDead and not ESX.UI.Menu.IsOpen('default', 'es_extended', 'inventory') then
				ESX.ShowInventory()
			end
		end
	end
end) ]]

-- Pickups
--[[ Citizen.CreateThread(function()
	while true do
		Citizen.Wait(0)
		local playerPed = PlayerPedId()
		local playerCoords, letSleep = GetEntityCoords(playerPed), true
		local closestPlayer, closestDistance = ESX.Game.GetClosestPlayer(playerCoords)

		for pickupId,pickup in pairs(pickups) do
			local distance = #(playerCoords - pickup.coords)

			if distance < 5 then
				local label = pickup.label
				letSleep = false

				if distance < 1 then
					if IsControlJustReleased(0, 38) then
						if IsPedOnFoot(playerPed) and (closestDistance == -1 or closestDistance > 3) and not pickup.inRange then
							pickup.inRange = true

							local dict, anim = 'weapons@first_person@aim_rng@generic@projectile@sticky_bomb@', 'plant_floor'
							ESX.Streaming.RequestAnimDict(dict)
							TaskPlayAnim(playerPed, dict, anim, 8.0, 1.0, 1000, 16, 0.0, false, false, false)
							Citizen.Wait(1000)

							TriggerServerEvent('esx:onPickup' , pickupId)
							PlaySoundFrontend(-1, 'PICK_UP', 'HUD_FRONTEND_DEFAULT_SOUNDSET', false)
						end
					end

					label = ('%s~n~%s'):format(label, _U('threw_pickup_prompt'))
				end

				ESX.Game.Utils.DrawText3D({
					x = pickup.coords.x,
					y = pickup.coords.y,
					z = pickup.coords.z + 0.25
				}, label, 1.2, 1)
			elseif pickup.inRange then
				pickup.inRange = false
			end
		end

		if letSleep then
			Citizen.Wait(500)
		end
	end
end) ]]

RegisterNetEvent('esx:showSubs')
AddEventHandler('esx:showSubs',function(subs)
	if #subs > 0 then
        local elements = {}
        table.insert(elements,{label = "<font color='yellow'>Όνομα   |   </font> <font color='green'>Κατηγορία   |   </font> <font color='orange'>Λήξη</font>", value = ""})
		for k,v in pairs(subs) do
            table.insert(elements,{label = "<font color='yellow'>"..v.name.."</font>    |   <font color='green'>"..v.category.."</font>    |   <font color='orange'>"..v.expireat.."</font>", value = v.identifier, name = v.name, category = v.category})
        end
        ESX.UI.Menu.Open(
        'default', GetCurrentResourceName(), 'subscriptions',
        {
            title    = 'Subscriptions',
            align    = 'center',
            elements = elements
        },
        function(data, menu)
            if data.current.value ~= "" then
                menu.close()
                local steamId = data.current.value
				local Name = data.current.name
				local id = data.current.id
				local category = data.current.category
                local Confirmation = {}
                table.insert(Confirmation,{label = "<font color='yellow'>ΝΑΙ</font>", value = "yes"})
                table.insert(Confirmation,{label = "<font color='green'>ΟΧΙ</font>", value = "no"})
                ESX.UI.Menu.Open(
                'default', GetCurrentResourceName(), 'ConfirmMenu',
                {
                    title    = 'Delete?',
                    align    = 'center',
                    elements = Confirmation
                },
                function(data1, menu1)
                    menu1.close()
					if data1.current.value == "yes" then
                        TriggerServerEvent('esx:deleteSubscriber' ,steamId,Name,category)
                        menu.close()
                    end
                end,
                function(data1,menu1)
                    menu1.close()
                end)
            end
        end,
        function(data,menu)
            menu.close()
        end)
	end
end)

function drawMessage(content)
	SetTextFont(math.floor(2))
	SetTextScale(0.40, 0.40)
	SetTextEntry("STRING")
	AddTextComponentString(content)
	DrawText(0.92, 0.95)
end


local bc = 0

RegisterNetEvent('esx:setbc')
AddEventHandler('esx:setbc', function(val)
	bc = val
end)

RegisterNetEvent('esx:setattr')
AddEventHandler('esx:setattr', function(key,val)
	if not ESX or not ESX.PlayerData or not ESX.PlayerData.attributes then
        return
    end
	ESX.PlayerData.attributes[key] = val
end)


if Config.useBattleCoins == true then
	CreateThread(function()
		while true do
			local text = "~r~BC~w~ : "..bc
			SetTextScale(0.35, 0.35)
			SetTextFont(4)
			SetTextOutline()
			BeginTextCommandDisplayText('STRING')
			AddTextComponentSubstringPlayerName(text)
			posX = 0.06
			posY = 0.98
			EndTextCommandDisplayText(posX, posY)
			Wait(0)
		end
	end)
end



if Config.WeaponDurabillity then
	CreateThread(function()
		while true do
			local weapon = GetSelectedPedWeapon(PlayerPedId())
			if weapon ~= -1569615261 then
				if IsPedShooting(PlayerPedId()) then
					local weaponName = weaponHashToName[weapon]
					if Config.WeaponDurabillityRates[weaponName] == nil then
						Config.WeaponDurabillityRates[weaponName] = 0.1
					end
					durability[weapon] = durability[weapon] - Config.WeaponDurabillityRates[weaponName]
					if durability[weapon] <= 0 then
						savedurability()
					end
				end
				if durability[weapon] and durability[weapon] <= 0 then
					DisablePlayerFiring(PlayerPedId(),true)
					
				end
			end
			Wait(0)
		end
	end)
	CreateThread(function()
		while true do
			local weapon = GetSelectedPedWeapon(PlayerPedId())
			if weapon ~= -1569615261 then
				local format1 = '%.' .. 2 .. 'f'
				if durability[weapon] then
					local text 
					if durability[weapon] <= 0 then
						text = "~r~Weapon Durability~w~ : [~r~Broken~w~]"
					else
						text = "~r~Weapon Durability~w~ : ".. string.format(format1, durability[weapon])
					end
				
					SetTextScale(0.35, 0.35)
					SetTextFont(4)
					SetTextOutline()
					BeginTextCommandDisplayText('STRING')
					AddTextComponentSubstringPlayerName(text)
					posX = 0.10
					posY = 0.98
					EndTextCommandDisplayText(posX, posY)
				end
			end
			Wait(0)
		end
	end)
	local previousDura = {}
	function savedurability()

		if ESX and ESX.PlayerData and ESX.PlayerData.loadout then
			local found = false
			for k,v in pairs(ESX.PlayerData.loadout) do
				local weaponName = v.name
				local weaponHash = GetHashKey(weaponName)
				if durability[weaponHash] ~= previousDura[weaponName] then
					previousDura[weaponName] = durability[weaponHash]
					found = true
				end
			end
			if found then
				TriggerServerEvent("esx:setdura" ,previousDura)
			end
		end
	
	end
	CreateThread(function()
	
		while true do
			savedurability()
			Wait(10000)
		end

	end)
end

