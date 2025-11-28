
Config = {}
Config.Locale = 'en'

Config.Accounts = {
	bank = _U('account_bank'),
	black_money = _U('account_black_money'),
	money = _U('account_money')
}

Config.StartingAccountMoney = {bank = 1000000, money = 2000}

Config.StartingItems = {
	WEAPON_PISTOL_KIT = 1,
}

Config.EnableSocietyPayouts = false -- pay from the society account that the player is employed at? Requirement: esx_society
Config.EnableHud            = false -- enable the default hud? Display current job and accounts (black, bank & cash)
Config.PaycheckInterval     = 1 * 30000 -- how often to recieve pay checks in milliseconds
Config.EnableDebug          = false

Config.PaycheckIntervalBattleNet = 10 * 60000
Config.useBattleCoins       = false
Config.WeaponDurabillity    = false

Config.WeaponDurabillityRates = {
	["WEAPON_PISTOL"] = 1.5,
	["WEAPON_ADVANCEDRIFLE"] = 0.7,
}

Config.AchievementCategeories = {
	["personal"] = {
		["basic"] = {
			label = "Basic Achievements",
		},
	}
}



Config.Achievements = {
	['personal'] = {
		--DailyRandom
		["play2hours"] = {		--esx_salary, onreceivesalary
			name = "play2hours",
			label = "Παίξε 2 ώρες",
			category = "DailyRandom",
			random = true,
			actions = {
				on_add_server = function(src)
					-- body
					local xPlayer = ESX.GetPlayerFromId(src)
					if xPlayer then
						xPlayer.addAccountMoney('bank', 500)
						CreateThread(function()
							Wait(3000)
							xPlayer.showAchievementNotfication(" Μόλις συμπλήρωσες 2 ώρες στο server και πήρες 500")
						end)
					end
				end,
				
			},
			ui = {
				fontawesome = "fas fa-car",
				label = "Παίξε 2 ώρες",
				description = "Συμπλήρωσε 2 ώρες στο server και πάρε 500",
				reward = 500,
				
			}
		},
		["play5hours"] = {		--esx_salary, onreceivesalary
			name = "play5hours",
			label = "Παίξε 5 ώρες",
			category = "DailyRandom",
			random = true,
			actions = {
				on_add_server = function(src)
					-- body
					local xPlayer = ESX.GetPlayerFromId(src)
					if xPlayer then
						xPlayer.addAccountMoney('bank', 500)
						CreateThread(function()
							Wait(3000)
							xPlayer.showAchievementNotfication(" Μόλις συμπλήρωσες 5 ώρες στο server και πήρες 500")
							xPlayer.setAttribute('playTimeDailyAch', 0)
						end)
					end
				end,
				
			},
			ui = {
				fontawesome = "fas fa-car",
				label = "Παίξε 5 ώρες",
				description = "Συμπλήρωσε 5 ώρες στο server και πάρε 500",
				reward = 500,
				
			}
		},
		["repair3"] = {		--onfixkituse
			name = "repair3",
			label = "Πιάνει το χέρι σου",
			category = "DailyRandom",
			random = true,
			actions = {
				on_add_server = function(src)
					-- body
					local xPlayer = ESX.GetPlayerFromId(src)
					if xPlayer then
						xPlayer.addAccountMoney('bank', 500)
						CreateThread(function()
							Wait(3000)
							xPlayer.showAchievementNotfication("Χρησιμοποίησες 3 repair kit και πήρες 500")
						end)
					end
				end,
				
			},
			ui = {
				fontawesome = "fas fa-car",
				label = "Πιάνει το χέρι σου",
				description = "Χρησιμοποίησε 3 repair kit και πάρε 500",
				reward = 500,
				
			}
		},
		["repair8"] = { 	--onfixkituse
			name = "repair8",
			label = "Μηχανικός του FB",
			category = "DailyRandom",
			random = true,
			actions = {
				on_add_server = function(src)
					-- body
					local xPlayer = ESX.GetPlayerFromId(src)
					if xPlayer then
						xPlayer.addAccountMoney('bank', 500)
						CreateThread(function()
							Wait(3000)
							xPlayer.showAchievementNotfication("Χρησιμοποίησες 8 repair kit και πήρες 500")
							xPlayer.setAttribute('fixkitDailyAch', 0)
						end)
					end
				end,
				
			},
			ui = {
				fontawesome = "fas fa-car",
				label = "Μηχανικός του FB",
				description = "Χρησιμοποίησε 8 repair kit και πάρε 500",
				reward = 500,
				
			}
		},
		["eat5"] = {	--oneat
			name = "eat5",
			label = "Φάε αγόρι μου",
			category = "DailyRandom",
			random = true,
			actions = {
				on_add_server = function(src)
					-- body
					local xPlayer = ESX.GetPlayerFromId(src)
					if xPlayer then
						xPlayer.addAccountMoney('bank', 500)
						CreateThread(function()
							Wait(3000)
							xPlayer.showAchievementNotfication(" Μόλις έφαγες 5 φαγητά και πήρες 500")
						end)
					end
				end,
				
			},
			ui = {
				fontawesome = "fas fa-car",
				label = "Φάε αγόρι μου",
				description = "Φάε 5 φαγητά και πάρε 500",
				reward = 500,
				
			}
		},
		["eat10"] = {	--oneat
			name = "eat10",
			label = "Το φαί είναι ευτυχία",
			category = "DailyRandom",
			random = true,
			actions = {
				on_add_server = function(src)
					-- body
					local xPlayer = ESX.GetPlayerFromId(src)
					if xPlayer then
						xPlayer.addAccountMoney('bank', 500)
						CreateThread(function()
							Wait(3000)
							xPlayer.showAchievementNotfication(" Μόλις έφαγες 10 φαγητά και πήρες 500")
							xPlayer.setAttribute('foodDailyAch', 0)
						end)
					end
				end,
				
			},
			ui = {
				fontawesome = "fas fa-car",
				label = "Το φαί είναι ευτυχία",
				description = "Φάε 10 φαγητά και πάρε 500",
				reward = 500,
				
			}
		},
		["drink5"] = {		--ondrink
			name = "drink5",
			label = "Το νερό είναι ζωή",
			category = "DailyRandom",
			random = true,
			actions = {
				on_add_server = function(src)
					-- body
					local xPlayer = ESX.GetPlayerFromId(src)
					if xPlayer then
						xPlayer.addAccountMoney('bank', 500)
						CreateThread(function()
							Wait(3000)
							xPlayer.showAchievementNotfication(" Μόλις ήπιες 5 νερά και πήρες 500")
						end)
					end
				end,
				
			},
			ui = {
				fontawesome = "fas fa-car",
				label = "Το νερό είναι ζωή",
				description = "Πιες 5 νερά και πάρε 500",
				reward =500,
				
			}
		},
		["drink10"] = {		--ondrink
			name = "drink10",
			label = "Ένα καταράκτη νερό",
			category = "DailyRandom",
			random = true,
			actions = {
				on_add_server = function(src)
					-- body
					local xPlayer = ESX.GetPlayerFromId(src)
					if xPlayer then
						xPlayer.addAccountMoney('bank', 500)
						CreateThread(function()
							Wait(3000)
							xPlayer.showAchievementNotfication(" Μόλις ήπιες 10 νερά και πήρες 500")
							xPlayer.setAttribute('drinkDailyAch', 0)
						end)
					end
				end,
				
			},
			ui = {
				fontawesome = "fas fa-car",
				label = "Ένα καταράκτη νερό",
				description = "Πιες 10 νερά και πάρε 500",
				reward = 500,
				
			}
		},
		["getyourcars3"] = {	--onsuccessfulspawnvehicle
			name = "getyourcars3",
			label = "Αμάξια στο Garage",
			category = "DailyRandom",
			random = true,
			actions = {
				on_add_server = function(src)
					-- body
					local xPlayer = ESX.GetPlayerFromId(src)
					if xPlayer then
						xPlayer.addAccountMoney('bank', 500)
						CreateThread(function()
							Wait(3000)
							xPlayer.showAchievementNotfication(" Μόλις έβγαλες 3 αμάξια απ' το garage και πήρες 500")
						end)
					end
				end,
				
			},
			ui = {
				fontawesome = "fas fa-car",
				label = "Αμάξια στο Garage",
				description = "Βγάλε 3 αμάξια απ' το garage και πάρε 500",
				reward = 500,
				
			}
		},
		["getyourcars8"] = {	--onsuccessfulspawnvehicle
			name = "getyourcars8",
			label = "Αμάξια στο Garage ΙΙ",
			category = "DailyRandom",
			random = true,
			actions = {
				on_add_server = function(src)
					-- body
					local xPlayer = ESX.GetPlayerFromId(src)
					if xPlayer then
						xPlayer.addAccountMoney('bank', 500)
						CreateThread(function()
							Wait(3000)
							xPlayer.showAchievementNotfication(" Μόλις έβγαλες 8 αμάξια απ' το garage και πήρες 500")
							xPlayer.setAttribute('vehiclesOutDailyAch', 0)
						end)
					end
				end,
				
			},
			ui = {
				fontawesome = "fas fa-car",
				label = "Αμάξια στο Garage ΙΙ",
				description = "Βγάλε 8 αμάξια απ' το garage και πάρε 500",
				reward = 500,
				
			}
		},
		["5000kmdrive"] = {		--achievements, thread counts distancedriven
			name = "5000kmdrive",
			label = "Drive Ι",
			category = "DailyRandom",
			random = true,
			actions = {
				on_add_server = function(src)
					-- body
					local xPlayer = ESX.GetPlayerFromId(src)
					if xPlayer then
						xPlayer.addAccountMoney('bank', 500)
						CreateThread(function()
							Wait(3000)
							xPlayer.showAchievementNotfication(" Μόλις οδήγησες 5km και πήρες 500")
						end)
					end
				end,
				
			},
			ui = {
				fontawesome = "fas fa-car",
				label = "Drive Ι",
				description = "Οδήγα 5km και πάρε 500",
				reward = 500,
				
			}
		},
		["10000kmdrive"] = {		--achievements, thread counts distancedriven
			name = "5000kmdrive",
			label = "Drive ΙI",
			category = "DailyRandom",
			random = true,
			actions = {
				on_add_server = function(src)
					-- body
					local xPlayer = ESX.GetPlayerFromId(src)
					if xPlayer then
						xPlayer.addAccountMoney('bank', 500)
						CreateThread(function()
							Wait(3000)
							xPlayer.showAchievementNotfication(" Μόλις οδήγησες 10km και πήρες 500")
						end)
					end
				end,
				
			},
			ui = {
				fontawesome = "fas fa-car",
				label = "Drive ΙI",
				description = "Οδήγα 10km και πάρε 500",
				reward = 500,
				
			}
		},
		["2kills"] = {		--onkilldiscordbot
			name = "2kills",
			label = "Καταλάθος φονιάς",
			category = "DailyRandom",
			random = true,
			actions = {
				on_add_server = function(src)
					-- body
					local xPlayer = ESX.GetPlayerFromId(src)
					if xPlayer then
						xPlayer.addAccountMoney('bank', 500)
						CreateThread(function()
							Wait(3000)
							xPlayer.showAchievementNotfication(" Μόλις έκανες 2 Kills και πήρες 500")
						end)
					end
				end,
				
			},
			ui = {
				fontawesome = "fas fa-car",
				label = "Καταλάθος φονιάς",
				description = "Κάνε 2 kill και πάρε 500",
				reward = 500,
				
			}
		},
		["5kills"] = {		--onkilldiscordbot
			name = "5kills",
			label = "Μακαιρωσι",
			category = "DailyRandom",
			random = true,
			actions = {
				on_add_server = function(src)
					-- body
					local xPlayer = ESX.GetPlayerFromId(src)
					if xPlayer then
						xPlayer.addAccountMoney('bank', 500)
						CreateThread(function()
							Wait(3000)
							xPlayer.showAchievementNotfication(" Μόλις έκανες 5 Kills και πήρες 500")
							xPlayer.setAttribute('killsDailyAch', 0)
						end)
					end
				end,
				
			},
			ui = {
				fontawesome = "fas fa-car",
				label = "Μακαιρωσι",
				description = "Κάνε 5 kill και πάρε 500",
				reward = 500,
				
			}
		},
		["250rocks"] = {		--esx_WirafPublicjobsV2, onfarmstone
			name = "250rocks",
			label = "Πέτρες",
			category = "DailyRandom",
			random = true,
			actions = {
				on_add_server = function(src)
					-- body
					local xPlayer = ESX.GetPlayerFromId(src)
					if xPlayer then
						xPlayer.addAccountMoney('bank', 500)
						CreateThread(function()
							Wait(3000)
							xPlayer.showAchievementNotfication(" Μόλις φάρμαρες 250 πέτρες και πήρες 500")
						end)
					end
				end,
				
			},
			ui = {
				fontawesome = "fas fa-car",
				label = "Πέτρες",
				description = "Φάρμαρε 250 πέτρες και πάρε 500",
				reward = 500,
				
			}
		},
		["500rocks"] = {		--esx_WirafPublicjobsV2, onfarmstone
			name = "500rocks",
			label = "Πολλές Πέτρες",
			category = "DailyRandom",
			random = true,
			actions = {
				on_add_server = function(src)
					-- body
					local xPlayer = ESX.GetPlayerFromId(src)
					if xPlayer then
						xPlayer.addAccountMoney('bank', 500)
						CreateThread(function()
							Wait(3000)
							xPlayer.showAchievementNotfication(" Μόλις φάρμαρες 500 πέτρες και πήρες 500")
							xPlayer.setAttribute('stoneFarmDailyAch', 0)
						end)
					end
				end,
				
			},
			ui = {
				fontawesome = "fas fa-car",
				label = "Πολλές Πέτρες",
				description = "Φάρμαρε 500 πέτρες και πάρε 500",
				reward = 500,
				
			}
		},
		["clean250rocks"] = {		--esx_WirafPublicjobsV2, onprocessstone
			name = "clean250rocks",
			label = "Καθαρές Πέτρες",
			category = "DailyRandom",
			random = true,
			actions = {
				on_add_server = function(src)
					-- body
					local xPlayer = ESX.GetPlayerFromId(src)
					if xPlayer then
						xPlayer.addAccountMoney('bank', 500)
						CreateThread(function()
							Wait(3000)
							xPlayer.showAchievementNotfication(" Μόλις καθάρισες 250 πέτρες και πήρες 500")
						end)
					end
				end,
				
			},
			ui = {
				fontawesome = "fas fa-car",
				label = "Καθαρές Πέτρες",
				description = "Καθάρισε 250 πέτρες και πάρε 500",
				reward = 500,
				
			}
		},
		["clean500rocks"] = {		--esx_WirafPublicjobsV2, onprocessstone
			name = "clean500rocks",
			label = "Πολλές Καθαρές Πέτρες",
			category = "DailyRandom",
			random = true,
			actions = {
				on_add_server = function(src)
					-- body
					local xPlayer = ESX.GetPlayerFromId(src)
					if xPlayer then
						xPlayer.addAccountMoney('bank', 500)
						CreateThread(function()
							Wait(3000)
							xPlayer.showAchievementNotfication(" Μόλις καθάρισες 500 πέτρες και πήρες 500")
							xPlayer.setAttribute('stoneCleanDailyAch', 0)
						end)
					end
				end,
				
			},
			ui = {
				fontawesome = "fas fa-car",
				label = "Πολλές Καθαρές Πέτρες",
				description = "Καθάρισε 500 πέτρες και πάρε 500",
				reward = 500,
				
			}
		},
		["gather250fruits"] = {		--esx_WirafPublicjobsV2, onfarmfruits
			name = "gather250fruits",
			label = "Farmer I",
			category = "DailyRandom",
			random = true,
			actions = {
				on_add_server = function(src)
					-- body
					local xPlayer = ESX.GetPlayerFromId(src)
					if xPlayer then
						xPlayer.addAccountMoney('bank', 500)
						CreateThread(function()
							Wait(3000)
							xPlayer.showAchievementNotfication(" Μόλις φάρμαρες 250 φρούτα και πήρες 500")
						end)
					end
				end,
				
			},
			ui = {
				fontawesome = "fas fa-car",
				label = "Farmer I",
				description = "Φάρμαρε 250 φρούτα και πάρε 500",
				reward = 500,
				
			}
		},
		["gather500fruits"] = {		--esx_WirafPublicjobsV2, onfarmfruits
			name = "gather500fruits",
			label = "Farmer II",
			category = "DailyRandom",
			random = true,
			actions = {
				on_add_server = function(src)
					-- body
					local xPlayer = ESX.GetPlayerFromId(src)
					if xPlayer then
						xPlayer.addAccountMoney('bank', 500)
						CreateThread(function()
							Wait(3000)
							xPlayer.showAchievementNotfication(" Μόλις φάρμαρες 500 φρούτα και πήρες 500")
							xPlayer.setAttribute('farmFruitsDailyAch', 0)
						end)
					end
				end,
				
			},
			ui = {
				fontawesome = "fas fa-car",
				label = "Farmer II",
				description = "Φάρμαρε 500 φρούτα και πάρε 500",
				reward = 500,
				
			}
		},
		--["DEHbill30gather"] = {		--cj_Jobs, ondehcollect
		--[[	name = "DEHbill30gather",
			label = "Αποδείξεις ΔΕΗ (30)",
			category = "DailyRandom",
			random = true,
			actions = {
				on_add_server = function(src)
					-- body
					local xPlayer = ESX.GetPlayerFromId(src)
					if xPlayer then
						xPlayer.addAccountMoney('bank', 5500)
						CreateThread(function()
							Wait(3000)
							xPlayer.showAchievementNotfication(" Μόλις μάζεψες 30 αποδείξεις ΔΕΗ και πήρες 5.5k")
						end)
					end
				end,
				
			},
			ui = {
				fontawesome = "fas fa-car",
				label = "Αποδείξεις ΔΕΗ (30)",
				description = "Μάζεψε 30 αποδείξεις ΔΕΗ και πάρε 5.5k",
				reward = 5500,
				
			}
		},
		["DEHbill50gather"] = {		--cj_Jobs, ondehcollect
			name = "DEHbill50gather",
			label = "Αποδείξεις ΔΕΗ (50)",
			category = "DailyRandom",
			random = true,
			actions = {
				on_add_server = function(src)
					-- body
					local xPlayer = ESX.GetPlayerFromId(src)
					if xPlayer then
						xPlayer.addAccountMoney('bank', 7500)
						CreateThread(function()
							Wait(3000)
							xPlayer.showAchievementNotfication(" Μόλις μάζεψες 50 αποδείξεις ΔΕΗ και πήρες 7.5k")
							xPlayer.setAttribute('dehBillDailyAch', 0)
						end)
					end
				end,
				
			},
			ui = {
				fontawesome = "fas fa-car",
				label = "Αποδείξεις ΔΕΗ (50)",
				description = "Μάζεψε 50 αποδείξεις ΔΕΗ και πάρε 7.5k",
				reward = 7500,
				
			}
		},
		["DEHbill30redeem"] = {		--cj_Jobs, ondehrequestpayment
			name = "DEHbill30redeem",
			label = "Εξάργυρωσε Αποδείξεις ΔΕΗ (30)",
			category = "DailyRandom",
			random = true,
			actions = {
				on_add_server = function(src)
					-- body
					local xPlayer = ESX.GetPlayerFromId(src)
					if xPlayer then
						xPlayer.addAccountMoney('bank', 5500)
						CreateThread(function()
							Wait(3000)
							xPlayer.showAchievementNotfication(" Μόλις εξαργύρωσες 30 αποδείξεις ΔΕΗ και πήρες 5.5k")
						end)
					end
				end,
				
			},
			ui = {
				fontawesome = "fas fa-car",
				label = "Εξάργυρωσε Αποδείξεις ΔΕΗ (30)",
				description = "Εξαργύρωσες 30 αποδείξεις ΔΕΗ και πάρε 5.5k",
				reward = 5500,
				
			}
		},
		["DEHbill50redeem"] = {		--cj_Jobs, ondehrequestpayment
			name = "DEHbill50redeem",
			label = "Εξάργυρωσε Αποδείξεις ΔΕΗ (50)",
			category = "DailyRandom",
			random = true,
			actions = {
				on_add_server = function(src)
					-- body
					local xPlayer = ESX.GetPlayerFromId(src)
					if xPlayer then
						xPlayer.addAccountMoney('bank', 7500)
						CreateThread(function()
							Wait(3000)
							xPlayer.showAchievementNotfication(" Μόλις εξαργύρωσες 50 αποδείξεις ΔΕΗ και πήρες 7.5k")
							xPlayer.setAttribute('dehBillReddemDailyAch', 0)
						end)
					end
				end,
				
			},
			ui = {
				fontawesome = "fas fa-car",
				label = "Εξάργυρωσε Αποδείξεις ΔΕΗ (50)",
				description = "Εξαργύρωσες 50 αποδείξεις ΔΕΗ και πάρε 7.5k",
				reward = 7500,
				
			}
		},
		["clean10pools"] = {		--cj_Jobs, onpoolcollect
			name = "clean10pools",
			label = "Καθάρισε 10 πισίνες",
			category = "DailyRandom",
			random = true,
			actions = {
				on_add_server = function(src)
					-- body
					local xPlayer = ESX.GetPlayerFromId(src)
					if xPlayer then
						xPlayer.addAccountMoney('bank', 5000)
						CreateThread(function()
							Wait(3000)
							xPlayer.showAchievementNotfication(" Μόλις καθάρισες 10 πισίνες και πήρες 5k")
						end)
					end
				end,
				
			},
			ui = {
				fontawesome = "fas fa-car",
				label = "Καθάρισε 10 πισίνες",
				description = "Καθάρισε 10 πισίνες και πάρε 5k",
				reward = 5000,
				
			}
		},
		["clean20pools"] = {		--cj_Jobs, onpoolcollect
			name = "clean20pools",
			label = "Καθάρισε 20 πισίνες",
			category = "DailyRandom",
			random = true,
			actions = {
				on_add_server = function(src)
					-- body
					local xPlayer = ESX.GetPlayerFromId(src)
					if xPlayer then
						xPlayer.addAccountMoney('bank', 8000)
						CreateThread(function()
							Wait(3000)
							xPlayer.showAchievementNotfication(" Μόλις καθάρισες 20 πισίνες και πήρες 8k")
							xPlayer.setAttribute('poolDailyAch', 0)
						end)
					end
				end,
				
			},
			ui = {
				fontawesome = "fas fa-car",
				label = "Καθάρισε 20 πισίνες",
				description = "Καθάρισε 20 πισίνες και πάρε 8k",
				reward = 8000,
				
			}
		},]]
		["cut30trees"] = {		--esx_WirafPublicjobsV2, onfarmwood
			name = "cut30trees",
			label = "Κόψε 30 δέντρα",
			category = "DailyRandom",
			random = true,
			actions = {
				on_add_server = function(src)
					-- body
					local xPlayer = ESX.GetPlayerFromId(src)
					if xPlayer then
						xPlayer.addAccountMoney('bank', 500)
						CreateThread(function()
							Wait(3000)
							xPlayer.showAchievementNotfication(" Μόλις έκοψες 30 δέντρα και πήρες 500")
						end)
					end
				end,
				
			},
			ui = {
				fontawesome = "fas fa-car",
				label = "Κόψε 30 δέντρα",
				description = "Κόψε 30 δέντρα και πάρε 500",
				reward = 500,
				
			}
		},
		["cut50trees"] = {		--esx_WirafPublicjobsV2, onfarmwood
			name = "cut50trees",
			label = "Κόψε 50 δέντρα",
			category = "DailyRandom",
			random = true,
			actions = {
				on_add_server = function(src)
					-- body
					local xPlayer = ESX.GetPlayerFromId(src)
					if xPlayer then
						xPlayer.addAccountMoney('bank', 500)
						CreateThread(function()
							Wait(3000)
							xPlayer.showAchievementNotfication(" Μόλις έκοψες 50 δέντρα και πήρες 500")
							xPlayer.setAttribute('woodCutDailyAch', 0)
						end)
					end
				end,
				
			},
			ui = {
				fontawesome = "fas fa-car",
				label = "Κόψε 50 δέντρα",
				description = "Κόψε 50 δέντρα και πάρε 500",
				reward = 500,
				
			}
		},
		["process50woods"] = {		--esx_WirafPublicjobsV2, onprocesswood
			name = "process50woods",
			label = "Ξυλουργός από τα Lidl",
			category = "DailyRandom",
			random = true,
			actions = {
				on_add_server = function(src)
					-- body
					local xPlayer = ESX.GetPlayerFromId(src)
					if xPlayer then
						xPlayer.addAccountMoney('bank', 500)
						CreateThread(function()
							Wait(3000)
							xPlayer.showAchievementNotfication(" Μόλις επεξεργάστηκες 50 ξύλα και πήρες 500")
						end)
					end
				end,
				
			},
			ui = {
				fontawesome = "fas fa-car",
				label = "Ξυλουργός από τα Lidl",
				description = "Επεξεργάσου 50 ξύλα και πάρε 500",
				reward = 500,
				
			}
		},
		["process80woods"] = {		--esx_WirafPublicjobsV2, onprocesswood
			name = "process80woods",
			label = "Ξυλουργός από τα Praktiker",
			category = "DailyRandom",
			random = true,
			actions = {
				on_add_server = function(src)
					-- body
					local xPlayer = ESX.GetPlayerFromId(src)
					if xPlayer then
						xPlayer.addAccountMoney('bank', 500)
						CreateThread(function()
							Wait(3000)
							xPlayer.showAchievementNotfication(" Μόλις επεξεργάστηκες 80 ξύλα και πήρες 500")
							xPlayer.setAttribute('woodProcessDailyAch', 0)
						end)
					end
				end,
				
			},
			ui = {
				fontawesome = "fas fa-car",
				label = "Ξυλουργός από τα Praktiker",
				description = "Επεξεργάσου 80 ξύλα και πάρε 500",
				reward = 500,
				
			}
		},
		--["open20safes"] = {		--cj_Jobs, onpostmancollect
		--[[	name = "open20safes",
			label = "Γραμματοκιβώτια",
			category = "DailyRandom",
			random = true,
			actions = {
				on_add_server = function(src)
					-- body
					local xPlayer = ESX.GetPlayerFromId(src)
					if xPlayer then
						xPlayer.addAccountMoney('bank', 5000)
						CreateThread(function()
							Wait(3000)
							xPlayer.showAchievementNotfication(" Μόλις άνοιξες 20 γραμματοκιβώτια και πήρες 5k")
						end)
					end
				end,
				
			},
			ui = {
				fontawesome = "fas fa-car",
				label = "Γραμματοκιβώτια",
				description = "Άνοιξε 20 γραμματοκιβώτια και πάρε 5k",
				reward = 5000,
				
			}
		},
		["open50safes"] = {		--cj_Jobs, onpostmancollect
			name = "open50safes",
			label = "Πολλά Γραμματοκιβώτια",
			category = "DailyRandom",
			random = true,
			actions = {
				on_add_server = function(src)
					-- body
					local xPlayer = ESX.GetPlayerFromId(src)
					if xPlayer then
						xPlayer.addAccountMoney('bank', 10000)
						CreateThread(function()
							Wait(3000)
							xPlayer.showAchievementNotfication(" Μόλις άνοιξες 50 γραμματοκιβώτια και πήρες 10k")
							xPlayer.setAttribute('postmanDailyAch', 0)
						end)
					end
				end,
				
			},
			ui = {
				fontawesome = "fas fa-car",
				label = "Πολλά Γραμματοκιβώτια",
				description = "Άνοιξε 50 γραμματοκιβώτια και πάρε 10k",
				reward = 1000,
				
			}
		},
		["fish20"] = {		--esx_WirafPublicjobsV2, onfarmfish
			name = "fish20",
			label = "Ψάρεμα",
			category = "DailyRandom",
			random = true,
			actions = {
				on_add_server = function(src)
					-- body
					local xPlayer = ESX.GetPlayerFromId(src)
					if xPlayer then
						xPlayer.addAccountMoney('bank', 5000)
						CreateThread(function()
							Wait(3000)
							xPlayer.showAchievementNotfication(" Μόλις ψάρεψες 20 φορές και πήρες 5k")
						end)
					end
				end,
				
			},
			ui = {
				fontawesome = "fas fa-car",
				label = "Ψάρεμα",
				description = "Ψάρεψε 20 φορές και πάρε και πάρε 5k",
				reward = 5000,
				
			}
		},
		["fish40"] = {		--esx_WirafPublicjobsV2, onfarmfish
			name = "fish40",
			label = "Ψάρεμα Κυριλέ Ψαριών",
			category = "DailyRandom",
			random = true,
			actions = {
				on_add_server = function(src)
					-- body
					local xPlayer = ESX.GetPlayerFromId(src)
					if xPlayer then
						xPlayer.addAccountMoney('bank', 7500)
						CreateThread(function()
							Wait(3000)
							xPlayer.showAchievementNotfication(" Μόλις ψάρεψες 40 φορές και πήρες 7.5k")
							xPlayer.setAttribute('fishDailyAch', 0)
						end)
					end
				end,
				
			},
			ui = {
				fontawesome = "fas fa-car",
				label = "Ψάρεμα Κυριλέ Ψαριών",
				description = "Ψάρεψε 40 φορές και πάρε 7.5k",
				reward = 7500,
				
			}
		},
		["clean30gardens"] = {		--cj_Jobs, ongardenercollect
			name = "clean30gardens",
			label = "Καθάρισμα 30 κήπων",
			category = "DailyRandom",
			random = true,
			actions = {
				on_add_server = function(src)
					-- body
					local xPlayer = ESX.GetPlayerFromId(src)
					if xPlayer then
						xPlayer.addAccountMoney('bank', 5000)
						CreateThread(function()
							Wait(3000)
							xPlayer.showAchievementNotfication(" Μόλις καθάρισες 30 κήπους και πήρες 5k")
						end)
					end
				end,
				
			},
			ui = {
				fontawesome = "fas fa-car",
				label = "Καθάρισμα 30 κήπων",
				description = "Καθάρισε 30 κήπους και πάρε 5k",
				reward = 5000,
				
			}
		},
		["clean50gardens"] = {		--cj_Jobs, ongardenercollect
			name = "clean50gardens",
			label = "Καθάρισμα 50 κήπων",
			category = "DailyRandom",
			random = true,
			actions = {
				on_add_server = function(src)
					-- body
					local xPlayer = ESX.GetPlayerFromId(src)
					if xPlayer then
						xPlayer.addAccountMoney('bank', 7500)
						CreateThread(function()
							Wait(3000)
							xPlayer.showAchievementNotfication(" Μόλις καθάρισες 50 κήπους και πήρες 7.5k")
							xPlayer.setAttribute('gardenerDailyAch', 0)
						end)
					end
				end,
				
			},
			ui = {
				fontawesome = "fas fa-car",
				label = "Καθάρισμα 50 κήπων",
				description = "Καθάρισε 50 κήπους και πήρες 7.5k",
				reward = 7500,
				
			}
		},]]
		["collect50meat"] = {		--esx_WirafPublicjobsV2, onfarmmeat
			name = "collect50meat",
			label = "Τοπικός Χασάπης",
			category = "DailyRandom",
			random = true,
			actions = {
				on_add_server = function(src)
					-- body
					local xPlayer = ESX.GetPlayerFromId(src)
					if xPlayer then
						xPlayer.addAccountMoney('bank', 500)
						CreateThread(function()
							Wait(3000)
							xPlayer.showAchievementNotfication(" Μόλις μάζεψες 50 ομά κρέατα και πήρες 500")
						end)
					end
				end,
				
			},
			ui = {
				fontawesome = "fas fa-car",
				label = "Τοπικός Χασάπης",
				description = "Μάζεψε 50 ομά κρέατα και πάρε 500",
				reward = 500,
				
			}
		},
		["collect100meat"] = {		--esx_WirafPublicjobsV2, onfarmmeat
			name = "collect100meat",
			label = "Αλυσίδα Κρεπωλείων",
			category = "DailyRandom",
			random = true,
			actions = {
				on_add_server = function(src)
					-- body
					local xPlayer = ESX.GetPlayerFromId(src)
					if xPlayer then
						xPlayer.addAccountMoney('bank', 500)
						CreateThread(function()
							Wait(3000)
							xPlayer.showAchievementNotfication(" Μόλις μάζεψες 100 ομά κρέατα και πήρες 500")
							xPlayer.setAttribute('rawMeatDailyAch', 0)
						end)
					end
				end,
				
			},
			ui = {
				fontawesome = "fas fa-car",
				label = "Αλυσίδα Κρεπωλείων",
				description = "Μάζεψε 100 ομά κρέατα και πάρε 500",
				reward = 500,
				
			}
		},
		--["30fileta"] = {		--esx_WirafPublicjobsV2, onprocessmeat
		--[[	name = "30fileta",
			label = "30 Φιλέτα",
			category = "DailyRandom",
			random = true,
			actions = {
				on_add_server = function(src)
					-- body
					local xPlayer = ESX.GetPlayerFromId(src)
					if xPlayer then
						xPlayer.addAccountMoney('bank', 5000)
						CreateThread(function()
							Wait(3000)
							xPlayer.showAchievementNotfication(" Μόλις έφτιαξες 30 φιλέτα και πήρες 5k")
						end)
					end
				end,
				
			},
			ui = {
				fontawesome = "fas fa-car",
				label = "30 Φιλέτα",
				description = "Φτιάξε 30 φιλέτα και πάρε 5k",
				reward = 5000,
				
			}
		},
		["60fileta"] = {		--esx_WirafPublicjobsV2, onprocessmeat
			name = "60fileta",
			label = "60 Φιλέτα",
			category = "DailyRandom",
			random = true,
			actions = {
				on_add_server = function(src)
					-- body
					local xPlayer = ESX.GetPlayerFromId(src)
					if xPlayer then
						xPlayer.addAccountMoney('bank', 8000)
						CreateThread(function()
							Wait(3000)
							xPlayer.showAchievementNotfication(" Μόλις έφτιαξες 60 φιλέτα και πήρες 8k")
							xPlayer.setAttribute('meatProcessDailyAch', 0)
						end)
					end
				end,
				
			},
			ui = {
				fontawesome = "fas fa-car",
				label = "60 Φιλέτα",
				description = "Φτιάξε 60 φιλέτα και πάρε 8k",
				reward = 8000,
				
			}
		},]]
		["5nitrompoukales"] = {		--onusenitro
			name = "5nitrompoukales",
			label = "NOS",
			category = "DailyRandom",
			random = true,
			actions = {
				on_add_server = function(src)
					-- body
					local xPlayer = ESX.GetPlayerFromId(src)
					if xPlayer then
						xPlayer.addAccountMoney('bank', 500)
						CreateThread(function()
							Wait(3000)
							xPlayer.showAchievementNotfication(" Μόλις χρησιμοποίησες 5 νιτρομπουκάλες και πήρες 500")
						end)
					end
				end,
				
			},
			ui = {
				fontawesome = "fas fa-car",
				label = "NOS",
				description = "Χρησιμοποίησε 5 νιτρομπουκάλες και πάρε 500",
				reward = 500,
				
			}
		},
		["10nitrompoukales"] = {		--onusenitro
			name = "10nitrompoukales",
			label = "NOS ΙΙ",
			category = "DailyRandom",
			random = true,
			actions = {
				on_add_server = function(src)
					-- body
					local xPlayer = ESX.GetPlayerFromId(src)
					if xPlayer then
						xPlayer.addAccountMoney('bank', 500)
						CreateThread(function()
							Wait(3000)
							xPlayer.showAchievementNotfication(" Μόλις χρησιμοποίησες 5 νιτρομπουκάλες και πήρες 500")
							xPlayer.setAttribute('nitroDailyAch', 0)
						end)
					end
				end,
				
			},
			ui = {
				fontawesome = "fas fa-car",
				label = "NOS ΙΙ",
				description = "Χρησιμοποίησε 10 νιτρομπουκάλες και πάρε 2k",
				reward = 500,
				
			}
		},
		["2ptwmata"] = {		--esx_thief, onplayersteal
			name = "2ptwmata",
			label = "Κλεφτρόνι",
			category = "DailyRandom",
			random = true,
			actions = {
				on_add_server = function(src)
					-- body
					local xPlayer = ESX.GetPlayerFromId(src)
					if xPlayer then
						xPlayer.addAccountMoney('bank',500)
						CreateThread(function()
							Wait(3000)
							xPlayer.showAchievementNotfication(" Μόλις lootares 2 πρώματα και πήρες 500")
						end)
					end
				end,
				
			},
			ui = {
				fontawesome = "fas fa-car",
				label = "Κλεφτρόνι",
				description = "Lootare 2 πτώματα και πάρε 500",
				reward = 500,
				
			}
		},
		["5ptwmata"] = {		--esx_thief, onplayersteal
			name = "5ptwmata",
			label = "Κλεφτρόνι ΙΙ",
			category = "DailyRandom",
			random = true,
			actions = {
				on_add_server = function(src)
					-- body
					local xPlayer = ESX.GetPlayerFromId(src)
					if xPlayer then
						xPlayer.addAccountMoney('bank', 500)
						CreateThread(function()
							Wait(3000)
							xPlayer.showAchievementNotfication(" Μόλις lootares 5 πρώματα και πήρες 500")
						end)
					end
				end,
				
			},
			ui = {
				fontawesome = "fas fa-car",
				label = "Κλεφτρόνι ΙΙ",
				description = "Lootare 5 πτώματα και πάρε 500",
				reward = 500,
				
			}
		},
		--[[["10nargiledes"] = {		--wScripts, onshishapay
			name = "10nargiledes",
			label = "Ναργιλέδες",
			category = "DailyRandom",
			random = true,
			actions = {
				on_add_server = function(src)
					-- body
					local xPlayer = ESX.GetPlayerFromId(src)
					if xPlayer then
						xPlayer.addAccountMoney('bank', 5000)
						CreateThread(function()
							Wait(3000)
							xPlayer.showAchievementNotfication(" Μόλις κάπνισες 10 ναργιλέδες και πήρες 5k")
						end)
					end
				end,
				
			},
			ui = {
				fontawesome = "fas fa-car",
				label = "Ναργιλέδες",
				description = "Κάπνισε 10 ναργιλέδες και πάρε 5k",
				reward = 5000,
				
			}
		},
		["30nargiledes"] = {		--wScripts, onshishapay
			name = "30nargiledes",
			label = "Special Ναργιλέδες",
			category = "DailyRandom",
			random = true,
			actions = {
				on_add_server = function(src)
					-- body
					local xPlayer = ESX.GetPlayerFromId(src)
					if xPlayer then
						xPlayer.addAccountMoney('bank', 10000)
						CreateThread(function()
							Wait(3000)
							xPlayer.showAchievementNotfication(" Μόλις κάπνισες 30 ναργιλέδες και πήρες 10k")
							xPlayer.setAttribute('shishaDailyAch', 0)
						end)
					end
				end,
				
			},
			ui = {
				fontawesome = "fas fa-car",
				label = "Special Ναργιλέδες",
				description = "Κάπνισε 30 ναργιλέδες και πάρε 10k",
				reward = 10000,
				
			}
		},
		["5vitamines"] = {		--onusexapi1
			name = "5vitamines",
			label = "Use Vitamins",
			category = "DailyRandom",
			random = true,
			actions = {
				on_add_server = function(src)
					-- body
					local xPlayer = ESX.GetPlayerFromId(src)
					if xPlayer then
						xPlayer.addAccountMoney('bank', 3000)
						CreateThread(function()
							Wait(3000)
							xPlayer.showAchievementNotfication(" Μόλις χρησιμοποίησες 5 βιταμίνες και πήρες 3k")
							xPlayer.setAttribute('vitaminesDailyAch', 0)
						end)
					end
				end,
				
			},
			ui = {
				fontawesome = "fas fa-car",
				label = "Use Vitamins",
				description = "Χρησιμοποίησε 5 βιταμίνες και πάρε 3k",
				reward = 3000,
				
			}
		},
		["5polyvitamines"] = {		--onusexapi2
			name = "5polyvitamines",
			label = "Use Vitamins",
			category = "DailyRandom",
			random = true,
			actions = {
				on_add_server = function(src)
					-- body
					local xPlayer = ESX.GetPlayerFromId(src)
					if xPlayer then
						xPlayer.addAccountMoney('bank', 3000)
						CreateThread(function()
							Wait(3000)
							xPlayer.showAchievementNotfication(" Μόλις χρησιμοποίησες 5 πολυβιταμίνες και πήρες 3k")
							xPlayer.setAttribute('polyvitaminesDailyAch', 0)
						end)
					end
				end,
				
			},
			ui = {
				fontawesome = "fas fa-car",
				label = "Use Vitamins",
				description = "Χρησιμοποίησε 5 πολυβιταμίνες και πάρε 3k",
				reward = 3000,
				
			}
		},
		["5hremistika"] = {		--onusexapi3
			name = "5hremistika",
			label = "Use Vitamins",
			category = "DailyRandom",
			random = true,
			actions = {
				on_add_server = function(src)
					-- body
					local xPlayer = ESX.GetPlayerFromId(src)
					if xPlayer then
						xPlayer.addAccountMoney('bank', 3000)
						CreateThread(function()
							Wait(3000)
							xPlayer.showAchievementNotfication(" Μόλις χρησιμοποίησες 5 ηρεμιστικά και πήρες 3k")
							xPlayer.setAttribute('hremistikaDailyAch', 0)
						end)
					end
				end,
				
			},
			ui = {
				fontawesome = "fas fa-car",
				label = "Use Vitamins",
				description = "Χρησιμοποίησε 5 ηρεμιστικά και πάρε 3k",
				reward = 3000,
				
			}
		},
		["5hlektrolites"] = {		--onusexapi4
			name = "5hlektrolites",
			label = "Use Vitamins",
			category = "DailyRandom",
			random = true,
			actions = {
				on_add_server = function(src)
					-- body
					local xPlayer = ESX.GetPlayerFromId(src)
					if xPlayer then
						xPlayer.addAccountMoney('bank', 3000)
						CreateThread(function()
							Wait(3000)
							xPlayer.showAchievementNotfication(" Μόλις χρησιμοποίησες 5 ηλεκτρολύτες και πήρες 3k")
							xPlayer.setAttribute('hlektolitesDailyAch', 0)
						end)
					end
				end,
				
			},
			ui = {
				fontawesome = "fas fa-car",
				label = "Use Vitamins",
				description = "Χρησιμοποίησε 5 ηλεκτρολύτες και πάρε 3k",
				reward = 3000,
				
			}
		},
		["5anavolika"] = {		--onusexapi5
			name = "5anavolika",
			label = "Use Vitamins",
			category = "DailyRandom",
			random = true,
			actions = {
				on_add_server = function(src)
					-- body
					local xPlayer = ESX.GetPlayerFromId(src)
					if xPlayer then
						xPlayer.addAccountMoney('bank', 3000)
						CreateThread(function()
							Wait(3000)
							xPlayer.showAchievementNotfication(" Μόλις χρησιμοποίησες 5 αναβολικά και πήρες 3k")
							xPlayer.setAttribute('anavolikaDailyAch', 0)
						end)
					end
				end,
				
			},
			ui = {
				fontawesome = "fas fa-car",
				label = "Use Vitamins",
				description = "Χρησιμοποίησε 5 αναβολικά και πάρε 3k",
				reward = 3000,
				
			}
		},]]

		--GENERAL
		--[[["play50hours"] = {		--esx_salary, onreceivesalary
			name = "play50hours",
			label = "Παίξε 50 ώρες",
			category = "General",
			actions = {
				on_add_server = function(src)
					-- body
					local xPlayer = ESX.GetPlayerFromId(src)
					if xPlayer then
						xPlayer.addAccountMoney('bank', 40000)
						CreateThread(function()
							Wait(3000)
							xPlayer.showAchievementNotfication(" Μόλις συμπλήρωσες 50 ώρες στο server και πήρες 40k")
						end)
					end
				end,
				
			},
			ui = {
				fontawesome = "fas fa-car",
				label = "Παίξε 50 ώρες",
				description = "Συμπλήρωσε 50 ώρες στο server και πάρε 40k",
				reward = 40000,
				
			}
		},
		["play100hours"] = {		--esx_salary, onreceivesalary
			name = "play100hours",
			label = "Παίξε 100 ώρες",
			category = "General",
			actions = {
				on_add_server = function(src)
					-- body
					local xPlayer = ESX.GetPlayerFromId(src)
					if xPlayer then
						xPlayer.addAccountMoney('bank', 70000)
						CreateThread(function()
							Wait(3000)
							xPlayer.showAchievementNotfication(" Μόλις συμπλήρωσες 100 ώρες στο server και πήρες 70k")
						end)
					end
				end,
				
			},
			ui = {
				fontawesome = "fas fa-car",
				label = "Παίξε 100 ώρες",
				description = "Συμπλήρωσε 100 ώρες στο server και πάρε 70k",
				reward = 70000,
				
			}
		},
		["repair150"] = {	--onfixkituse
			name = "repair150",
			label = "Πιάνει το χέρι σου",
			category = "General",
			actions = {
				on_add_server = function(src)
					-- body
					local xPlayer = ESX.GetPlayerFromId(src)
					if xPlayer then
						xPlayer.addAccountMoney('bank', 15000)
						CreateThread(function()
							Wait(3000)
							xPlayer.showAchievementNotfication("Χρησιμοποίησες 150 repair kit και πήρες 15k")
						end)
					end
				end,
				
			},
			ui = {
				fontawesome = "fas fa-car",
				label = "Πιάνει το χέρι σου",
				description = "Χρησιμοποίησε 150 repair kit και πάρε 15k",
				reward = 15000,
				
			}
		},
		["repair300"] = {	--onfixkituse
			name = "repair300",
			label = "Μηχανικός του FB",
			category = "General",
			actions = {
				on_add_server = function(src)
					-- body
					local xPlayer = ESX.GetPlayerFromId(src)
					if xPlayer then
						xPlayer.addAccountMoney('bank', 25000)
						CreateThread(function()
							Wait(3000)
							xPlayer.showAchievementNotfication("Χρησιμοποίησες 300 repair kit και πήρες 25k")
						end)
					end
				end,
				
			},
			ui = {
				fontawesome = "fas fa-car",
				label = "Μηχανικός του FB",
				description = "Χρησιμοποίησε 300 repair kit και πάρε 25k",
				reward = 25000,
				
			}
		},
		["eat500"] = {		--oneat
			name = "eat500",
			label = "Φάε αγόρι μου",
			category = "General",
			actions = {
				on_add_server = function(src)
					-- body
					local xPlayer = ESX.GetPlayerFromId(src)
					if xPlayer then
						xPlayer.addAccountMoney('bank', 20000)
						CreateThread(function()
							Wait(3000)
							xPlayer.showAchievementNotfication(" Μόλις έφαγες 500 φαγητά και πήρες 20k")
						end)
					end
				end,
				
			},
			ui = {
				fontawesome = "fas fa-car",
				label = "Φάε αγόρι μου",
				description = "Φάε 500 φαγητά και πάρε 20k",
				reward = 20000,
				
			}
		},
		["eat1000"] = {		--oneat
			name = "eat1000",
			label = "Το φαί είναι ευτυχία",
			category = "General",
			actions = {
				on_add_server = function(src)
					-- body
					local xPlayer = ESX.GetPlayerFromId(src)
					if xPlayer then
						xPlayer.addAccountMoney('bank', 45000)
						CreateThread(function()
							Wait(3000)
							xPlayer.showAchievementNotfication(" Μόλις έφαγες 1000 φαγητά και πήρες 45k")
						end)
					end
				end,
				
			},
			ui = {
				fontawesome = "fas fa-car",
				label = "Το φαί είναι ευτυχία",
				description = "Φάε 1000 φαγητά και πάρε 45k",
				reward = 45000,
				
			}
		},
		["drink500"] = {		--ondrink
			name = "drink500",
			label = "Το νερό είναι ζωή",
			category = "General",
			actions = {
				on_add_server = function(src)
					-- body
					local xPlayer = ESX.GetPlayerFromId(src)
					if xPlayer then
						xPlayer.addAccountMoney('bank', 20000)
						CreateThread(function()
							Wait(3000)
							xPlayer.showAchievementNotfication(" Μόλις ήπιες 500 νερά και πήρες 20k")
						end)
					end
				end,
				
			},
			ui = {
				fontawesome = "fas fa-car",
				label = "Το νερό είναι ζωή",
				description = "Πιες 500 νερά και πάρε 20k",
				reward = 20000,
				
			}
		},
		["drink1000"] = {		--ondrink
			name = "drink1000",
			label = "Ένα καταράκτη νερό",
			category = "General",
			actions = {
				on_add_server = function(src)
					-- body
					local xPlayer = ESX.GetPlayerFromId(src)
					if xPlayer then
						xPlayer.addAccountMoney('bank', 45000)
						CreateThread(function()
							Wait(3000)
							xPlayer.showAchievementNotfication(" Μόλις ήπιες 1000 νερά και πήρες 45k")
						end)
					end
				end,
				
			},
			ui = {
				fontawesome = "fas fa-car",
				label = "Ένα καταράκτη νερό",
				description = "Πιες 1000 νερά και πάρε 45k",
				reward = 45000,
				
			}
		},
		["getyourcars500"] = {		--onsuccessfulspawnvehicle
			name = "getyourcars500",
			label = "Αμάξια στο Garage",
			category = "General",
			actions = {
				on_add_server = function(src)
					-- body
					local xPlayer = ESX.GetPlayerFromId(src)
					if xPlayer then
						xPlayer.addAccountMoney('bank', 25000)
						CreateThread(function()
							Wait(3000)
							xPlayer.showAchievementNotfication(" Μόλις έβγαλες 500 αμάξια απ' το garage και πήρες 25k")
						end)
					end
				end,
				
			},
			ui = {
				fontawesome = "fas fa-car",
				label = "Αμάξια στο Garage",
				description = "Βγάλε 500 αμάξια απ' το garage και πάρε 25k",
				reward = 25000,
				
			}
		},
		["getyourcars1000"] = {		--onsuccessfulspawnvehicle
			name = "getyourcars1000",
			label = "Αμάξια στο Garage ΙΙ",
			category = "General",
			actions = {
				on_add_server = function(src)
					-- body
					local xPlayer = ESX.GetPlayerFromId(src)
					if xPlayer then
						xPlayer.addAccountMoney('bank', 50000)
						CreateThread(function()
							Wait(3000)
							xPlayer.showAchievementNotfication(" Μόλις έβγαλες 1000 αμάξια απ' το garage και πήρες 50k")
						end)
					end
				end,
				
			},
			ui = {
				fontawesome = "fas fa-car",
				label = "Αμάξια στο Garage ΙΙ",
				description = "Βγάλε 1000 αμάξια απ' το garage και πάρε 50k",
				reward = 50000,
				
			}
		},
		["50000kmdrive"] = {		--achievements, thread counts distancedriven
			name = "50000kmdrive",
			label = "Drive Ι",
			category = "General",
			actions = {
				on_add_server = function(src)
					-- body
					local xPlayer = ESX.GetPlayerFromId(src)
					if xPlayer then
						xPlayer.addAccountMoney('bank', 17000)
						CreateThread(function()
							Wait(3000)
							xPlayer.showAchievementNotfication(" Μόλις οδήγησες 50km και πήρες 17k")
						end)
					end
				end,
				
			},
			ui = {
				fontawesome = "fas fa-car",
				label = "Drive Ι",
				description = "Οδήγα 50km και πάρε 17k",
				reward = 17000,
				
			}
		},
		["100000kmdrive"] = {		--achievements, thread counts distancedriven
			name = "100000kmdrive",
			label = "Drive ΙI",
			category = "General",
			actions = {
				on_add_server = function(src)
					-- body
					local xPlayer = ESX.GetPlayerFromId(src)
					if xPlayer then
						xPlayer.addAccountMoney('bank', 25000)
						CreateThread(function()
							Wait(3000)
							xPlayer.showAchievementNotfication(" Μόλις οδήγησες 100km και πήρες 25k")
						end)
					end
				end,
				
			},
			ui = {
				fontawesome = "fas fa-car",
				label = "Drive ΙI",
				description = "Οδήγα 100km και πάρε 25k",
				reward = 25000,
				
			}
		},
		["2500rocks"] = {		--esx_WirafPublicjobsV2, onfarmstone
			name = "2500rocks",
			label = "Πέτρες",
			category = "General",
			actions = {
				on_add_server = function(src)
					-- body
					local xPlayer = ESX.GetPlayerFromId(src)
					if xPlayer then
						xPlayer.addAccountMoney('bank', 15000)
						CreateThread(function()
							Wait(3000)
							xPlayer.showAchievementNotfication(" Μόλις φάρμαρες 2500 πέτρες και πήρες 15k")
						end)
					end
				end,
				
			},
			ui = {
				fontawesome = "fas fa-car",
				label = "Πέτρες",
				description = "Φάρμαρε 2500 πέτρες και πάρε 15k",
				reward = 15000,
				
			}
		},
		["5000rocks"] = {		--esx_WirafPublicjobsV2, onfarmstone
			name = "5000rocks",
			label = "Πολλές Πέτρες",
			category = "General",
			actions = {
				on_add_server = function(src)
					-- body
					local xPlayer = ESX.GetPlayerFromId(src)
					if xPlayer then
						xPlayer.addAccountMoney('bank', 25000)
						CreateThread(function()
							Wait(3000)
							xPlayer.showAchievementNotfication(" Μόλις φάρμαρες 5000 πέτρες και πήρες 25k")
						end)
					end
				end,
				
			},
			ui = {
				fontawesome = "fas fa-car",
				label = "Πολλές Πέτρες",
				description = "Φάρμαρε 5000 πέτρες και πάρε 25k",
				reward = 25000,
				
			}
		},
		["clean2500rocks"] = {		--esx_WirafPublicjobsV2, onprocessstone
			name = "clean2500rocks",
			label = "Καθαρές Πέτρες",
			category = "General",
			actions = {
				on_add_server = function(src)
					-- body
					local xPlayer = ESX.GetPlayerFromId(src)
					if xPlayer then
						xPlayer.addAccountMoney('bank', 15000)
						CreateThread(function()
							Wait(3000)
							xPlayer.showAchievementNotfication(" Μόλις καθάρισες 2500 πέτρες και πήρες 15k")
						end)
					end
				end,
				
			},
			ui = {
				fontawesome = "fas fa-car",
				label = "Καθαρές Πέτρες",
				description = "Καθάρισε 2500 πέτρες και πάρε 15k",
				reward = 15000,
				
			}
		},
		["clean5000rocks"] = {		--esx_WirafPublicjobsV2, onprocessstone
			name = "clean5000rocks",
			label = "Πολλές Καθαρές Πέτρες",
			category = "General",
			actions = {
				on_add_server = function(src)
					-- body
					local xPlayer = ESX.GetPlayerFromId(src)
					if xPlayer then
						xPlayer.addAccountMoney('bank', 25000)
						CreateThread(function()
							Wait(3000)
							xPlayer.showAchievementNotfication(" Μόλις καθάρισες 5000 πέτρες και πήρες 25k")
						end)
					end
				end,
				
			},
			ui = {
				fontawesome = "fas fa-car",
				label = "Πολλές Καθαρές Πέτρες",
				description = "Καθάρισε 5000 πέτρες και πάρε 25k",
				reward = 25000,
				
			}
		},
		["gather2500fruits"] = {		--esx_WirafPublicjobsV2, onfarmfruits
			name = "gather2500fruits",
			label = "Farmer I",
			category = "General",
			actions = {
				on_add_server = function(src)
					-- body
					local xPlayer = ESX.GetPlayerFromId(src)
					if xPlayer then
						xPlayer.addAccountMoney('bank', 15000)
						CreateThread(function()
							Wait(3000)
							xPlayer.showAchievementNotfication(" Μόλις φάρμαρες 2500 φρούτα και πήρες 15k")
						end)
					end
				end,
				
			},
			ui = {
				fontawesome = "fas fa-car",
				label = "Farmer I",
				description = "Φάρμαρε 2500 φρούτα και πάρε 15k",
				reward = 15000,
				
			}
		},
		["gather5000fruits"] = {		--esx_WirafPublicjobsV2, onfarmfruits
			name = "gather5000fruits",
			label = "Farmer II",
			category = "General",
			actions = {
				on_add_server = function(src)
					-- body
					local xPlayer = ESX.GetPlayerFromId(src)
					if xPlayer then
						xPlayer.addAccountMoney('bank', 25000)
						CreateThread(function()
							Wait(3000)
							xPlayer.showAchievementNotfication(" Μόλις φάρμαρες 5000 φρούτα και πήρες 25k")
						end)
					end
				end,
				
			},
			ui = {
				fontawesome = "fas fa-car",
				label = "Farmer II",
				description = "Φάρμαρε 5000 φρούτα και πάρε 25k",
				reward = 25000,
				
			}
		},
		["DEHbill300gather"] = {		--cj_Jobs, ondehcollect
			name = "DEHbill300gather",
			label = "Αποδείξεις ΔΕΗ (300)",
			category = "General",
			actions = {
				on_add_server = function(src)
					-- body
					local xPlayer = ESX.GetPlayerFromId(src)
					if xPlayer then
						xPlayer.addAccountMoney('bank', 15000)
						CreateThread(function()
							Wait(3000)
							xPlayer.showAchievementNotfication(" Μόλις μάζεψες 300 αποδείξεις ΔΕΗ και πήρες 15k")
						end)
					end
				end,
				
			},
			ui = {
				fontawesome = "fas fa-car",
				label = "Αποδείξεις ΔΕΗ (300)",
				description = "Μάζεψε 300 αποδείξεις ΔΕΗ και πάρε 15k",
				reward = 15000,
				
			}
		},
		["DEHbill500gather"] = {		--cj_Jobs, ondehcollect
			name = "DEHbill500gather",
			label = "Αποδείξεις ΔΕΗ (500)",
			category = "General",
			actions = {
				on_add_server = function(src)
					-- body
					local xPlayer = ESX.GetPlayerFromId(src)
					if xPlayer then
						xPlayer.addAccountMoney('bank', 25000)
						CreateThread(function()
							Wait(3000)
							xPlayer.showAchievementNotfication(" Μόλις μάζεψες 500 αποδείξεις ΔΕΗ και πήρες 25k")
						end)
					end
				end,
				
			},
			ui = {
				fontawesome = "fas fa-car",
				label = "Αποδείξεις ΔΕΗ (500)",
				description = "Μάζεψε 500 αποδείξεις ΔΕΗ και πάρε 25k",
				reward = 25000,
				
			}
		},
		["DEHbill300redeem"] = {		--cj_Jobs, ondehrequestpayment
			name = "DEHbill300redeem",
			label = "Εξάργυρωσε Αποδείξεις ΔΕΗ (300)",
			category = "General",
			actions = {
				on_add_server = function(src)
					-- body
					local xPlayer = ESX.GetPlayerFromId(src)
					if xPlayer then
						xPlayer.addAccountMoney('bank', 15000)
						CreateThread(function()
							Wait(3000)
							xPlayer.showAchievementNotfication(" Μόλις εξαργύρωσες 300 αποδείξεις ΔΕΗ και πήρες 15k")
						end)
					end
				end,
				
			},
			ui = {
				fontawesome = "fas fa-car",
				label = "Εξάργυρωσε Αποδείξεις ΔΕΗ (300)",
				description = "Εξαργύρωσες 300 αποδείξεις ΔΕΗ και πάρε 15k",
				reward = 15000,
				
			}
		},
		["DEHbill500redeem"] = {		--cj_Jobs, ondehrequestpayment
			name = "DEHbill500redeem",
			label = "Εξάργυρωσε Αποδείξεις ΔΕΗ (500)",
			category = "General",
			actions = {
				on_add_server = function(src)
					-- body
					local xPlayer = ESX.GetPlayerFromId(src)
					if xPlayer then
						xPlayer.addAccountMoney('bank', 25000)
						CreateThread(function()
							Wait(3000)
							xPlayer.showAchievementNotfication(" Μόλις εξαργύρωσες 500 αποδείξεις ΔΕΗ και πήρες 25k")
						end)
					end
				end,
				
			},
			ui = {
				fontawesome = "fas fa-car",
				label = "Εξάργυρωσε Αποδείξεις ΔΕΗ (500)",
				description = "Εξαργύρωσες 500 αποδείξεις ΔΕΗ και πάρε 25k",
				reward = 25000,
				
			}
		},
		["clean200pools"] = {		--cj_Jobs, onpoolcollect
			name = "clean200pools",
			label = "Καθάρισε 200 πισίνες",
			category = "General",
			actions = {
				on_add_server = function(src)
					-- body
					local xPlayer = ESX.GetPlayerFromId(src)
					if xPlayer then
						xPlayer.addAccountMoney('bank', 15000)
						CreateThread(function()
							Wait(3000)
							xPlayer.showAchievementNotfication(" Μόλις καθάρισες 200 πισίνες και πήρες 15k")
						end)
					end
				end,
				
			},
			ui = {
				fontawesome = "fas fa-car",
				label = "Καθάρισε 200 πισίνες",
				description = "Καθάρισε 200 πισίνες και πάρε 15k",
				reward = 15000,
				
			}
		},
		["clean400pools"] = {		--cj_Jobs, onpoolcollect
			name = "clean400pools",
			label = "Καθάρισε 400 πισίνες",
			category = "General",
			actions = {
				on_add_server = function(src)
					-- body
					local xPlayer = ESX.GetPlayerFromId(src)
					if xPlayer then
						xPlayer.addAccountMoney('bank', 25000)
						CreateThread(function()
							Wait(3000)
							xPlayer.showAchievementNotfication(" Μόλις καθάρισες 400 πισίνες και πήρες 25k")
						end)
					end
				end,
				
			},
			ui = {
				fontawesome = "fas fa-car",
				label = "Καθάρισε 400 πισίνες",
				description = "Καθάρισε 400 πισίνες και πάρε 25k",
				reward = 25000,
				
			}
		},
		["cut200trees"] = {		--esx_WirafPublicjobsV2, onfarmwood
			name = "cut200trees",
			label = "Κόψε 200 δέντρα",
			category = "General",
			actions = {
				on_add_server = function(src)
					-- body
					local xPlayer = ESX.GetPlayerFromId(src)
					if xPlayer then
						xPlayer.addAccountMoney('bank', 15000)
						CreateThread(function()
							Wait(3000)
							xPlayer.showAchievementNotfication(" Μόλις έκοψες 200 δέντρα και πήρες 15k")
						end)
					end
				end,
				
			},
			ui = {
				fontawesome = "fas fa-car",
				label = "Κόψε 200 δέντρα",
				description = "Κόψε 200 δέντρα και πάρε 15k",
				reward = 15000,
				
			}
		},
		["cut500trees"] = {		--esx_WirafPublicjobsV2, onfarmwood
			name = "cut500trees",
			label = "Κόψε 500 δέντρα",
			category = "General",
			actions = {
				on_add_server = function(src)
					-- body
					local xPlayer = ESX.GetPlayerFromId(src)
					if xPlayer then
						xPlayer.addAccountMoney('bank', 25000)
						CreateThread(function()
							Wait(3000)
							xPlayer.showAchievementNotfication(" Μόλις έκοψες 500 δέντρα και πήρες 25k")
						end)
					end
				end,
				
			},
			ui = {
				fontawesome = "fas fa-car",
				label = "Κόψε 500 δέντρα",
				description = "Κόψε 500 δέντρα και πάρε 25k",
				reward = 25000,
				
			}
		},
		["process400woods"] = {		--esx_WirafPublicjobsV2, onprocesswood
			name = "process400woods",
			label = "Ξυλουργός από τα Lidl",
			category = "General",
			actions = {
				on_add_server = function(src)
					-- body
					local xPlayer = ESX.GetPlayerFromId(src)
					if xPlayer then
						xPlayer.addAccountMoney('bank', 15000)
						CreateThread(function()
							Wait(3000)
							xPlayer.showAchievementNotfication(" Μόλις επεξεργάστηκες 400 ξύλα και πήρες 15k")
						end)
					end
				end,
				
			},
			ui = {
				fontawesome = "fas fa-car",
				label = "Ξυλουργός από τα Lidl",
				description = "Επεξεργάσου 400 ξύλα και πάρε 15k",
				reward = 15000,
				
			}
		},
		["process800woods"] = {		--esx_WirafPublicjobsV2, onprocesswood
			name = "process800woods",
			label = "Ξυλουργός από τα Praktiker",
			category = "General",
			actions = {
				on_add_server = function(src)
					-- body
					local xPlayer = ESX.GetPlayerFromId(src)
					if xPlayer then
						xPlayer.addAccountMoney('bank', 25000)
						CreateThread(function()
							Wait(3000)
							xPlayer.showAchievementNotfication(" Μόλις επεξεργάστηκες 800 ξύλα και πήρες 25k")
						end)
					end
				end,
				
			},
			ui = {
				fontawesome = "fas fa-car",
				label = "Ξυλουργός από τα Praktiker",
				description = "Επεξεργάσου 800 ξύλα και πάρε 25k",
				reward = 25000,
				
			}
		},
		["open200safes"] = {		--cj_Jobs, onpostmancollect
			name = "open200safes",
			label = "Γραμματοκιβώτια",
			category = "General",
			actions = {
				on_add_server = function(src)
					-- body
					local xPlayer = ESX.GetPlayerFromId(src)
					if xPlayer then
						xPlayer.addAccountMoney('bank', 15000)
						CreateThread(function()
							Wait(3000)
							xPlayer.showAchievementNotfication(" Μόλις άνοιξες 200 γραμματοκιβώτια και πήρες 15k")
						end)
					end
				end,
				
			},
			ui = {
				fontawesome = "fas fa-car",
				label = "Γραμματοκιβώτια",
				description = "Άνοιξε 200 γραμματοκιβώτια και πάρε 15k",
				reward = 15000,
				
			}
		},
		["open500safes"] = {		--cj_Jobs, onpostmancollect
			name = "open500safes",
			label = "Πολλά Γραμματοκιβώτια",
			category = "General",
			actions = {
				on_add_server = function(src)
					-- body
					local xPlayer = ESX.GetPlayerFromId(src)
					if xPlayer then
						xPlayer.addAccountMoney('bank', 35000)
						CreateThread(function()
							Wait(3000)
							xPlayer.showAchievementNotfication(" Μόλις άνοιξες 500 γραμματοκιβώτια και πήρες 35k")
						end)
					end
				end,
				
			},
			ui = {
				fontawesome = "fas fa-car",
				label = "Πολλά Γραμματοκιβώτια",
				description = "Άνοιξε 500 γραμματοκιβώτια και πάρε 35k",
				reward = 35000,
				
			}
		},
		["fish200"] = {		--esx_WirafPublicjobsV2, onfarmfish
			name = "fish200",
			label = "Ψάρεμα",
			category = "General",
			actions = {
				on_add_server = function(src)
					-- body
					local xPlayer = ESX.GetPlayerFromId(src)
					if xPlayer then
						xPlayer.addAccountMoney('bank', 15000)
						CreateThread(function()
							Wait(3000)
							xPlayer.showAchievementNotfication(" Μόλις ψάρεψες 200 φορές και πήρες 15k")
						end)
					end
				end,
				
			},
			ui = {
				fontawesome = "fas fa-car",
				label = "Ψάρεμα",
				description = "Ψάρεψε 200 φορές και πάρε και πάρε 15k",
				reward = 15000,
				
			}
		},
		["fish400"] = {		--esx_WirafPublicjobsV2, onfarmfish
			name = "fish400",
			label = "Ψάρεμα Κυριλέ Ψαριών",
			category = "General",
			actions = {
				on_add_server = function(src)
					-- body
					local xPlayer = ESX.GetPlayerFromId(src)
					if xPlayer then
						xPlayer.addAccountMoney('bank', 25000)
						CreateThread(function()
							Wait(3000)
							xPlayer.showAchievementNotfication(" Μόλις ψάρεψες 400 φορές και πήρες 25k")
						end)
					end
				end,
				
			},
			ui = {
				fontawesome = "fas fa-car",
				label = "Ψάρεμα Κυριλέ Ψαριών",
				description = "Ψάρεψε 400 φορές και πάρε 25k",
				reward = 25000,
				
			}
		},
		["clean150gardens"] = {		--cj_Jobs, ongardenercollect
			name = "clean150gardens",
			label = "Καθάρισμα 150 κήπων",
			category = "General",
			actions = {
				on_add_server = function(src)
					-- body
					local xPlayer = ESX.GetPlayerFromId(src)
					if xPlayer then
						xPlayer.addAccountMoney('bank', 15000)
						CreateThread(function()
							Wait(3000)
							xPlayer.showAchievementNotfication(" Μόλις καθάρισες 150 κήπους και πήρες 15k")
						end)
					end
				end,
				
			},
			ui = {
				fontawesome = "fas fa-car",
				label = "Καθάρισμα 150 κήπων",
				description = "Καθάρισε 150 κήπους και πάρε 15k",
				reward = 15000,
				
			}
		},
		["clean400gardens"] = {		--cj_Jobs, ongardenercollect
			name = "clean400gardens",
			label = "Καθάρισμα 400 κήπων",
			category = "General",
			actions = {
				on_add_server = function(src)
					-- body
					local xPlayer = ESX.GetPlayerFromId(src)
					if xPlayer then
						xPlayer.addAccountMoney('bank', 30000)
						CreateThread(function()
							Wait(3000)
							xPlayer.showAchievementNotfication(" Μόλις καθάρισες 400 κήπους και πήρες 30k")
						end)
					end
				end,
				
			},
			ui = {
				fontawesome = "fas fa-car",
				label = "Καθάρισμα 400 κήπων",
				description = "Καθάρισε 400 κήπους και πήρες 30k",
				reward = 30000,
				
			}
		},
		["collect500meat"] = {		--esx_WirafPublicjobsV2, onfarmmeat
			name = "collect500meat",
			label = "Τοπικός Χασάπης",
			category = "General",
			actions = {
				on_add_server = function(src)
					-- body
					local xPlayer = ESX.GetPlayerFromId(src)
					if xPlayer then
						xPlayer.addAccountMoney('bank', 15000)
						CreateThread(function()
							Wait(3000)
							xPlayer.showAchievementNotfication(" Μόλις μάζεψες 500 ομά κρέατα και πήρες 15k")
						end)
					end
				end,
				
			},
			ui = {
				fontawesome = "fas fa-car",
				label = "Τοπικός Χασάπης",
				description = "Μάζεψε 500 ομά κρέατα και πάρε 15k",
				reward = 15000,
				
			}
		},
		["collect1000meat"] = {		--esx_WirafPublicjobsV2, onfarmmeat
			name = "collect1000meat",
			label = "Αλυσίδα Κρεπωλείων",
			category = "General",
			actions = {
				on_add_server = function(src)
					-- body
					local xPlayer = ESX.GetPlayerFromId(src)
					if xPlayer then
						xPlayer.addAccountMoney('bank', 30000)
						CreateThread(function()
							Wait(3000)
							xPlayer.showAchievementNotfication(" Μόλις μάζεψες 1000 ομά κρέατα και πήρες 30k")
						end)
					end
				end,
				
			},
			ui = {
				fontawesome = "fas fa-car",
				label = "Αλυσίδα Κρεπωλείων",
				description = "Μάζεψε 1000 ομά κρέατα και πάρε 30k",
				reward = 30000,
				
			}
		},
		["300fileta"] = {		--esx_WirafPublicjobsV2, onprocessmeat
			name = "300fileta",
			label = "300 Φιλέτα",
			category = "General",
			actions = {
				on_add_server = function(src)
					-- body
					local xPlayer = ESX.GetPlayerFromId(src)
					if xPlayer then
						xPlayer.addAccountMoney('bank', 15000)
						CreateThread(function()
							Wait(3000)
							xPlayer.showAchievementNotfication(" Μόλις έφτιαξες 300 φιλέτα και πήρες 15k")
						end)
					end
				end,
				
			},
			ui = {
				fontawesome = "fas fa-car",
				label = "300 Φιλέτα",
				description = "Φτιάξε 300 φιλέτα και πάρε 15k",
				reward = 15000,
				
			}
		},
		["600fileta"] = {		--esx_WirafPublicjobsV2, onprocessmeat
			name = "600fileta",
			label = "600 Φιλέτα",
			category = "General",
			actions = {
				on_add_server = function(src)
					-- body
					local xPlayer = ESX.GetPlayerFromId(src)
					if xPlayer then
						xPlayer.addAccountMoney('bank', 30000)
						CreateThread(function()
							Wait(3000)
							xPlayer.showAchievementNotfication(" Μόλις έφτιαξες 600 φιλέτα και πήρες 30k")
						end)
					end
				end,
				
			},
			ui = {
				fontawesome = "fas fa-car",
				label = "600 Φιλέτα",
				description = "Φτιάξε 600 φιλέτα και πάρε 30k",
				reward = 30000,
				
			}
		},
		["150000spend"] = {		--on xPlayer.removeMoney and xPlayer.removeAccountMoney bank
			name = "150000spend",
			label = "Αγόρασε Πράγματα αξίας 150k",
			category = "General",
			actions = {
				on_add_server = function(src)
					-- body
					local xPlayer = ESX.GetPlayerFromId(src)
					if xPlayer then
						xPlayer.addAccountMoney('bank', 25000)
						CreateThread(function()
							Wait(3000)
							xPlayer.showAchievementNotfication(" Μόλις Αγόρασες Πράγματα αξίας 150k και πήρες 25k")
						end)
					end
				end,
				
			},
			ui = {
				fontawesome = "fas fa-car",
				label = "Αγόρασε Πράγματα αξίας 150k",
				description = "Αγόρασε Πράγματα αξίας 150k και πάρε 25k",
				reward = 25000,
				
			}
		},
		["300000spend"] = {		--on xPlayer.removeMoney and xPlayer.removeAccountMoney bank
			name = "300000spend",
			label = "Αγόρασε Πράγματα αξίας 300k",
			category = "General",
			actions = {
				on_add_server = function(src)
					-- body
					local xPlayer = ESX.GetPlayerFromId(src)
					if xPlayer then
						xPlayer.addAccountMoney('bank', 50000)
						CreateThread(function()
							Wait(3000)
							xPlayer.showAchievementNotfication(" Μόλις Αγόρασες Πράγματα αξίας 300k και πήρες 50k")
						end)
					end
				end,
				
			},
			ui = {
				fontawesome = "fas fa-car",
				label = "Αγόρασε Πράγματα αξίας 300k",
				description = "Αγόρασε Πράγματα αξίας 300k και πάρε 50k",
				reward = 50000,
				
			}
		},
		["50nitrompoukales"] = {	--onusenitro
			name = "50nitrompoukales",
			label = "NOS",
			category = "General",
			actions = {
				on_add_server = function(src)
					-- body
					local xPlayer = ESX.GetPlayerFromId(src)
					if xPlayer then
						xPlayer.addAccountMoney('bank', 15000)
						CreateThread(function()
							Wait(3000)
							xPlayer.showAchievementNotfication(" Μόλις χρησιμοποίησες 50 νιτρομπουκάλες και πήρες 15k")
						end)
					end
				end,
				
			},
			ui = {
				fontawesome = "fas fa-car",
				label = "NOS",
				description = "Χρησιμοποίησε 50 νιτρομπουκάλες και πάρε 15k",
				reward = 15000,
				
			}
		},
		["100nitrompoukales"] = {		--onusenitro
			name = "100nitrompoukales",
			label = "NOS ΙΙ",
			category = "General",
			actions = {
				on_add_server = function(src)
					-- body
					local xPlayer = ESX.GetPlayerFromId(src)
					if xPlayer then
						xPlayer.addAccountMoney('bank', 25000)
						CreateThread(function()
							Wait(3000)
							xPlayer.showAchievementNotfication(" Μόλις χρησιμοποίησες 100 νιτρομπουκάλες και πήρες 25k")
						end)
					end
				end,
				
			},
			ui = {
				fontawesome = "fas fa-car",
				label = "NOS ΙΙ",
				description = "Χρησιμοποίησε 100 νιτρομπουκάλες και πάρε 25k",
				reward = 25000,
				
			}
		},
		["200nargiledes"] = {		--wScripts, onshishapay
			name = "200nargiledes",
			label = "Ναργιλέδες",
			category = "General",
			actions = {
				on_add_server = function(src)
					-- body
					local xPlayer = ESX.GetPlayerFromId(src)
					if xPlayer then
						xPlayer.addAccountMoney('bank', 15000)
						CreateThread(function()
							Wait(3000)
							xPlayer.showAchievementNotfication(" Μόλις κάπνισες 200 ναργιλέδες και πήρες 15k")
						end)
					end
				end,
				
			},
			ui = {
				fontawesome = "fas fa-car",
				label = "Ναργιλέδες",
				description = "Κάπνισε 200 ναργιλέδες και πάρε 15k",
				reward = 15000,
				
			}
		},
		["500nargiledes"] = {		--wScripts, onshishapay
			name = "500nargiledes",
			label = "Special Ναργιλέδες",
			category = "General",
			actions = {
				on_add_server = function(src)
					-- body
					local xPlayer = ESX.GetPlayerFromId(src)
					if xPlayer then
						xPlayer.addAccountMoney('bank', 40000)
						CreateThread(function()
							Wait(3000)
							xPlayer.showAchievementNotfication(" Μόλις κάπνισες 500 ναργιλέδες και πήρες 40k")
						end)
					end
				end,
				
			},
			ui = {
				fontawesome = "fas fa-car",
				label = "Special Ναργιλέδες",
				description = "Κάπνισε 500 ναργιλέδες και πάρε 40k",
				reward = 40000,
				
			}
		},

		--OPERATIONS
		["250polyvitamines"] = {		--onusexapi2
			name = "250polyvitamines",
			label = "Χρησιμοποίησε 250 πολυβιταμίνες",
			category = "Operations",
			actions = {
				on_add_server = function(src)
					-- body
					local xPlayer = ESX.GetPlayerFromId(src)
					if xPlayer then
						xPlayer.addAccountMoney('bank', 40000)
						CreateThread(function()
							Wait(3000)
							xPlayer.showAchievementNotfication(" Μόλις χρησιμοποίησες 250 πολυβιταμίνες και πήρες 40k")
						end)
					end
				end,
				
			},
			ui = {
				fontawesome = "fas fa-car",
				label = "Χρησιμοποίησε 250 πολυβιταμίνες",
				description = "Χρησιμοποίησε 250 πολυβιταμίνες και πάρε 40k",
				reward = 40000,
				
			}
		},
		["500polyvitamines"] = {		--onusexapi2
			name = "500polyvitamines",
			label = "Χρησιμοποίησε 500 πολυβιταμίνες",
			category = "Operations",
			actions = {
				on_add_server = function(src)
					-- body
					local xPlayer = ESX.GetPlayerFromId(src)
					if xPlayer then
						xPlayer.addAccountMoney('bank', 80000)
						CreateThread(function()
							Wait(3000)
							xPlayer.showAchievementNotfication(" Μόλις χρησιμοποίησες 500 πολυβιταμίνες και πήρες 80k")
						end)
					end
				end,
				
			},
			ui = {
				fontawesome = "fas fa-car",
				label = "Χρησιμοποίησε 500 πολυβιταμίνες",
				description = "Χρησιμοποίησε 500 πολυβιταμίνες και πάρε 80k",
				reward = 80000,
				
			}
		},
		["250vitamines"] = {		--onusexapi1
			name = "250vitamines",
			label = "Χρησιμοποίησε 250 βιταμίνες",
			category = "Operations",
			actions = {
				on_add_server = function(src)
					-- body
					local xPlayer = ESX.GetPlayerFromId(src)
					if xPlayer then
						xPlayer.addAccountMoney('bank', 35000)
						CreateThread(function()
							Wait(3000)
							xPlayer.showAchievementNotfication(" Μόλις χρησιμοποίησες 250 βιταμίνες και πήρες 35k")
						end)
					end
				end,
				
			},
			ui = {
				fontawesome = "fas fa-car",
				label = "Χρησιμοποίησε 250 βιταμίνες",
				description = "Χρησιμοποίησε 250 βιταμίνες και πάρε 35k",
				reward = 35000,
				
			}
		},
		["500vitamines"] = {		--onusexapi1
			name = "500vitamines",
			label = "Χρησιμοποίησε 500 βιταμίνες",
			category = "Operations",
			actions = {
				on_add_server = function(src)
					-- body
					local xPlayer = ESX.GetPlayerFromId(src)
					if xPlayer then
						xPlayer.addAccountMoney('bank', 70000)
						CreateThread(function()
							Wait(3000)
							xPlayer.showAchievementNotfication(" Μόλις χρησιμοποίησες 500 βιταμίνες και πήρες 70k")
						end)
					end
				end,
				
			},
			ui = {
				fontawesome = "fas fa-car",
				label = "Χρησιμοποίησε 500 βιταμίνες",
				description = "Χρησιμοποίησε 500 βιταμίνες και πάρε 70k",
				reward = 70000,
				
			}
		},
		["500hlektrolutes"] = {		--onusexapi4
			name = "500hlektrolutes",
			label = "Χρησιμοποίησε 500 ηλεκτρολύτες",
			category = "Operations",
			actions = {
				on_add_server = function(src)
					-- body
					local xPlayer = ESX.GetPlayerFromId(src)
					if xPlayer then
						xPlayer.addAccountMoney('bank', 60000)
						CreateThread(function()
							Wait(3000)
							xPlayer.showAchievementNotfication(" Μόλις χρησιμοποίησες 500 ηλεκτρολύτες και πήρες 60k")
						end)
					end
				end,
				
			},
			ui = {
				fontawesome = "fas fa-car",
				label = "Χρησιμοποίησε 500 ηλεκτρολύτες",
				description = "Χρησιμοποίησε 500 ηλεκτρολύτες και πάρε 60k",
				reward = 60000,
				
			}
		},
		["500anavolika"] = {		--onusexapi5
			name = "500anavolika",
			label = "Χρησιμοποίησε 500 αναβολικά",
			category = "Operations",
			actions = {
				on_add_server = function(src)
					-- body
					local xPlayer = ESX.GetPlayerFromId(src)
					if xPlayer then
						xPlayer.addAccountMoney('bank', 60000)
						CreateThread(function()
							Wait(3000)
							xPlayer.showAchievementNotfication(" Μόλις χρησιμοποίησες 500 αναβολικά και πήρες 60k")
						end)
					end
				end,
				
			},
			ui = {
				fontawesome = "fas fa-car",
				label = "Χρησιμοποίησε 500 αναβολικά",
				description = "Χρησιμοποίησε 500 αναβολικά και πάρε 60k",
				reward = 60000,
				
			}
		},
		["500hremistika"] = {		--onusexapi3
			name = "500hremistika",
			label = "Χρησιμοποίησε 500 ηρεμιστικά",
			category = "Operations",
			actions = {
				on_add_server = function(src)
					-- body
					local xPlayer = ESX.GetPlayerFromId(src)
					if xPlayer then
						xPlayer.addAccountMoney('bank', 60000)
						CreateThread(function()
							Wait(3000)
							xPlayer.showAchievementNotfication(" Μόλις χρησιμοποίησες 500 ηρεμιστικά και πήρες 60k")
						end)
					end
				end,
				
			},
			ui = {
				fontawesome = "fas fa-car",
				label = "Χρησιμοποίησε 500 ηρεμιστικά",
				description = "Χρησιμοποίησε 500 ηρεμιστικά και πάρε 60k",
				reward = 60000,
				
			}
		},
		["250militaryvest"] = {		--onusemilitary
			name = "250militaryvest",
			label = "Χρησιμοποίησε 250 Military Vest",
			category = "Operations",
			actions = {
				on_add_server = function(src)
					-- body
					local xPlayer = ESX.GetPlayerFromId(src)
					if xPlayer then
						xPlayer.addAccountMoney('bank', 25000)
						CreateThread(function()
							Wait(3000)
							xPlayer.showAchievementNotfication(" Μόλις χρησιμοποίησες 250 Military Vest και πήρες 25k")
						end)
					end
				end,
				
			},
			ui = {
				fontawesome = "fas fa-car",
				label = "Χρησιμοποίησε 250 Military Vest",
				description = "Χρησιμοποίησε 250 Military Vest και πάρε 25k",
				reward = 25000,
				
			}
		},
		["500militaryvest"] = {		--onusemilitary
			name = "500militaryvest",
			label = "Χρησιμοποίησε 500 Military Vest",
			category = "Operations",
			actions = {
				on_add_server = function(src)
					-- body
					local xPlayer = ESX.GetPlayerFromId(src)
					if xPlayer then
						xPlayer.addAccountMoney('bank', 50000)
						CreateThread(function()
							Wait(3000)
							xPlayer.showAchievementNotfication(" Μόλις χρησιμοποίησες 500 Military Vest και πήρες 50k")
						end)
					end
				end,
				
			},
			ui = {
				fontawesome = "fas fa-car",
				label = "Χρησιμοποίησε 500 Military Vest",
				description = "Χρησιμοποίησε 500 Military Vest και πάρε 50k",
				reward = 50000,
				
			}
		},
		["500securityvest"] = {		--onusesecurity
			name = "500securityvest",
			label = "Χρησιμοποίησε 500 Security Vest",
			category = "Operations",
			actions = {
				on_add_server = function(src)
					-- body
					local xPlayer = ESX.GetPlayerFromId(src)
					if xPlayer then
						xPlayer.addAccountMoney('bank', 50000)
						CreateThread(function()
							Wait(3000)
							xPlayer.showAchievementNotfication(" Μόλις χρησιμοποίησες 500 Security Vest και πήρες 50k")
						end)
					end
				end,
				
			},
			ui = {
				fontawesome = "fas fa-car",
				label = "Χρησιμοποίησε 500 Security Vest",
				description = "Χρησιμοποίησε 500 Security Vest και πάρε 50k",
				reward = 50000,
				
			}
		},
		["250heal"] = {		--onusebandagemedikit
			name = "250heal",
			label = "Heal 250 φορές",
			category = "Operations",
			actions = {
				on_add_server = function(src)
					-- body
					local xPlayer = ESX.GetPlayerFromId(src)
					if xPlayer then
						xPlayer.addAccountMoney('bank', 25000)
						CreateThread(function()
							Wait(3000)
							xPlayer.showAchievementNotfication(" Μόλις έκανες heal 250 φορές και πήρες 25k")
						end)
					end
				end,
				
			},
			ui = {
				fontawesome = "fas fa-car",
				label = "Heal 250 φορές",
				description = "Heal 250 φορές και πάρε 25k",
				reward = 25000,
				
			}
		},
		["500heal"] = {		--onusebandagemedikit
			name = "500heal",
			label = "Heal 500 φορές",
			category = "Operations",
			actions = {
				on_add_server = function(src)
					-- body
					local xPlayer = ESX.GetPlayerFromId(src)
					if xPlayer then
						xPlayer.addAccountMoney('bank', 50000)
						CreateThread(function()
							Wait(3000)
							xPlayer.showAchievementNotfication(" Μόλις έκανες heal 500 φορές και πήρες 50k")
						end)
					end
				end,
				
			},
			ui = {
				fontawesome = "fas fa-car",
				label = "Heal 500 φορές",
				description = "Heal 500 φορές και πάρε 50k",
				reward = 50000,
				
			}
		},
		["200revive"] = {		--esx_thief, onreviveplayer
			name = "200revive",
			label = "Κάνε 200 revive",
			category = "Operations",
			actions = {
				on_add_server = function(src)
					-- body
					local xPlayer = ESX.GetPlayerFromId(src)
					if xPlayer then
						xPlayer.addAccountMoney('bank', 25000)
						CreateThread(function()
							Wait(3000)
							xPlayer.showAchievementNotfication(" Μόλις έκανες 200 revive και πήρες 25k")
						end)
					end
				end,
				
			},
			ui = {
				fontawesome = "fas fa-car",
				label = "Κάνε 200 revive",
				description = "Κάνε 200 revive και πάρε 25k",
				reward = 25000,
				
			}
		},
		["500revive"] = {		--esx_thief, onreviveplayer
			name = "500revive",
			label = "Κάνε 500 revive",
			category = "Operations",
			actions = {
				on_add_server = function(src)
					-- body
					local xPlayer = ESX.GetPlayerFromId(src)
					if xPlayer then
						xPlayer.addAccountMoney('bank', 50000)
						CreateThread(function()
							Wait(3000)
							xPlayer.showAchievementNotfication(" Μόλις έκανες 500 revive και πήρες 50k")
						end)
					end
				end,
				
			},
			ui = {
				fontawesome = "fas fa-car",
				label = "Κάνε 500 revive",
				description = "Κάνε 500 revive και πάρε 50k",
				reward = 50000,
				
			}
		},
		["250loot"] = {		--esx_thief, onplayersteal
			name = "250loot",
			label = "Loot 250 πτώματα",
			category = "Operations",
			actions = {
				on_add_server = function(src)
					-- body
					local xPlayer = ESX.GetPlayerFromId(src)
					if xPlayer then
						xPlayer.addAccountMoney('bank', 25000)
						CreateThread(function()
							Wait(3000)
							xPlayer.showAchievementNotfication(" Μόλις έκανες loot 250 πτώματα και πήρες 25k")
						end)
					end
				end,
				
			},
			ui = {
				fontawesome = "fas fa-car",
				label = "Loot 250 πτώματα",
				description = "Loot 250 πτώματα και πάρε 25k",
				reward = 25000,
				
			}
		},
		["500loot"] = {		--esx_thief, onplayersteal
			name = "500loot",
			label = "Loot 500 πτώματα",
			category = "Operations",
			actions = {
				on_add_server = function(src)
					-- body
					local xPlayer = ESX.GetPlayerFromId(src)
					if xPlayer then
						xPlayer.addAccountMoney('bank', 50000)
						CreateThread(function()
							Wait(3000)
							xPlayer.showAchievementNotfication(" Μόλις έκανες loot 500 πτώματα και πήρες 50k")
						end)
					end
				end,
				
			},
			ui = {
				fontawesome = "fas fa-car",
				label = "Loot 500 πτώματα",
				description = "Loot 500 πτώματα και πάρε 50k",
				reward = 50000,
				
			}
		},
		["150kills"] = {		--onkilldiscordbot
			name = "150kills",
			label = "Πάρε 150 kills",
			category = "Operations",
			actions = {
				on_add_server = function(src)
					-- body
					local xPlayer = ESX.GetPlayerFromId(src)
					if xPlayer then
						xPlayer.addAccountMoney('bank', 20000)
						CreateThread(function()
							Wait(3000)
							xPlayer.showAchievementNotfication(" Μόλις πήρες 150 kills και πήρες 20k")
						end)
					end
				end,
				
			},
			ui = {
				fontawesome = "fas fa-car",
				label = "Πάρε 150 kills",
				description = "Πάρε 150 kills και πάρε 20k",
				reward = 20000,
				
			}
		},
		["500kills"] = {		--onkilldiscordbot
			name = "500kills",
			label = "Πάρε 500 kills",
			category = "Operations",
			actions = {
				on_add_server = function(src)
					-- body
					local xPlayer = ESX.GetPlayerFromId(src)
					if xPlayer then
						xPlayer.addAccountMoney('bank', 50000)
						CreateThread(function()
							Wait(3000)
							xPlayer.showAchievementNotfication(" Μόλις πήρες 500 kills και πήρες 50k")
						end)
					end
				end,
				
			},
			ui = {
				fontawesome = "fas fa-car",
				label = "Πάρε 500 kills",
				description = "Πάρε 500 kills και πάρε 50k",
				reward = 50000,
				
			}
		},
		["250steal"] = {		--esx_thief, onstealplayer
			name = "250steal",
			label = "Λήστεψε 250 άτομα",
			category = "Operations",
			actions = {
				on_add_server = function(src)
					-- body
					local xPlayer = ESX.GetPlayerFromId(src)
					if xPlayer then
						xPlayer.addAccountMoney('bank', 25000)
						CreateThread(function()
							Wait(3000)
							xPlayer.showAchievementNotfication(" Μόλις λήστεψες 250 άτομα και πήρες 25k")
						end)
					end
				end,
				
			},
			ui = {
				fontawesome = "fas fa-car",
				label = "Λήστεψε 250 άτομα",
				description = "Λήστεψε 250 άτομα και πάρε 25k",
				reward = 25000,
				
			}
		},
		["500steal"] = {		--esx_thief, onstealplayer
			name = "500steal",
			label = "Λήστεψε 500 άτομα",
			category = "Operations",
			actions = {
				on_add_server = function(src)
					-- body
					local xPlayer = ESX.GetPlayerFromId(src)
					if xPlayer then
						xPlayer.addAccountMoney('bank', 50000)
						CreateThread(function()
							Wait(3000)
							xPlayer.showAchievementNotfication(" Μόλις λήστεψες 500 άτομα και πήρες 50k")
						end)
					end
				end,
				
			},
			ui = {
				fontawesome = "fas fa-car",
				label = "Λήστεψε 500 άτομα",
				description = "Λήστεψε 500 άτομα και πάρε 50k",
				reward = 50000,
				
			}
		},
		["150hijack"] = {		--onuselockpick
			name = "150hijack",
			label = "Διάρρηξε 150 αμάξια",
			category = "Operations",
			actions = {
				on_add_server = function(src)
					-- body
					local xPlayer = ESX.GetPlayerFromId(src)
					if xPlayer then
						xPlayer.addAccountMoney('bank', 20000)
						CreateThread(function()
							Wait(3000)
							xPlayer.showAchievementNotfication(" Μόλις διάρρηξες 150 αμάξια και πήρες 20k")
						end)
					end
				end,
				
			},
			ui = {
				fontawesome = "fas fa-car",
				label = "Διάρρηξε 150 αμάξια",
				description = "Διάρρηξε 150 αμάξια και πάρε 20k",
				reward = 20000,
				
			}
		},
		["300hijack"] = {		--onuselockpick
			name = "300hijack",
			label = "Διάρρηξε 300 αμάξια",
			category = "Operations",
			actions = {
				on_add_server = function(src)
					-- body
					local xPlayer = ESX.GetPlayerFromId(src)
					if xPlayer then
						xPlayer.addAccountMoney('bank', 40000)
						CreateThread(function()
							Wait(3000)
							xPlayer.showAchievementNotfication(" Μόλις διάρρηξες 300 αμάξια και πήρες 40k")
						end)
					end
				end,
				
			},
			ui = {
				fontawesome = "fas fa-car",
				label = "Διάρρηξε 300 αμάξια",
				description = "Διάρρηξε 300 αμάξια και πάρε 40k",
				reward = 40000,
				
			}
		},]]
	},
	['job'] = {
		--[[["5000kills"] = {		--discordbot, onkill
			name = "5000kills",
			label = "Kills I",
			category = "Jobs",
			actions = {
				on_add_server = function(job_name)
					local Mafia = MafiaInfo.GetMafia(job_name)
					if Mafia then
						MafiaInfo.AddMafiaMoney(Mafia.mafiaid, 150000)
					end
				end,
			},
			ui = {
				fontawesome = "fas fa-car",
				label = "Kills I",
				description = "Συμπληρώστε 5000 Kills και πάρτε 150000 στο ταμείο",
				reward = 150000,
			}
		},
		["10000kills"] = {		--discordbot, onkill
			name = "10000kills",
			label = "Kills II",
			category = "Jobs",
			actions = {
				on_add_server = function(job_name)
					local Mafia = MafiaInfo.GetMafia(job_name)
					if Mafia then
						MafiaInfo.AddMafiaMoney(Mafia.mafiaid, 300000)
					end
				end,
			},
			ui = {
				fontawesome = "fas fa-car",
				label = "Kills II",
				description = "Συμπληρώστε 10000 Kills και πάρτε 300000 στο ταμείο",
				reward = 300000,
				
			}
		},
		["20000kills"] = {		--discordbot, onkill
			name = "20000kills",
			label = "Kills III",
			category = "Jobs",
			actions = {
				on_add_server = function(job_name)
					local Mafia = MafiaInfo.GetMafia(job_name)
					if Mafia then
						MafiaInfo.AddMafiaMoney(Mafia.mafiaid, 300000)
					end
				end,
			},
			ui = {
				fontawesome = "fas fa-car",
				label = "Kills III",
				description = "Συμπληρώστε 5000 Kills και πάρτε 300000 στο ταμείο",
				reward = 300000,
				
			}
		},
		["capture150areas"] = {		--cj_CaptureArea, oncapturearea
			name = "capture150areas",
			label = "Capture Areas",
			category = "Jobs",
			actions = {
				on_add_server = function(job_name)
					local Mafia = MafiaInfo.GetMafia(job_name)
					if Mafia then
						MafiaInfo.AddMafiaMoney(Mafia.mafiaid, 150000)
					end
				end,
			},
			ui = {
				fontawesome = "fas fa-car",
				label = "Capture Areas",
				description = "Κάντε capture 150 περιοχές και πάρτε 150000 στο ταμείο",
				reward = 150000,
				
			}
		},
		["capture300areas"] = {		--cj_CaptureArea, oncapturearea
			name = "capture300areas",
			label = "Capture Areas ΙΙ",
			category = "Jobs",
			actions = {
				on_add_server = function(job_name)
					local Mafia = MafiaInfo.GetMafia(job_name)
					if Mafia then
						MafiaInfo.AddMafiaMoney(Mafia.mafiaid, 300000)
					end
				end,
			},
			ui = {
				fontawesome = "fas fa-car",
				label = "Capture Areas ΙΙ",
				description = "Κάντε capture 300 περιοχές και πάρτε 300000 στο ταμείο",
				reward = 300000,
				
			}
		},
		["capture500areas"] = {		--cj_CaptureArea, oncapturearea
			name = "capture500areas",
			label = "Capture Areas ΙΙΙ",
			category = "Jobs",
			actions = {
				on_add_server = function(job_name)
					local Mafia = MafiaInfo.GetMafia(job_name)
					if Mafia then
						MafiaInfo.AddMafiaMoney(Mafia.mafiaid, 300000)
					end
				end,
			},
			ui = {
				fontawesome = "fas fa-car",
				label = "Capture Areas ΙΙΙ",
				description = "Κάντε capture 500 περιοχές και πάρτε 300000 στο ταμείο",
				reward = 300000,
				
			}
		},
		["looatare150creates"] = {		--cj_CrateDrop, onlootcrate
			name = "looatare150creates",
			label = "Create Loot",
			category = "Jobs",
			actions = {
				on_add_server = function(job_name)
					local Mafia = MafiaInfo.GetMafia(job_name)
					if Mafia then
						MafiaInfo.AddMafiaMoney(Mafia.mafiaid, 150000)
					end
				end,
			},
			ui = {
				fontawesome = "fas fa-car",
				label = "Create Loot",
				description = "Loot 150 crates και πάρτε 150000 στο ταμείο",
				reward = 150000,
				
			}
		},
		["looatare300creates"] = {		--cj_CrateDrop, onlootcrate
			name = "looatare300creates",
			label = "Create Loot II",
			category = "Jobs",
			actions = {
				on_add_server = function(job_name)
					local Mafia = MafiaInfo.GetMafia(job_name)
					if Mafia then
						MafiaInfo.AddMafiaMoney(Mafia.mafiaid, 300000)
					end
				end,
			},
			ui = {
				fontawesome = "fas fa-car",
				label = "Create Loot II",
				description = "Loot 300 crates και πάρτε 300000 στο ταμείο",
				reward = 300000,
				
			}
		},
		["looatare500creates"] = {		--cj_CrateDrop, onlootcrate
			name = "looatare500creates",
			label = "Create Loot III",
			category = "Jobs",
			actions = {
				on_add_server = function(job_name)
					local Mafia = MafiaInfo.GetMafia(job_name)
					if Mafia then
						MafiaInfo.AddMafiaMoney(Mafia.mafiaid, 300000)
					end
				end,
			},
			ui = {
				fontawesome = "fas fa-car",
				label = "Create Loot III",
				description = "Loot 500 crates και πάρτε 300000 στο ταμείο",
				reward = 300000,
				
			}
		},
		["50business"] = {		--esx_wirafmafia, onadd businesscontrolled
			name = "50business",
			label = "Get 50 Businesses",
			category = "Jobs",
			actions = {
				on_add_server = function(job_name)
					local Mafia = MafiaInfo.GetMafia(job_name)
					if Mafia then
						MafiaInfo.AddMafiaMoney(Mafia.mafiaid, 150000)
					end
				end,
			},
			ui = {
				fontawesome = "fas fa-car",
				label = "Get 50 Businesses",
				description = "Πάρε 50 επιχειρήσεις υπό την κατοχή σου και πάρτε 150000 στο ταμείο",
				reward = 150000,
				
			}
		},
		["100business"] = {		--esx_wirafmafia, onadd businesscontrolled
			name = "100business",
			label = "Get 100 Businesses",
			category = "Jobs",
			actions = {
				on_add_server = function(job_name)
					local Mafia = MafiaInfo.GetMafia(job_name)
					if Mafia then
						MafiaInfo.AddMafiaMoney(Mafia.mafiaid, 300000)
					end
				end,
			},
			ui = {
				fontawesome = "fas fa-car",
				label = "Get 100 Businesses",
				description = "Πάρε 100 επιχειρήσεις υπό την κατοχή σου και πάρτε 300000 στο ταμείο",
				reward = 300000,
				
			}
		},
		["150business"] = {		--esx_wirafmafia, onadd businesscontrolled
			name = "150business",
			label = "Get 150 Businesses",
			category = "Jobs",
			actions = {
				on_add_server = function(job_name)
					local Mafia = MafiaInfo.GetMafia(job_name)
					if Mafia then
						MafiaInfo.AddMafiaMoney(Mafia.mafiaid, 300000)
					end
				end,
			},
			ui = {
				fontawesome = "fas fa-car",
				label = "Get 150 Businesses",
				description = "Πάρε 150 επιχειρήσεις υπό την κατοχή σου και πάρτε 300000 στο ταμείο",
				reward = 300000,
				
			}
		},
		["5timestopmafias"] = {		--esx_wirafmafia, onresettopmafias
			name = "5timestopmafias",
			label = "Top Mafias I",
			category = "Jobs",
			actions = {
				on_add_server = function(job_name)
					local Mafia = MafiaInfo.GetMafia(job_name)
					if Mafia then
						MafiaInfo.AddMafiaMoney(Mafia.mafiaid, 150000)
					end
				end,
			},
			ui = {
				fontawesome = "fas fa-car",
				label = "Top Mafias I",
				description = "Βγες 5 φορές 1ος στο topmafias και πάρτε 150000 στο ταμείο",
				reward = 150000,
				
			}
		},
		["10timestopmafias"] = {		--esx_wirafmafia, onresettopmafias
			name = "10timestopmafias",
			label = "Top Mafias II",
			category = "Jobs",
			actions = {
				on_add_server = function(job_name)
					local Mafia = MafiaInfo.GetMafia(job_name)
					if Mafia then
						MafiaInfo.AddMafiaMoney(Mafia.mafiaid, 150000)
					end
				end,
			},
			ui = {
				fontawesome = "fas fa-car",
				label = "Top Mafias II",
				description = "Βγες 10 φορές 1ος στο topmafias και πάρτε 150000 στο ταμείο",
				reward = 150000,
				
			}
		},
		["15timestopmafias"] = {		--esx_wirafmafia, onresettopmafias
			name = "15timestopmafias",
			label = "Top Mafias III",
			category = "Jobs",
			actions = {
				on_add_server = function(job_name)
					local Mafia = MafiaInfo.GetMafia(job_name)
					if Mafia then
						MafiaInfo.AddMafiaMoney(Mafia.mafiaid, 150000)
					end
				end,
			},
			ui = {
				fontawesome = "fas fa-car",
				label = "Top Mafias III",
				description = "Βγες 15 φορές 1ος στο topmafias και πάρτε 150000 στο ταμείο",
				reward = 150000,
				
			}
		},]]
	},
}

Config.HoursToDeleteDailyAchivements = { -- prepei PANTA na einai ligo prin to rr
	{ hour = 15, min = 59, sec = 0 },
}

Config.HoursToCreateDailyAchivements = { hour = 16, min = 00, sec = 10 } -- prepei na treksei amesws meta to rr na min prolavoun na mpoun paiktes, Diaforetika na min treksei katholou
	


Config.NoOfPersonalAchievementsToConvertToDailyOncePerDay = 0

Config.NoOfDailyRandomAchievements = 3