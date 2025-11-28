

RegisterNetEvent('esx:playerLoaded')
AddEventHandler('esx:playerLoaded', function(playerData)
	
	ESX.Achievements = {}
	ESX.JobAchievements = {}
	
end)

RegisterNetEvent("esx:getachievements")
AddEventHandler("esx:getachievements", function(src,achievements)
	if not ESX.Achievements then
		return
	end

	if ESX.Achievements[src] == nil then
		ESX.Achievements[src] = {}
	end
	ESX.Achievements[src] = achievements
	if src == GetPlayerServerId(PlayerId()) then
		for name,v in pairs(ESX.Achievements[src]) do
			if Config.Achievements["personal"][name].actions and Config.Achievements["personal"][name].actions.one_time_run_client then
				Config.Achievements["personal"][name].actions.one_time_run_client()
			end
			if Config.Achievements["personal"][name].actions and Config.Achievements["personal"][name].actions.loopClient then
				CreateThread(function()
					Wait(1000)
					while ESX.PlayerData.achievements[name] do
						Config.Achievements["personal"][name].actions.loopClient()
						Wait(Config.Achievements["personal"][name].actions.WaitLoopClient)
					end
				end)
			end
		end
	end

end)

RegisterNetEvent("onaddachievement")
AddEventHandler("onaddachievement", function(src,identifier,name)

	if ESX.Achievements[src] == nil then
		ESX.Achievements[src] = {}
	end
	ESX.Achievements[src][name] = true
	if GetPlayerServerId(PlayerId()) == src then
		ESX.PlayerData.achievements[name] = true
		if Config.Achievements["personal"][name].actions and Config.Achievements["personal"][name].actions.on_add_client then
			Config.Achievements["personal"][name].actions.on_add_client()
		end
		if Config.Achievements["personal"][name].actions and Config.Achievements["personal"][name].actions.one_time_run_client then
			Config.Achievements["personal"][name].actions.one_time_run_client()
		end
		if Config.Achievements["personal"][name].actions and Config.Achievements["personal"][name].actions.loopClient then
			CreateThread(function()
				Wait(1000)
				while ESX.PlayerData.achievements[name] do
					Config.Achievements["personal"][name].actions.loopClient()
					Wait(Config.Achievements["personal"][name].actions.WaitLoopClient)
				end
			end)
		end
	end

end)

RegisterNetEvent("onremoveachievement")
AddEventHandler("onremoveachievement", function(src,identifier,name)

	if ESX.Achievements[src] == nil then
		ESX.Achievements[src] = {}
	end
	ESX.Achievements[src][name] = nil
	if GetPlayerServerId(PlayerId()) == src then
		ESX.PlayerData.achievements[name] = nil
		if Config.Achievements["personal"][name].actions and Config.Achievements["personal"][name].actions.on_remove_client then
			Config.Achievements["personal"][name].actions.on_remove_client()
		end
	end

end)

RegisterNetEvent("onaddjobachievement")
AddEventHandler("onaddjobachievement", function(job,name)

	
	ESX.JobAchievements[name] = true
	
	if Config.Achievements["job"][name].actions and Config.Achievements["job"][name].actions.on_add_client then
		Config.Achievements["job"][name].actions.on_add_client()
	end
	if Config.Achievements["job"][name].actions and Config.Achievements["job"][name].actions.one_time_run_client then
		Config.Achievements["job"][name].actions.one_time_run_client()
	end
	if Config.Achievements["job"][name].actions and Config.Achievements["job"][name].actions.loopClient then
		CreateThread(function()
			Wait(1000)
			while ESX.JobAchievements[name] do
				Config.Achievements["job"][name].actions.loopClient()
				Wait(Config.Achievements["job"][name].actions.WaitLoopClient)
			end
		end)
	end


end)

RegisterNetEvent("onremovejobachievement")
AddEventHandler("onremovejobachievement", function(job,name)


	ESX.JobAchievements[name] = nil
	ESX.PlayerData.achievements[name] = nil
	if Config.Achievements["job"][name].actions and Config.Achievements["job"][name].actions.on_remove_client then
		Config.Achievements["job"][name].actions.on_remove_client()
	end
	

end)

RegisterNetEvent("esx:getjobachievements")
AddEventHandler("esx:getjobachievements", function(job,achs)
	ESX.JobAchievements = {}
	if achs then
		for name,v in pairs(achs) do
			ESX.JobAchievements[name] = v
			if Config.Achievements["job"][name].actions and Config.Achievements["job"][name].actions.one_time_run_client then
				Config.Achievements["job"][name].actions.one_time_run_client()
			end
			if Config.Achievements["job"][name].actions and Config.Achievements["job"][name].actions.loopClient then
				CreateThread(function()
					Wait(1000)
					while ESX.JobAchievements[name] do
						Config.Achievements["job"][name].actions.loopClient()
						Wait(Config.Achievements["job"][name].actions.WaitLoopClient)
					end
				end)
			end
		end
	end
end)
