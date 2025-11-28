Config.DefaultWeaponTints = {
	[0] = _U('tint_default'),
	[1] = _U('tint_green'),
	[2] = _U('tint_gold'),
	[3] = _U('tint_pink'),
	[4] = _U('tint_army'),
	[5] = _U('tint_lspd'),
	[6] = _U('tint_orange'),
	[7] = _U('tint_platinum')
}

Config.AmmoTypes = {
	[`AMMO_PISTOL`]				= 'AMMO_PISTOL',
	[`AMMO_SMG`]				= 'AMMO_SMG',
	[`AMMO_RIFLE`]				= 'AMMO_RIFLE',
	[`AMMO_MG`]					= 'AMMO_MG',
	[`AMMO_SHOTGUN`]			= 'AMMO_SHOTGUN',
	[`AMMO_SNIPER`]				= 'AMMO_SNIPER',
	[`AMMO_FLARE`]				= 'AMMO_FLARE',
	[`AMMO_SMOKEZZ`]			= 'AMMO_SMOKEZZ',
	[`AMMO_MOLOTOV`]			= 'AMMO_MOLOTOV',
	[`AMMO_SMOKEGRENADE`]		= 'AMMO_SMOKEGRENADE',
	[`AMMO_FIREEXTINGUISHER`]	= 'AMMO_FIREEXTINGUISHER',
	[`AMMO_PETROLCAN`]			= 'AMMO_PETROLCAN',
}

Config.Weapons = {

	['WEAPON_HEAVYRIFLE'] = {
		name = 'WEAPON_HEAVYRIFLE',
		label = 'Heavy Rifle',
		ammo = {label = _U('ammo_rounds'), hash = GetHashKey('AMMO_RIFLE')},
		tints = Config.DefaultWeaponTints,
		components = {
			{name = 'clip_default', label = _U('component_clip_default'), hash = GetHashKey('COMPONENT_ASSAULTRIFLE_CLIP_01')},
			{name = 'clip_extended', label = _U('component_clip_extended'), hash = GetHashKey('COMPONENT_ASSAULTRIFLE_CLIP_02')},
			{name = 'clip_drum', label = _U('component_clip_drum'), hash = GetHashKey('COMPONENT_ASSAULTRIFLE_CLIP_03')},
			{name = 'flashlight', label = _U('component_flashlight'), hash = GetHashKey('COMPONENT_AT_AR_FLSH')},
			{name = 'scope', label = _U('component_scope'), hash = GetHashKey('COMPONENT_AT_SCOPE_MACRO')},
			{name = 'suppressor', label = _U('component_suppressor'), hash = GetHashKey('COMPONENT_AT_AR_SUPP_02')},
			{name = 'grip', label = _U('component_grip'), hash = GetHashKey('COMPONENT_AT_AR_AFGRIP')},
			{name = 'luxary_finish', label = _U('component_luxary_finish'), hash = GetHashKey('COMPONENT_ASSAULTRIFLE_VARMOD_LUXE')}
		}
	},

	['WEAPON_STUNGUN_MP'] = {name = 'WEAPON_STUNGUN_MP', ammo = {label = _U('ammo_rounds'), hash = GetHashKey('AMMO_STUNGUN')}, label = 'Stungun MP', tints = Config.DefaultWeaponTints, components = {}},

	['WEAPON_EMPLAUNCHER'] = {
        ammo = {label = 'EMP ammo', hash = GetHashKey('AMMO_EMPLAUNCHER')},
        name = 'WEAPON_EMPLAUNCHER',
        label = 'EMP Launcher',
        components = {
        }
    },

	['WEAPON_FERTILIZERCAN'] = {
        ammo = {label = 'Fertilizer ammo', hash = GetHashKey('AMMO_FERTILIZERCAN')},
        name = 'WEAPON_FERTILIZERCAN',
        label = 'Fertilizer Can',
        components = {
        }
    },

	['WEAPON_FLAMETHROWERSS'] = {
        ammo = {label = _U('ammo_rounds'), hash = GetHashKey('AMMO_FLAMETHROWER')},
        name = 'WEAPON_FLAMETHROWERSS',
        label = 'Flame Thrower',
        components = {
            -- { name = 'clip', label = _U('component_clip_default'), hash = 'COMPONENT_MINIGUN_CLIP_01' },
        }
    },

	['WEAPON_SSCREWDRIVER'] = {
        ammo = {label = _U('ammo_rounds'), hash = GetHashKey('AMMO_MELEE')},
        name = 'WEAPON_SSCREWDRIVER',
        label = 'Screw Driver',
        components = {

        }
    },

	['WEAPON_SBAT'] = {
        ammo = {label = _U('ammo_rounds'), hash = GetHashKey('AMMO_MELEE')},
        name = 'WEAPON_SBAT',
        label = 'Spiked Bat',
        components = {

        }
    },

	['WEAPON_SBBQ'] = {
        ammo = {label = _U('ammo_rounds'), hash = GetHashKey('AMMO_MELEE')},
        name = 'WEAPON_SBBQ',
        label = 'BBQ Fork',
        components = {

        }
    },

	['WEAPON_SDILDO'] = {
        ammo = {label = _U('ammo_rounds'), hash = GetHashKey('AMMO_MELEE')},
        name = 'WEAPON_SDILDO',
        label = 'Dildo',
        components = {

        }
    },

	['WEAPON_SHAMMER'] = {
        ammo = {label = _U('ammo_rounds'), hash = GetHashKey('AMMO_MELEE')},
        name = 'WEAPON_SHAMMER',
        label = 'Electrocuted Hammer',
        components = {

        }
    },

	['WEAPON_SSHOVEL'] = {
        ammo = {label = _U('ammo_rounds'), hash = GetHashKey('AMMO_MELEE')},
        name = 'WEAPON_SSHOVEL',
        label = 'Shovel',
        components = {

        }
    },

	['WEAPON_SSIGN'] = {
        ammo = {label = _U('ammo_rounds'), hash = GetHashKey('AMMO_MELEE')},
        name = 'WEAPON_SSIGN',
        label = 'Sign',
        components = {

        }
    },

	['WEAPON_SWRENCH'] = {
        ammo = {label = _U('ammo_rounds'), hash = GetHashKey('AMMO_MELEE')},
        name = 'WEAPON_SWRENCH',
        label = 'Wrench',
        components = {

        }
    },

	['WEAPON_PISTOL'] = {
		name = 'WEAPON_PISTOL',
		label = _U('weapon_pistol'),
		ammo = {label = _U('ammo_rounds'), hash = GetHashKey('AMMO_PISTOL')},
		tints = Config.DefaultWeaponTints,
		components = {
			{name = 'clip_default', label = _U('component_clip_default'), hash = GetHashKey('COMPONENT_PISTOL_CLIP_01')},
			{name = 'clip_extended', label = _U('component_clip_extended'), hash = GetHashKey('COMPONENT_PISTOL_CLIP_02')},
			{name = 'flashlight', label = _U('component_flashlight'), hash = GetHashKey('COMPONENT_AT_PI_FLSH')},
			{name = 'suppressor', label = _U('component_suppressor'), hash = GetHashKey('COMPONENT_AT_PI_SUPP_02')},
			{name = 'luxary_finish', label = _U('component_luxary_finish'), hash = GetHashKey('COMPONENT_PISTOL_VARMOD_LUXE')}
		}
	},

	['WEAPON_COMBATPISTOL'] = {
		name = 'WEAPON_COMBATPISTOL',
		label = _U('weapon_combatpistol'),
		ammo = {label = _U('ammo_rounds'), hash = GetHashKey('AMMO_PISTOL')},
		tints = Config.DefaultWeaponTints,
		components = {
			{name = 'clip_default', label = _U('component_clip_default'), hash = GetHashKey('COMPONENT_COMBATPISTOL_CLIP_01')},
			{name = 'clip_extended', label = _U('component_clip_extended'), hash = GetHashKey('COMPONENT_COMBATPISTOL_CLIP_02')},
			{name = 'flashlight', label = _U('component_flashlight'), hash = GetHashKey('COMPONENT_AT_PI_FLSH')},
			{name = 'suppressor', label = _U('component_suppressor'), hash = GetHashKey('COMPONENT_AT_PI_SUPP')},
			{name = 'luxary_finish', label = _U('component_luxary_finish'), hash = GetHashKey('COMPONENT_COMBATPISTOL_VARMOD_LOWRIDER')}
		}
	},

	['WEAPON_APPISTOL'] = {
		name = 'WEAPON_APPISTOL',
		label = _U('weapon_appistol'),
		ammo = {label = _U('ammo_rounds'), hash = GetHashKey('AMMO_PISTOL')},
		tints = Config.DefaultWeaponTints,
		components = {
			{name = 'clip_default', label = _U('component_clip_default'), hash = GetHashKey('COMPONENT_APPISTOL_CLIP_01')},
			{name = 'clip_extended', label = _U('component_clip_extended'), hash = GetHashKey('COMPONENT_APPISTOL_CLIP_02')},
			{name = 'flashlight', label = _U('component_flashlight'), hash = GetHashKey('COMPONENT_AT_PI_FLSH')},
			{name = 'suppressor', label = _U('component_suppressor'), hash = GetHashKey('COMPONENT_AT_PI_SUPP')},
			{name = 'luxary_finish', label = _U('component_luxary_finish'), hash = GetHashKey('COMPONENT_APPISTOL_VARMOD_LUXE')}
		}
	},

	['WEAPON_PISTOL50'] = {
		name = 'WEAPON_PISTOL50',
		label = _U('weapon_pistol50'),
		ammo = {label = _U('ammo_rounds'), hash = GetHashKey('AMMO_PISTOL')},
		tints = Config.DefaultWeaponTints,
		components = {
			{name = 'clip_default', label = _U('component_clip_default'), hash = GetHashKey('COMPONENT_PISTOL50_CLIP_01')},
			{name = 'clip_extended', label = _U('component_clip_extended'), hash = GetHashKey('COMPONENT_PISTOL50_CLIP_02')},
			{name = 'flashlight', label = _U('component_flashlight'), hash = GetHashKey('COMPONENT_AT_PI_FLSH')},
			{name = 'suppressor', label = _U('component_suppressor'), hash = GetHashKey('COMPONENT_AT_AR_SUPP_02')},
			{name = 'luxary_finish', label = _U('component_luxary_finish'), hash = GetHashKey('COMPONENT_PISTOL50_VARMOD_LUXE')}
		}
	},

	['WEAPON_SNSPISTOL'] = {
		name = 'WEAPON_SNSPISTOL',
		label = _U('weapon_snspistol'),
		ammo = {label = _U('ammo_rounds'), hash = GetHashKey('AMMO_PISTOL')},
		tints = Config.DefaultWeaponTints,
		components = {
			{name = 'clip_default', label = _U('component_clip_default'), hash = GetHashKey('COMPONENT_SNSPISTOL_CLIP_01')},
			{name = 'clip_extended', label = _U('component_clip_extended'), hash = GetHashKey('COMPONENT_SNSPISTOL_CLIP_02')},
			{name = 'luxary_finish', label = _U('component_luxary_finish'), hash = GetHashKey('COMPONENT_SNSPISTOL_VARMOD_LOWRIDER')}
		}
	},

	['WEAPON_HEAVYPISTOL'] = {
		name = 'WEAPON_HEAVYPISTOL',
		label = _U('weapon_heavypistol'),
		ammo = {label = _U('ammo_rounds'), hash = GetHashKey('AMMO_PISTOL')},
		tints = Config.DefaultWeaponTints,
		components = {
			{name = 'clip_default', label = _U('component_clip_default'), hash = GetHashKey('COMPONENT_HEAVYPISTOL_CLIP_01')},
			{name = 'clip_extended', label = _U('component_clip_extended'), hash = GetHashKey('COMPONENT_HEAVYPISTOL_CLIP_02')},
			{name = 'flashlight', label = _U('component_flashlight'), hash = GetHashKey('COMPONENT_AT_PI_FLSH')},
			{name = 'suppressor', label = _U('component_suppressor'), hash = GetHashKey('COMPONENT_AT_PI_SUPP')},
			{name = 'luxary_finish', label = _U('component_luxary_finish'), hash = GetHashKey('COMPONENT_HEAVYPISTOL_VARMOD_LUXE')}
		}
	},

	['WEAPON_VINTAGEPISTOL'] = {
		name = 'WEAPON_VINTAGEPISTOL',
		label = _U('weapon_vintagepistol'),
		ammo = {label = _U('ammo_rounds'), hash = GetHashKey('AMMO_PISTOL')},
		tints = Config.DefaultWeaponTints,
		components = {
			{name = 'clip_default', label = _U('component_clip_default'), hash = GetHashKey('COMPONENT_VINTAGEPISTOL_CLIP_01')},
			{name = 'clip_extended', label = _U('component_clip_extended'), hash = GetHashKey('COMPONENT_VINTAGEPISTOL_CLIP_02')},
			{name = 'suppressor', label = _U('component_suppressor'), hash = GetHashKey('COMPONENT_AT_PI_SUPP')}
		}
	},

	['WEAPON_MACHINEPISTOL'] = {
		name = 'WEAPON_MACHINEPISTOL',
		label = _U('weapon_machinepistol'),
		ammo = {label = _U('ammo_rounds'), hash = GetHashKey('AMMO_PISTOL')},
		tints = Config.DefaultWeaponTints,
		components = {
			{name = 'clip_default', label = _U('component_clip_default'), hash = GetHashKey('COMPONENT_MACHINEPISTOL_CLIP_01')},
			{name = 'clip_extended', label = _U('component_clip_extended'), hash = GetHashKey('COMPONENT_MACHINEPISTOL_CLIP_02')},
			{name = 'clip_drum', label = _U('component_clip_drum'), hash = GetHashKey('COMPONENT_MACHINEPISTOL_CLIP_03')},
			{name = 'suppressor', label = _U('component_suppressor'), hash = GetHashKey('COMPONENT_AT_PI_SUPP')}
		}
	},

	['WEAPON_REVOLVER'] = {name = 'WEAPON_REVOLVER', label = _U('weapon_revolver'), tints = Config.DefaultWeaponTints, components = {}, ammo = {label = _U('ammo_rounds'), hash = GetHashKey('AMMO_PISTOL')}},
	['WEAPON_MARKSMANPISTOL'] = {name = 'WEAPON_MARKSMANPISTOL', label = _U('weapon_marksmanpistol'), tints = Config.DefaultWeaponTints, components = {}, ammo = {label = _U('ammo_rounds'), hash = GetHashKey('AMMO_PISTOL')}},
	['WEAPON_DOUBLEACTION'] = {name = 'WEAPON_DOUBLEACTION', label = _U('weapon_doubleaction'), components = {}, ammo = {label = _U('ammo_rounds'), hash = GetHashKey('AMMO_PISTOL')}},

	['WEAPON_SMG'] = {
		name = 'WEAPON_SMG',
		label = _U('weapon_smg'),
		ammo = {label = _U('ammo_rounds'), hash = GetHashKey('AMMO_SMG')},
		tints = Config.DefaultWeaponTints,
		components = {
			{name = 'clip_default', label = _U('component_clip_default'), hash = GetHashKey('COMPONENT_SMG_CLIP_01')},
			{name = 'clip_extended', label = _U('component_clip_extended'), hash = GetHashKey('COMPONENT_SMG_CLIP_02')},
			{name = 'clip_drum', label = _U('component_clip_drum'), hash = GetHashKey('COMPONENT_SMG_CLIP_03')},
			{name = 'flashlight', label = _U('component_flashlight'), hash = GetHashKey('COMPONENT_AT_AR_FLSH')},
			{name = 'scope', label = _U('component_scope'), hash = GetHashKey('COMPONENT_AT_SCOPE_MACRO_02')},
			{name = 'suppressor', label = _U('component_suppressor'), hash = GetHashKey('COMPONENT_AT_PI_SUPP')},
			{name = 'luxary_finish', label = _U('component_luxary_finish'), hash = GetHashKey('COMPONENT_SMG_VARMOD_LUXE')}
		}
	},

	['WEAPON_ASSAULTSMG'] = {
		name = 'WEAPON_ASSAULTSMG',
		label = _U('weapon_assaultsmg'),
		ammo = {label = _U('ammo_rounds'), hash = GetHashKey('AMMO_SMG')},
		tints = Config.DefaultWeaponTints,
		components = {
			{name = 'clip_default', label = _U('component_clip_default'), hash = GetHashKey('COMPONENT_ASSAULTSMG_CLIP_01')},
			{name = 'clip_extended', label = _U('component_clip_extended'), hash = GetHashKey('COMPONENT_ASSAULTSMG_CLIP_02')},
			{name = 'flashlight', label = _U('component_flashlight'), hash = GetHashKey('COMPONENT_AT_AR_FLSH')},
			{name = 'scope', label = _U('component_scope'), hash = GetHashKey('COMPONENT_AT_SCOPE_MACRO')},
			{name = 'suppressor', label = _U('component_suppressor'), hash = GetHashKey('COMPONENT_AT_AR_SUPP_02')},
			{name = 'luxary_finish', label = _U('component_luxary_finish'), hash = GetHashKey('COMPONENT_ASSAULTSMG_VARMOD_LOWRIDER')}
		}
	},

	['WEAPON_MICROSMG'] = {
		name = 'WEAPON_MICROSMG',
		label = _U('weapon_microsmg'),
		ammo = {label = _U('ammo_rounds'), hash = GetHashKey('AMMO_SMG')},
		tints = Config.DefaultWeaponTints,
		components = {
			{name = 'clip_default', label = _U('component_clip_default'), hash = GetHashKey('COMPONENT_MICROSMG_CLIP_01')},
			{name = 'clip_extended', label = _U('component_clip_extended'), hash = GetHashKey('COMPONENT_MICROSMG_CLIP_02')},
			{name = 'flashlight', label = _U('component_flashlight'), hash = GetHashKey('COMPONENT_AT_PI_FLSH')},
			{name = 'scope', label = _U('component_scope'), hash = GetHashKey('COMPONENT_AT_SCOPE_MACRO')},
			{name = 'suppressor', label = _U('component_suppressor'), hash = GetHashKey('COMPONENT_AT_AR_SUPP_02')},
			{name = 'luxary_finish', label = _U('component_luxary_finish'), hash = GetHashKey('COMPONENT_MICROSMG_VARMOD_LUXE')}
		}
	},

	['WEAPON_MINISMG'] = {
		name = 'WEAPON_MINISMG',
		label = _U('weapon_minismg'),
		ammo = {label = _U('ammo_rounds'), hash = GetHashKey('AMMO_SMG')},
		tints = Config.DefaultWeaponTints,
		components = {
			{name = 'clip_default', label = _U('component_clip_default'), hash = GetHashKey('COMPONENT_MINISMG_CLIP_01')},
			{name = 'clip_extended', label = _U('component_clip_extended'), hash = GetHashKey('COMPONENT_MINISMG_CLIP_02')}
		}
	},

	['WEAPON_COMBATPDW'] = {
		name = 'WEAPON_COMBATPDW',
		label = _U('weapon_combatpdw'),
		ammo = {label = _U('ammo_rounds'), hash = GetHashKey('AMMO_SMG')},
		tints = Config.DefaultWeaponTints,
		components = {
			{name = 'clip_default', label = _U('component_clip_default'), hash = GetHashKey('COMPONENT_COMBATPDW_CLIP_01')},
			{name = 'clip_extended', label = _U('component_clip_extended'), hash = GetHashKey('COMPONENT_COMBATPDW_CLIP_02')},
			{name = 'clip_drum', label = _U('component_clip_drum'), hash = GetHashKey('COMPONENT_COMBATPDW_CLIP_03')},
			{name = 'flashlight', label = _U('component_flashlight'), hash = GetHashKey('COMPONENT_AT_AR_FLSH')},
			{name = 'grip', label = _U('component_grip'), hash = GetHashKey('COMPONENT_AT_AR_AFGRIP')},
			{name = 'scope', label = _U('component_scope'), hash = GetHashKey('COMPONENT_AT_SCOPE_SMALL')}
		}
	},

	['WEAPON_PUMPSHOTGUN'] = {
		name = 'WEAPON_PUMPSHOTGUN',
		label = _U('weapon_pumpshotgun'),
		ammo = {label = _U('ammo_shells'), hash = GetHashKey('AMMO_SHOTGUN')},
		tints = Config.DefaultWeaponTints,
		components = {
			{name = 'flashlight', label = _U('component_flashlight'), hash = GetHashKey('COMPONENT_AT_AR_FLSH')},
			{name = 'suppressor', label = _U('component_suppressor'), hash = GetHashKey('COMPONENT_AT_SR_SUPP')},
			{name = 'luxary_finish', label = _U('component_luxary_finish'), hash = GetHashKey('COMPONENT_PUMPSHOTGUN_VARMOD_LOWRIDER')}
		}
	},

	['WEAPON_SAWNOFFSHOTGUN'] = {
		name = 'WEAPON_SAWNOFFSHOTGUN',
		label = _U('weapon_sawnoffshotgun'),
		ammo = {label = _U('ammo_shells'), hash = GetHashKey('AMMO_SHOTGUN')},
		tints = Config.DefaultWeaponTints,
		components = {
			{name = 'luxary_finish', label = _U('component_luxary_finish'), hash = GetHashKey('COMPONENT_SAWNOFFSHOTGUN_VARMOD_LUXE')}
		}
	},

	['WEAPON_ASSAULTSHOTGUN'] = {
		name = 'WEAPON_ASSAULTSHOTGUN',
		label = _U('weapon_assaultshotgun'),
		ammo = {label = _U('ammo_shells'), hash = GetHashKey('AMMO_SHOTGUN')},
		tints = Config.DefaultWeaponTints,
		components = {
			{name = 'clip_default', label = _U('component_clip_default'), hash = GetHashKey('COMPONENT_ASSAULTSHOTGUN_CLIP_01')},
			{name = 'clip_extended', label = _U('component_clip_extended'), hash = GetHashKey('COMPONENT_ASSAULTSHOTGUN_CLIP_02')},
			{name = 'flashlight', label = _U('component_flashlight'), hash = GetHashKey('COMPONENT_AT_AR_FLSH')},
			{name = 'suppressor', label = _U('component_suppressor'), hash = GetHashKey('COMPONENT_AT_AR_SUPP')},
			{name = 'grip', label = _U('component_grip'), hash = GetHashKey('COMPONENT_AT_AR_AFGRIP')}
		}
	},

	['WEAPON_BULLPUPSHOTGUN'] = {
		name = 'WEAPON_BULLPUPSHOTGUN',
		label = _U('weapon_bullpupshotgun'),
		ammo = {label = _U('ammo_shells'), hash = GetHashKey('AMMO_SHOTGUN')},
		tints = Config.DefaultWeaponTints,
		components = {
			{name = 'flashlight', label = _U('component_flashlight'), hash = GetHashKey('COMPONENT_AT_AR_FLSH')},
			{name = 'suppressor', label = _U('component_suppressor'), hash = GetHashKey('COMPONENT_AT_AR_SUPP_02')},
			{name = 'grip', label = _U('component_grip'), hash = GetHashKey('COMPONENT_AT_AR_AFGRIP')}
		}
	},

	['WEAPON_HEAVYSHOTGUN'] = {
		name = 'WEAPON_HEAVYSHOTGUN',
		label = _U('weapon_heavyshotgun'),
		ammo = {label = _U('ammo_shells'), hash = GetHashKey('AMMO_SHOTGUN')},
		tints = Config.DefaultWeaponTints,
		components = {
			{name = 'clip_default', label = _U('component_clip_default'), hash = GetHashKey('COMPONENT_HEAVYSHOTGUN_CLIP_01')},
			{name = 'clip_extended', label = _U('component_clip_extended'), hash = GetHashKey('COMPONENT_HEAVYSHOTGUN_CLIP_02')},
			{name = 'clip_drum', label = _U('component_clip_drum'), hash = GetHashKey('COMPONENT_HEAVYSHOTGUN_CLIP_03')},
			{name = 'flashlight', label = _U('component_flashlight'), hash = GetHashKey('COMPONENT_AT_AR_FLSH')},
			{name = 'suppressor', label = _U('component_suppressor'), hash = GetHashKey('COMPONENT_AT_AR_SUPP_02')},
			{name = 'grip', label = _U('component_grip'), hash = GetHashKey('COMPONENT_AT_AR_AFGRIP')}
		}
	},

	['WEAPON_DBSHOTGUN'] = {name = 'WEAPON_DBSHOTGUN', label = _U('weapon_dbshotgun'), tints = Config.DefaultWeaponTints, components = {}, ammo = {label = _U('ammo_shells'), hash = GetHashKey('AMMO_SHOTGUN')}},
	['WEAPON_AUTOSHOTGUN'] = {name = 'WEAPON_AUTOSHOTGUN', label = _U('weapon_autoshotgun'), tints = Config.DefaultWeaponTints, components = {}, ammo = {label = _U('ammo_shells'), hash = GetHashKey('AMMO_SHOTGUN')}},
	['WEAPON_MUSKET'] = {name = 'WEAPON_MUSKET', label = _U('weapon_musket'), tints = Config.DefaultWeaponTints, components = {}, ammo = {label = _U('ammo_rounds'), hash = GetHashKey('AMMO_SHOTGUN')}},

	['WEAPON_ASSAULTRIFLE'] = {
		name = 'WEAPON_ASSAULTRIFLE',
		label = _U('weapon_assaultrifle'),
		ammo = {label = _U('ammo_rounds'), hash = GetHashKey('AMMO_RIFLE')},
		tints = Config.DefaultWeaponTints,
		components = {
			{name = 'clip_default', label = _U('component_clip_default'), hash = GetHashKey('COMPONENT_ASSAULTRIFLE_CLIP_01')},
			{name = 'clip_extended', label = _U('component_clip_extended'), hash = GetHashKey('COMPONENT_ASSAULTRIFLE_CLIP_02')},
			{name = 'clip_drum', label = _U('component_clip_drum'), hash = GetHashKey('COMPONENT_ASSAULTRIFLE_CLIP_03')},
			{name = 'flashlight', label = _U('component_flashlight'), hash = GetHashKey('COMPONENT_AT_AR_FLSH')},
			{name = 'scope', label = _U('component_scope'), hash = GetHashKey('COMPONENT_AT_SCOPE_MACRO')},
			{name = 'suppressor', label = _U('component_suppressor'), hash = GetHashKey('COMPONENT_AT_AR_SUPP_02')},
			{name = 'grip', label = _U('component_grip'), hash = GetHashKey('COMPONENT_AT_AR_AFGRIP')},
			{name = 'luxary_finish', label = _U('component_luxary_finish'), hash = GetHashKey('COMPONENT_ASSAULTRIFLE_VARMOD_LUXE')}
		}
	},

	['WEAPON_CARBINERIFLE'] = {
		name = 'WEAPON_CARBINERIFLE',
		label = _U('weapon_carbinerifle'),
		ammo = {label = _U('ammo_rounds'), hash = GetHashKey('AMMO_RIFLE')},
		tints = Config.DefaultWeaponTints,
		components = {
			{name = 'clip_default', label = _U('component_clip_default'), hash = GetHashKey('COMPONENT_CARBINERIFLE_CLIP_01')},
			{name = 'clip_extended', label = _U('component_clip_extended'), hash = GetHashKey('COMPONENT_CARBINERIFLE_CLIP_02')},
			{name = 'clip_box', label = _U('component_clip_box'), hash = GetHashKey('COMPONENT_CARBINERIFLE_CLIP_03')},
			{name = 'flashlight', label = _U('component_flashlight'), hash = GetHashKey('COMPONENT_AT_AR_FLSH')},
			{name = 'scope', label = _U('component_scope'), hash = GetHashKey('COMPONENT_AT_SCOPE_MEDIUM')},
			{name = 'suppressor', label = _U('component_suppressor'), hash = GetHashKey('COMPONENT_AT_AR_SUPP')},
			{name = 'grip', label = _U('component_grip'), hash = GetHashKey('COMPONENT_AT_AR_AFGRIP')},
			{name = 'luxary_finish', label = _U('component_luxary_finish'), hash = GetHashKey('COMPONENT_CARBINERIFLE_VARMOD_LUXE')}
		}
	},

	['WEAPON_SMG_MK2'] = {
		name = 'WEAPON_SMG_MK2',
		label = _U('weapon_smgmk2'),
		ammo = {label = _U('ammo_rounds'), hash = GetHashKey('AMMO_SMG')},
		components = {}
	},

	['WEAPON_CARBINERIFLE_MK2'] = {
		name = 'WEAPON_CARBINERIFLE_MK2',
		label = _U('weapon_carbinerifle_mk2'),
		ammo = {label = _U('ammo_rounds'), hash = GetHashKey('AMMO_RIFLE')},
		tints = Config.DefaultWeaponTints,
		components = {
			{name = 'clip_default', label = _U('component_clip_default'), hash = GetHashKey('COMPONENT_CARBINERIFLE_MK2_CLIP_01')},
			{name = 'clip_extended', label = _U('component_clip_extended'), hash = GetHashKey('COMPONENT_CARBINERIFLE_MK2_CLIP_02')},
			{name = 'flashlight', label = _U('component_flashlight'), hash = GetHashKey('COMPONENT_AT_AR_FLSH')},
			{name = 'holographic', label = _U('component_holographic'), hash = GetHashKey('COMPONENT_AT_SIGHTS')},
			{name = 'suppressor', label = _U('component_suppressor'), hash = GetHashKey('COMPONENT_AT_AR_SUPP')},
			{name = 'grip', label = _U('component_grip'), hash = GetHashKey('COMPONENT_AT_AR_AFGRIP_02')},
		}

	},

	['WEAPON_ADVANCEDRIFLE'] = {
		name = 'WEAPON_ADVANCEDRIFLE',
		label = _U('weapon_advancedrifle'),
		ammo = {label = _U('ammo_rounds'), hash = GetHashKey('AMMO_RIFLE')},
		tints = Config.DefaultWeaponTints,
		components = {
			{name = 'clip_default', label = _U('component_clip_default'), hash = GetHashKey('COMPONENT_ADVANCEDRIFLE_CLIP_01')},
			{name = 'clip_extended', label = _U('component_clip_extended'), hash = GetHashKey('COMPONENT_ADVANCEDRIFLE_CLIP_02')},
			{name = 'flashlight', label = _U('component_flashlight'), hash = GetHashKey('COMPONENT_AT_AR_FLSH')},
			{name = 'scope', label = _U('component_scope'), hash = GetHashKey('COMPONENT_AT_SCOPE_SMALL')},
			{name = 'suppressor', label = _U('component_suppressor'), hash = GetHashKey('COMPONENT_AT_AR_SUPP')},
			{name = 'luxary_finish', label = _U('component_luxary_finish'), hash = GetHashKey('COMPONENT_ADVANCEDRIFLE_VARMOD_LUXE')}
		}
	},

	['WEAPON_SPECIALCARBINE'] = {
		name = 'WEAPON_SPECIALCARBINE',
		label = _U('weapon_specialcarbine'),
		ammo = {label = _U('ammo_rounds'), hash = GetHashKey('AMMO_RIFLE')},
		tints = Config.DefaultWeaponTints,
		components = {
			{name = 'clip_default', label = _U('component_clip_default'), hash = GetHashKey('COMPONENT_SPECIALCARBINE_CLIP_01')},
			{name = 'clip_extended', label = _U('component_clip_extended'), hash = GetHashKey('COMPONENT_SPECIALCARBINE_CLIP_02')},
			{name = 'clip_drum', label = _U('component_clip_drum'), hash = GetHashKey('COMPONENT_SPECIALCARBINE_CLIP_03')},
			{name = 'flashlight', label = _U('component_flashlight'), hash = GetHashKey('COMPONENT_AT_AR_FLSH')},
			{name = 'scope', label = _U('component_scope'), hash = GetHashKey('COMPONENT_AT_SCOPE_MEDIUM')},
			{name = 'suppressor', label = _U('component_suppressor'), hash = GetHashKey('COMPONENT_AT_AR_SUPP_02')},
			{name = 'grip', label = _U('component_grip'), hash = GetHashKey('COMPONENT_AT_AR_AFGRIP')},
			{name = 'luxary_finish', label = _U('component_luxary_finish'), hash = GetHashKey('COMPONENT_SPECIALCARBINE_VARMOD_LOWRIDER')}
		}
	},

	['WEAPON_BULLPUPRIFLE'] = {
		name = 'WEAPON_BULLPUPRIFLE',
		label = _U('weapon_bullpuprifle'),
		ammo = {label = _U('ammo_rounds'), hash = GetHashKey('AMMO_RIFLE')},
		tints = Config.DefaultWeaponTints,
		components = {
			{name = 'clip_default', label = _U('component_clip_default'), hash = GetHashKey('COMPONENT_BULLPUPRIFLE_CLIP_01')},
			{name = 'clip_extended', label = _U('component_clip_extended'), hash = GetHashKey('COMPONENT_BULLPUPRIFLE_CLIP_02')},
			{name = 'flashlight', label = _U('component_flashlight'), hash = GetHashKey('COMPONENT_AT_AR_FLSH')},
			{name = 'scope', label = _U('component_scope'), hash = GetHashKey('COMPONENT_AT_SCOPE_SMALL')},
			{name = 'suppressor', label = _U('component_suppressor'), hash = GetHashKey('COMPONENT_AT_AR_SUPP')},
			{name = 'grip', label = _U('component_grip'), hash = GetHashKey('COMPONENT_AT_AR_AFGRIP')},
			{name = 'luxary_finish', label = _U('component_luxary_finish'), hash = GetHashKey('COMPONENT_BULLPUPRIFLE_VARMOD_LOW')}
		}
	},

	['WEAPON_COMPACTRIFLE'] = {
		name = 'WEAPON_COMPACTRIFLE',
		label = _U('weapon_compactrifle'),
		ammo = {label = _U('ammo_rounds'), hash = GetHashKey('AMMO_RIFLE')},
		tints = Config.DefaultWeaponTints,
		components = {
			{name = 'clip_default', label = _U('component_clip_default'), hash = GetHashKey('COMPONENT_COMPACTRIFLE_CLIP_01')},
			{name = 'clip_extended', label = _U('component_clip_extended'), hash = GetHashKey('COMPONENT_COMPACTRIFLE_CLIP_02')},
			{name = 'clip_drum', label = _U('component_clip_drum'), hash = GetHashKey('COMPONENT_COMPACTRIFLE_CLIP_03')}
		}
	},

	['WEAPON_MG'] = {
		name = 'WEAPON_MG',
		label = _U('weapon_mg'),
		ammo = {label = _U('ammo_rounds'), hash = GetHashKey('AMMO_MG')},
		tints = Config.DefaultWeaponTints,
		components = {
			{name = 'clip_default', label = _U('component_clip_default'), hash = GetHashKey('COMPONENT_MG_CLIP_01')},
			{name = 'clip_extended', label = _U('component_clip_extended'), hash = GetHashKey('COMPONENT_MG_CLIP_02')},
			{name = 'scope', label = _U('component_scope'), hash = GetHashKey('COMPONENT_AT_SCOPE_SMALL_02')},
			{name = 'luxary_finish', label = _U('component_luxary_finish'), hash = GetHashKey('COMPONENT_MG_VARMOD_LOWRIDER')}
		}
	},

	['WEAPON_COMBATMG'] = {
		name = 'WEAPON_COMBATMG',
		label = _U('weapon_combatmg'),
		ammo = {label = _U('ammo_rounds'), hash = GetHashKey('AMMO_MG')},
		tints = Config.DefaultWeaponTints,
		components = {
			{name = 'clip_default', label = _U('component_clip_default'), hash = GetHashKey('COMPONENT_COMBATMG_CLIP_01')},
			{name = 'clip_extended', label = _U('component_clip_extended'), hash = GetHashKey('COMPONENT_COMBATMG_CLIP_02')},
			{name = 'scope', label = _U('component_scope'), hash = GetHashKey('COMPONENT_AT_SCOPE_MEDIUM')},
			{name = 'grip', label = _U('component_grip'), hash = GetHashKey('COMPONENT_AT_AR_AFGRIP')},
			{name = 'luxary_finish', label = _U('component_luxary_finish'), hash = GetHashKey('COMPONENT_COMBATMG_VARMOD_LOWRIDER')}
		}
	},

	['WEAPON_GUSENBERG'] = {
		name = 'WEAPON_GUSENBERG',
		label = _U('weapon_gusenberg'),
		ammo = {label = _U('ammo_rounds'), hash = GetHashKey('AMMO_MG')},
		tints = Config.DefaultWeaponTints,
		components = {
			{name = 'clip_default', label = _U('component_clip_default'), hash = GetHashKey('COMPONENT_GUSENBERG_CLIP_01')},
			{name = 'clip_extended', label = _U('component_clip_extended'), hash = GetHashKey('COMPONENT_GUSENBERG_CLIP_02')},
		}
	},

	['WEAPON_SNIPERRIFLE'] = {
		name = 'WEAPON_SNIPERRIFLE',
		label = _U('weapon_sniperrifle'),
		ammo = {label = _U('ammo_rounds'), hash = GetHashKey('AMMO_SNIPER')},
		tints = Config.DefaultWeaponTints,
		components = {
			{name = 'scope', label = _U('component_scope'), hash = GetHashKey('COMPONENT_AT_SCOPE_LARGE')},
			{name = 'scope_advanced', label = _U('component_scope_advanced'), hash = GetHashKey('COMPONENT_AT_SCOPE_MAX')},
			{name = 'suppressor', label = _U('component_suppressor'), hash = GetHashKey('COMPONENT_AT_AR_SUPP_02')},
			{name = 'luxary_finish', label = _U('component_luxary_finish'), hash = GetHashKey('COMPONENT_SNIPERRIFLE_VARMOD_LUXE')}
		}
	},

	['WEAPON_HEAVYSNIPER'] = {
		name = 'WEAPON_HEAVYSNIPER',
		label = _U('weapon_heavysniper'),
		ammo = {label = _U('ammo_rounds'), hash = GetHashKey('AMMO_SNIPER')},
		tints = Config.DefaultWeaponTints,
		components = {
			{name = 'scope', label = _U('component_scope'), hash = GetHashKey('COMPONENT_AT_SCOPE_LARGE')},
			{name = 'scope_advanced', label = _U('component_scope_advanced'), hash = GetHashKey('COMPONENT_AT_SCOPE_MAX')}
		}
	},

	['WEAPON_MARKSMANRIFLE'] = {
		name = 'WEAPON_MARKSMANRIFLE',
		label = _U('weapon_marksmanrifle'),
		ammo = {label = _U('ammo_rounds'), hash = GetHashKey('AMMO_SNIPER')},
		tints = Config.DefaultWeaponTints,
		components = {
			{name = 'clip_default', label = _U('component_clip_default'), hash = GetHashKey('COMPONENT_MARKSMANRIFLE_CLIP_01')},
			{name = 'clip_extended', label = _U('component_clip_extended'), hash = GetHashKey('COMPONENT_MARKSMANRIFLE_CLIP_02')},
			{name = 'flashlight', label = _U('component_flashlight'), hash = GetHashKey('COMPONENT_AT_AR_FLSH')},
			{name = 'scope', label = _U('component_scope'), hash = GetHashKey('COMPONENT_AT_SCOPE_LARGE_FIXED_ZOOM')},
			{name = 'suppressor', label = _U('component_suppressor'), hash = GetHashKey('COMPONENT_AT_AR_SUPP')},
			{name = 'grip', label = _U('component_grip'), hash = GetHashKey('COMPONENT_AT_AR_AFGRIP')},
			{name = 'luxary_finish', label = _U('component_luxary_finish'), hash = GetHashKey('COMPONENT_MARKSMANRIFLE_VARMOD_LUXE')}
		}
	},

	['WEAPON_PISTOL_MK2'] = {
		name = 'WEAPON_PISTOL_MK2',
		label = _U('weapon_pistol_mk2'),
		ammo = {label = _U('ammo_rounds'), hash = GetHashKey('AMMO_PISTOL')},
		components = {
			{ name = 'clip_default', label = _U('component_clip_default'), hash = 'COMPONENT_PISTOL_MK2_CLIP_01' },
			{ name = 'clip_extended', label = _U('component_clip_extended'), hash = 'COMPONENT_PISTOL_MK2_CLIP_02' },
			{ name = 'flashlight', label = _U('component_flashlight'), hash = 'COMPONENT_AT_PI_FLSH' },
			{ name = 'suppressor', label = _U('component_suppressor'), hash = 'COMPONENT_AT_PI_SUPP_02' },
		
			{ name = 'rounds_tracer', label = _U('component_round_tracer'), hash = 'COMPONENT_PISTOL_MK2_CLIP_TRACER' },
			{ name = 'rounds_hollow', label = _U('component_round_hollow'), hash = 'COMPONENT_PISTOL_MK2_CLIP_HOLLOWPOINT' },
			{ name = 'rounds_incendiary', label = _U('component_round_incendiary'), hash = 'COMPONENT_PISTOL_MK2_CLIP_INCENDIARY' },
			{ name = 'rounds_fullmetal', label = _U('component_round_fullmetal'), hash = 'COMPONENT_PISTOL_MK2_CLIP_FMJ' },
		
			{ name = 'compensator', label = _U('component_compensator'), hash = 'COMPONENT_AT_PI_COMP' },
			
			{ name = 'skin_camo', label = _U('component_skin_camo'), hash = 'COMPONENT_PISTOL_MK2_CAMO' },
			{ name = 'skin_brushstroke', label = _U('component_skin_brushstroke'), hash = 'COMPONENT_PISTOL_MK2_CAMO_02' },
			{ name = 'skin_woodland', label = _U('component_skin_woodland'), hash = 'COMPONENT_PISTOL_MK2_CAMO_03' },
			{ name = 'skin_skull', label = _U('component_skin_skull'), hash = 'COMPONENT_PISTOL_MK2_CAMO_04' },
			{ name = 'skin_sessanta', label = _U('component_skin_sessanta'), hash = 'COMPONENT_PISTOL_MK2_CAMO_05' },
			{ name = 'skin_perseus', label = _U('component_skin_perseus'), hash = 'COMPONENT_PISTOL_MK2_CAMO_06' },
			{ name = 'skin_leopard', label = _U('component_skin_leopard'), hash = 'COMPONENT_PISTOL_MK2_CAMO_07' },
			{ name = 'skin_zebra', label = _U('component_skin_zebra'), hash = 'COMPONENT_PISTOL_MK2_CAMO_08' },
			{ name = 'skin_geometric', label = _U('component_skin_geometric'), hash = 'COMPONENT_PISTOL_MK2_CAMO_09' },
			{ name = 'skin_boom', label = _U('component_skin_boom'), hash = 'COMPONENT_PISTOL_MK2_CAMO_10' },
			{ name = 'skin_patriotic', label = _U('component_skin_patriotic'), hash = 'COMPONENT_PISTOL_MK2_CAMO_IND_01' },
		}
	},

	['WEAPON_REVOLVER_MK2'] = {	
		name = 'WEAPON_REVOLVER_MK2',
		label = _U('weapon_revolver_mk2'),
		ammo = {label = _U('ammo_rounds'), hash = GetHashKey('AMMO_PISTOL')},
		components = {
			{ name = 'clip', label = _U('component_clip_default'), hash = 'COMPONENT_REVOLVER_MK2_CLIP_01' },
			
			{ name = 'rounds_tracer', label = _U('component_round_tracer'), hash = 'COMPONENT_REVOLVER_MK2_CLIP_TRACER' },
			{ name = 'rounds_hollow', label = _U('component_round_hollow'), hash = 'COMPONENT_REVOLVER_MK2_CLIP_HOLLOWPOINT' },
			{ name = 'rounds_incendiary', label = _U('component_round_incendiary'), hash = 'COMPONENT_REVOLVER_MK2_CLIP_INCENDIARY' },
			{ name = 'rounds_fullmetal', label = _U('component_round_fullmetal'), hash = 'COMPONENT_REVOLVER_MK2_CLIP_FMJ' },


			{ name = 'flashlight', label = _U('component_flashlight'), hash = 'COMPONENT_AT_PI_FLSH' },

			{ name = 'scope', label = _U('component_scope'), hash = 'COMPONENT_AT_SIGHTS' },
			{ name = 'scope_macro', label = _U('component_scope_macro'), hash = 'COMPONENT_AT_SCOPE_MACRO_MK2' },
			{ name = 'scope_small', label = _U('component_scope_small'), hash = 'COMPONENT_AT_SCOPE_SMALL_MK2' },
			
			{ name = 'compensator', label = _U('component_compensator'), hash = 'COMPONENT_AT_PI_COMP_03' },
			
			{ name = 'skin_camo', label = _U('component_skin_camo'), hash = 'COMPONENT_REVOLVER_MK2_CAMO' },
			{ name = 'skin_brushstroke', label = _U('component_skin_brushstroke'), hash = 'COMPONENT_REVOLVER_MK2_CAMO_02' },
			{ name = 'skin_woodland', label = _U('component_skin_woodland'), hash = 'COMPONENT_REVOLVER_MK2_CAMO_03' },
			{ name = 'skin_skull', label = _U('component_skin_skull'), hash = 'COMPONENT_REVOLVER_MK2_CAMO_04' },
			{ name = 'skin_sessanta', label = _U('component_skin_sessanta'), hash = 'COMPONENT_REVOLVER_MK2_CAMO_05' },
			{ name = 'skin_perseus', label = _U('component_skin_perseus'), hash = 'COMPONENT_REVOLVER_MK2_CAMO_06' },
			{ name = 'skin_leopard', label = _U('component_skin_leopard'), hash = 'COMPONENT_REVOLVER_MK2_CAMO_07' },
			{ name = 'skin_zebra', label = _U('component_skin_zebra'), hash = 'COMPONENT_REVOLVER_MK2_CAMO_08' },
			{ name = 'skin_geometric', label = _U('component_skin_geometric'), hash = 'COMPONENT_REVOLVER_MK2_CAMO_09' },
			{ name = 'skin_boom', label = _U('component_skin_boom'), hash = 'COMPONENT_REVOLVER_MK2_CAMO_10' },
			{ name = 'skin_patriotic', label = _U('component_skin_patriotic'), hash = 'COMPONENT_REVOLVER_MK2_CAMO_IND_01' },
		}
	},

	['WEAPON_SNSPISTOL_MK2'] = {
		name = 'WEAPON_SNSPISTOL_MK2',
		label = _U('weapon_snspistol_mk2'),
		ammo = {label = _U('ammo_rounds'), hash = GetHashKey('AMMO_PISTOL')},
		components = {
			{ name = 'clip', label = _U('component_clip_default'), hash = 'COMPONENT_SNSPISTOL_MK2_CLIP_01' },
			{ name = 'clip_extended', label = _U('component_clip_extended'), hash = 'COMPONENT_SNSPISTOL_MK2_CLIP_02' },

			{ name = 'rounds_tracer', label = _U('component_round_tracer'), hash = 'COMPONENT_SNSPISTOL_MK2_CLIP_TRACER' },
			{ name = 'rounds_hollow', label = _U('component_round_hollow'), hash = 'COMPONENT_SNSPISTOL_MK2_CLIP_HOLLOWPOINT' },
			{ name = 'rounds_incendiary', label = _U('component_round_incendiary'), hash = 'COMPONENT_SNSPISTOL_MK2_CLIP_INCENDIARY' },
			{ name = 'rounds_fullmetal', label = _U('component_round_fullmetal'), hash = 'COMPONENT_SNSPISTOL_MK2_CLIP_FMJ' },


			{ name = 'flashlight', label = _U('component_flashlight'), hash = 'COMPONENT_AT_PI_FLSH' },

			{ name = 'scope_mounted', label = _U('component_scope_mounted'), hash = 'COMPONENT_AT_PI_RAIL_02' },
			
			{ name = 'compensator', label = _U('component_compensator'), hash = 'COMPONENT_AT_PI_COMP_02' },
			
			{ name = 'suppressor', label = _U('component_suppressor'), hash = 'COMPONENT_AT_PI_SUPP_02' },

			{ name = 'skin_camo', label = _U('component_skin_camo'), hash = 'COMPONENT_SNSPISTOL_MK2_CAMO' },
			{ name = 'skin_brushstroke', label = _U('component_skin_brushstroke'), hash = 'COMPONENT_SNSPISTOL_MK2_CAMO_02' },
			{ name = 'skin_woodland', label = _U('component_skin_woodland'), hash = 'COMPONENT_SNSPISTOL_MK2_CAMO_03' },
			{ name = 'skin_skull', label = _U('component_skin_skull'), hash = 'COMPONENT_SNSPISTOL_MK2_CAMO_04' },
			{ name = 'skin_sessanta', label = _U('component_skin_sessanta'), hash = 'COMPONENT_SNSPISTOL_MK2_CAMO_05' },
			{ name = 'skin_perseus', label = _U('component_skin_perseus'), hash = 'COMPONENT_SNSPISTOL_MK2_CAMO_06' },
			{ name = 'skin_leopard', label = _U('component_skin_leopard'), hash = 'COMPONENT_SNSPISTOL_MK2_CAMO_07' },
			{ name = 'skin_zebra', label = _U('component_skin_zebra'), hash = 'COMPONENT_SNSPISTOL_MK2_CAMO_08' },
			{ name = 'skin_geometric', label = _U('component_skin_geometric'), hash = 'COMPONENT_SNSPISTOL_MK2_CAMO_09' },
			{ name = 'skin_boom', label = _U('component_skin_boom'), hash = 'COMPONENT_SNSPISTOL_MK2_CAMO_10' },
			{ name = 'skin_patriotic', label = _U('component_skin_boom'), hash = 'COMPONENT_SNSPISTOL_MK2_CAMO_IND_01_SLIDE' },
		}
	},

	['WEAPON_PUMPSHOTGUN_MK2'] = {
		name = 'WEAPON_PUMPSHOTGUN_MK2',
		label = _U('weapon_pumpshotgun_mk2'),
		ammo = {label = _U('ammo_rounds'), hash = GetHashKey('AMMO_SHOTGUN')},
		components = {
			{ name = 'clip', label = _U('component_clip_default'), hash = 'COMPONENT_PUMPSHOTGUN_MK2_CLIP_01' },
			
			{ name = 'rounds_piercing', label = _U('component_round_piercing'), hash = 'COMPONENT_PUMPSHOTGUN_MK2_CLIP_ARMORPIERCING' },
			{ name = 'rounds_hollow', label = _U('component_round_hollow'), hash = 'COMPONENT_PUMPSHOTGUN_MK2_CLIP_HOLLOWPOINT' },
			{ name = 'rounds_explosive', label = _U('component_round_explosive'), hash = 'COMPONENT_PUMPSHOTGUN_MK2_CLIP_EXPLOSIVE' },
			{ name = 'rounds_incendiary', label = _U('component_round_incendiary'), hash = 'COMPONENT_PUMPSHOTGUN_MK2_CLIP_INCENDIARY' },
			
			{ name = 'flashlight', label = _U('component_flashlight'), hash = 'COMPONENT_AT_AR_FLSH' },

			{ name = 'scope', label = _U('component_scope'), hash = 'COMPONENT_AT_SIGHTS' },
			{ name = 'scope_macro', label = _U('component_scope_macro'), hash = 'COMPONENT_AT_SCOPE_MACRO_MK2' },
			{ name = 'scope_small', label = _U('component_scope_small'), hash = 'COMPONENT_AT_SCOPE_SMALL_MK2' },

			{ name = 'barrel', label = _U('component_barrel'), hash = 'COMPONENT_AT_SC_BARREL_01' },
			{ name = 'barrel_heavy', label = _U('component_barrel_heavy'), hash = 'COMPONENT_AT_SC_BARREL_02' },
			
			{ name = 'suppressor', label = _U('component_suppressor'), hash = 'COMPONENT_AT_SR_SUPP_03' },
			
			{ name = 'muzzle_flat', label = _U('component_muzzle_squared'), hash = 'COMPONENT_AT_MUZZLE_08' },
			
			{ name = 'grip', label = _U('component_grip'), hash = 'COMPONENT_AT_AR_AFGRIP_02' },
			
			{ name = 'skin_camo', label = _U('component_skin_camo'), hash = 'COMPONENT_PUMPSHOTGUN_MK2_CAMO' },
			{ name = 'skin_brushstroke', label = _U('component_skin_brushstroke'), hash = 'COMPONENT_PUMPSHOTGUN_MK2_CAMO_02' },
			{ name = 'skin_woodland', label = _U('component_skin_woodland'), hash = 'COMPONENT_PUMPSHOTGUN_MK2_CAMO_03' },
			{ name = 'skin_skull', label = _U('component_skin_skull'), hash = 'COMPONENT_PUMPSHOTGUN_MK2_CAMO_04' },
			{ name = 'skin_sessanta', label = _U('component_skin_sessanta'), hash = 'COMPONENT_PUMPSHOTGUN_MK2_CAMO_05' },
			{ name = 'skin_perseus', label = _U('component_skin_perseus'), hash = 'COMPONENT_PUMPSHOTGUN_MK2_CAMO_06' },
			{ name = 'skin_leopard', label = _U('component_skin_leopard'), hash = 'COMPONENT_PUMPSHOTGUN_MK2_CAMO_07' },
			{ name = 'skin_zebra', label = _U('component_skin_zebra'), hash = 'COMPONENT_PUMPSHOTGUN_MK2_CAMO_08' },
			{ name = 'skin_geometric', label = _U('component_skin_geometric'), hash = 'COMPONENT_PUMPSHOTGUN_MK2_CAMO_09' },
			{ name = 'skin_boom', label = _U('component_skin_boom'), hash = 'COMPONENT_PUMPSHOTGUN_MK2_CAMO_10' },
			{ name = 'skin_patriotic', label = _U('component_skin_patriotic'), hash = 'COMPONENT_PUMPSHOTGUN_MK2_CAMO_IND_01' },
		}
	},

	['WEAPON_ASSAULTRIFLE_MK2'] = {
		name = 'WEAPON_ASSAULTRIFLE_MK2',
		label = _U('weapon_assaultrifle_mk2'),
		ammo = {label = _U('ammo_rounds'), hash = GetHashKey('AMMO_RIFLE')},
		components = {
			{ name = 'clip', label = _U('component_clip_default'), hash = 'COMPONENT_ASSAULTRIFLE_MK2_CLIP_01' },
			{ name = 'clip_extended', label = _U('component_clip_extended'), hash = 'COMPONENT_ASSAULTRIFLE_MK2_CLIP_02' },
			
			{ name = 'rounds_tracer', label = _U('component_round_tracer'), hash = 'COMPONENT_ASSAULTRIFLE_MK2_CLIP_TRACER' },
			{ name = 'rounds_incendiary', label = _U('component_round_incendiary'), hash = 'COMPONENT_ASSAULTRIFLE_MK2_CLIP_INCENDIARY' },
			{ name = 'rounds_piercing', label = _U('component_round_piercing'), hash = 'COMPONENT_ASSAULTRIFLE_MK2_CLIP_ARMORPIERCING' },
			{ name = 'rounds_fullmetal', label = _U('component_round_fullmetal'), hash = 'COMPONENT_ASSAULTRIFLE_MK2_CLIP_FMJ' },
			
			{ name = 'flashlight', label = _U('component_flashlight'), hash = 'COMPONENT_AT_AR_FLSH' },

			{ name = 'scope', label = _U('component_scope'), hash = 'COMPONENT_AT_SIGHTS' },
			{ name = 'scope_macro', label = _U('component_scope_macro'), hash = 'COMPONENT_AT_SCOPE_MACRO_MK2' },
			{ name = 'scope_medium', label = _U('component_scope_medium'), hash = 'COMPONENT_AT_SCOPE_MEDIUM_MK2' },

			{ name = 'barrel', label = _U('component_barrel'), hash = 'COMPONENT_AT_SC_BARREL_01' },
			{ name = 'barrel_heavy', label = _U('component_barrel_heavy'), hash = 'COMPONENT_AT_SC_BARREL_02' },
			
			{ name = 'suppressor', label = _U('component_suppressor'), hash = 'COMPONENT_AT_AR_SUPP_02' },
			
			{ name = 'muzzle_flat', label = _U('component_muzzle_flat'), hash = 'COMPONENT_AT_MUZZLE_01' },
			{ name = 'muzzle_tatical', label = _U('component_muzzle_tatical'), hash = 'COMPONENT_AT_MUZZLE_02' },
			{ name = 'muzzle_fat', label = _U('component_muzzle_fat'), hash = 'COMPONENT_AT_MUZZLE_03' },
			{ name = 'muzzle_precision', label = _U('component_muzzle_precision'), hash = 'COMPONENT_AT_MUZZLE_04' },
			{ name = 'muzzle_heavy', label = _U('component_muzzle_heavy'), hash = 'COMPONENT_AT_MUZZLE_05' },
			{ name = 'muzzle_slanted', label = _U('component_muzzle_slanted'), hash = 'COMPONENT_AT_MUZZLE_06' },
			{ name = 'muzzle_split', label = _U('component_muzzle_split'), hash = 'COMPONENT_AT_MUZZLE_07' },
			
			{ name = 'grip', label = _U('component_grip'), hash = 'COMPONENT_AT_AR_AFGRIP_02' },
			
			{ name = 'skin_camo', label = _U('component_skin_camo'), hash = 'COMPONENT_ASSAULTRIFLE_MK2_CAMO' },
			{ name = 'skin_brushstroke', label = _U('component_skin_brushstroke'), hash = 'COMPONENT_ASSAULTRIFLE_MK2_CAMO_02' },
			{ name = 'skin_woodland', label = _U('component_skin_woodland'), hash = 'COMPONENT_ASSAULTRIFLE_MK2_CAMO_03' },
			{ name = 'skin_skull', label = _U('component_skin_skull'), hash = 'COMPONENT_ASSAULTRIFLE_MK2_CAMO_04' },
			{ name = 'skin_sessanta', label = _U('component_skin_sessanta'), hash = 'COMPONENT_ASSAULTRIFLE_MK2_CAMO_05' },
			{ name = 'skin_perseus', label = _U('component_skin_perseus'), hash = 'COMPONENT_ASSAULTRIFLE_MK2_CAMO_06' },
			{ name = 'skin_leopard', label = _U('component_skin_leopard'), hash = 'COMPONENT_ASSAULTRIFLE_MK2_CAMO_07' },
			{ name = 'skin_zebra', label = _U('component_skin_zebra'), hash = 'COMPONENT_ASSAULTRIFLE_MK2_CAMO_08' },
			{ name = 'skin_geometric', label = _U('component_skin_geometric'), hash = 'COMPONENT_ASSAULTRIFLE_MK2_CAMO_09' },
			{ name = 'skin_boom', label = _U('component_skin_boom'), hash = 'COMPONENT_ASSAULTRIFLE_MK2_CAMO_10' },
			{ name = 'skin_patriotic', label = _U('component_skin_patriotic'), hash = 'COMPONENT_ASSAULTRIFLE_MK2_CAMO_IND_01' },
		}
	},

	['WEAPON_CARBINERIFLE_MK2'] = {
		name = 'WEAPON_CARBINERIFLE_MK2',
		label = _U('weapon_carbinerifle_mk2'),
		ammo = {label = _U('ammo_rounds'), hash = GetHashKey('AMMO_RIFLE')},
		components = {
			{ name = 'clip', label = _U('component_clip_default'), hash = 'COMPONENT_CARBINERIFLE_MK2_CLIP_01' },
			{ name = 'clip_extended', label = _U('component_clip_extended'), hash = 'COMPONENT_CARBINERIFLE_MK2_CLIP_02' },
			
			{ name = 'rounds_tracer', label = _U('component_round_tracer'), hash = 'COMPONENT_CARBINERIFLE_MK2_CLIP_TRACER' },
			{ name = 'rounds_incendiary', label = _U('component_round_incendiary'), hash = 'COMPONENT_CARBINERIFLE_MK2_CLIP_INCENDIARY' },
			{ name = 'rounds_piercing', label = _U('component_round_piercing'), hash = 'COMPONENT_CARBINERIFLE_MK2_CLIP_ARMORPIERCING' },
			{ name = 'rounds_fullmetal', label = _U('component_round_fullmetal'), hash = 'COMPONENT_CARBINERIFLE_MK2_CLIP_FMJ' },
			
			{ name = 'flashlight', label = _U('component_flashlight'), hash = 'COMPONENT_AT_AR_FLSH' },

			{ name = 'scope', label = _U('component_scope'), hash = 'COMPONENT_AT_SIGHTS' },
			{ name = 'scope_macro', label = _U('component_scope_macro'), hash = 'COMPONENT_AT_SCOPE_MACRO_MK2' },
			{ name = 'scope_medium', label = _U('component_scope_medium'), hash = 'COMPONENT_AT_SCOPE_MEDIUM_MK2' },

			{ name = 'barrel', label = _U('component_barrel'), hash = 'COMPONENT_AT_CR_BARREL_01' },
			{ name = 'barrel_heavy', label = _U('component_barrel_heavy'), hash = 'COMPONENT_AT_CR_BARREL_02' },
			
			{ name = 'suppressor', label = _U('component_suppressor'), hash = 'COMPONENT_AT_AR_SUPP_02' },
			
			{ name = 'muzzle_flat', label = _U('component_muzzle_flat'), hash = 'COMPONENT_AT_MUZZLE_01' },
			{ name = 'muzzle_tatical', label = _U('component_muzzle_tatical'), hash = 'COMPONENT_AT_MUZZLE_02' },
			{ name = 'muzzle_fat', label = _U('component_muzzle_fat'), hash = 'COMPONENT_AT_MUZZLE_03' },
			{ name = 'muzzle_precision', label = _U('component_muzzle_precision'), hash = 'COMPONENT_AT_MUZZLE_04' },
			{ name = 'muzzle_heavy', label = _U('component_muzzle_heavy'), hash = 'COMPONENT_AT_MUZZLE_05' },
			{ name = 'muzzle_slanted', label = _U('component_muzzle_slanted'), hash = 'COMPONENT_AT_MUZZLE_06' },
			{ name = 'muzzle_split', label = _U('component_muzzle_split'), hash = 'COMPONENT_AT_MUZZLE_07' },
			
			{ name = 'grip', label = _U('component_grip'), hash = 'COMPONENT_AT_AR_AFGRIP_02' },
			
			{ name = 'skin_camo', label = _U('component_skin_camo'), hash = 'COMPONENT_CARBINERIFLE_MK2_CAMO' },
			{ name = 'skin_brushstroke', label = _U('component_skin_brushstroke'), hash = 'COMPONENT_CARBINERIFLE_MK2_CAMO_02' },
			{ name = 'skin_woodland', label = _U('component_skin_woodland'), hash = 'COMPONENT_CARBINERIFLE_MK2_CAMO_03' },
			{ name = 'skin_skull', label = _U('component_skin_skull'), hash = 'COMPONENT_CARBINERIFLE_MK2_CAMO_04' },
			{ name = 'skin_sessanta', label = _U('component_skin_sessanta'), hash = 'COMPONENT_CARBINERIFLE_MK2_CAMO_05' },
			{ name = 'skin_perseus', label = _U('component_skin_perseus'), hash = 'COMPONENT_CARBINERIFLE_MK2_CAMO_06' },
			{ name = 'skin_leopard', label = _U('component_skin_leopard'), hash = 'COMPONENT_CARBINERIFLE_MK2_CAMO_07' },
			{ name = 'skin_zebra', label = _U('component_skin_zebra'), hash = 'COMPONENT_CARBINERIFLE_MK2_CAMO_08' },
			{ name = 'skin_geometric', label = _U('component_skin_geometric'), hash = 'COMPONENT_CARBINERIFLE_MK2_CAMO_09' },
			{ name = 'skin_boom', label = _U('component_skin_boom'), hash = 'COMPONENT_CARBINERIFLE_MK2_CAMO_10' },
			{ name = 'skin_patriotic', label = _U('component_skin_patriotic'), hash = 'COMPONENT_CARBINERIFLE_MK2_CAMO_IND_01' },
		}
	},

	['WEAPON_SPECIALCARBINE_MK2'] = {
		name = 'WEAPON_SPECIALCARBINE_MK2',
		label = _U('weapon_specialcarbine_mk2'),
		ammo = {label = _U('ammo_rounds'), hash = GetHashKey('AMMO_RIFLE')},
		components = {
			{ name = 'clip', label = _U('component_clip_default'), hash = 'COMPONENT_SPECIALCARBINE_MK2_CLIP_01' },
			{ name = 'clip_extended', label = _U('component_clip_extended'), hash = 'COMPONENT_SPECIALCARBINE_MK2_CLIP_02' },
			
			{ name = 'rounds_tracer', label = _U('component_round_tracer'), hash = 'COMPONENT_SPECIALCARBINE_MK2_CLIP_TRACER' },
			{ name = 'rounds_incendiary', label = _U('component_round_incendiary'), hash = 'COMPONENT_SPECIALCARBINE_MK2_CLIP_INCENDIARY' },
			{ name = 'rounds_piercing', label = _U('component_round_piercing'), hash = 'COMPONENT_SPECIALCARBINE_MK2_CLIP_ARMORPIERCING' },
			{ name = 'rounds_fullmetal', label = _U('component_round_fullmetal'), hash = 'COMPONENT_SPECIALCARBINE_MK2_CLIP_FMJ' },
			
			{ name = 'flashlight', label = _U('component_flashlight'), hash = 'COMPONENT_AT_AR_FLSH' },

			{ name = 'scope', label = _U('component_scope'), hash = 'COMPONENT_AT_SIGHTS' },
			{ name = 'scope_macro', label = _U('component_scope_macro'), hash = 'COMPONENT_AT_SCOPE_MACRO_MK2' },
			{ name = 'scope_medium', label = _U('component_scope_medium'), hash = 'COMPONENT_AT_SCOPE_MEDIUM_MK2' },

			{ name = 'barrel', label = _U('component_barrel'), hash = 'COMPONENT_AT_SC_BARREL_01' },
			{ name = 'barrel_heavy', label = _U('component_barrel_heavy'), hash = 'COMPONENT_AT_SC_BARREL_02' },
			
			{ name = 'suppressor', label = _U('component_suppressor'), hash = 'COMPONENT_AT_AR_SUPP_02' },
			
			{ name = 'muzzle_flat', label = _U('component_muzzle_flat'), hash = 'COMPONENT_AT_MUZZLE_01' },
			{ name = 'muzzle_tatical', label = _U('component_muzzle_tatical'), hash = 'COMPONENT_AT_MUZZLE_02' },
			{ name = 'muzzle_fat', label = _U('component_muzzle_fat'), hash = 'COMPONENT_AT_MUZZLE_03' },
			{ name = 'muzzle_precision', label = _U('component_muzzle_precision'), hash = 'COMPONENT_AT_MUZZLE_04' },
			{ name = 'muzzle_heavy', label = _U('component_muzzle_heavy'), hash = 'COMPONENT_AT_MUZZLE_05' },
			{ name = 'muzzle_slanted', label = _U('component_muzzle_slanted'), hash = 'COMPONENT_AT_MUZZLE_06' },
			{ name = 'muzzle_split', label = _U('component_muzzle_split'), hash = 'COMPONENT_AT_MUZZLE_07' },
			
			{ name = 'grip', label = _U('component_grip'), hash = 'COMPONENT_AT_AR_AFGRIP_02' },
			
			{ name = 'skin_camo', label = _U('component_skin_camo'), hash = 'COMPONENT_SPECIALCARBINE_MK2_CAMO' },
			{ name = 'skin_brushstroke', label = _U('component_skin_brushstroke'), hash = 'COMPONENT_SPECIALCARBINE_MK2_CAMO_02' },
			{ name = 'skin_woodland', label = _U('component_skin_woodland'), hash = 'COMPONENT_SPECIALCARBINE_MK2_CAMO_03' },
			{ name = 'skin_skull', label = _U('component_skin_skull'), hash = 'COMPONENT_SPECIALCARBINE_MK2_CAMO_04' },
			{ name = 'skin_sessanta', label = _U('component_skin_sessanta'), hash = 'COMPONENT_SPECIALCARBINE_MK2_CAMO_05' },
			{ name = 'skin_perseus', label = _U('component_skin_perseus'), hash = 'COMPONENT_SPECIALCARBINE_MK2_CAMO_06' },
			{ name = 'skin_leopard', label = _U('component_skin_leopard'), hash = 'COMPONENT_SPECIALCARBINE_MK2_CAMO_07' },
			{ name = 'skin_zebra', label = _U('component_skin_zebra'), hash = 'COMPONENT_SPECIALCARBINE_MK2_CAMO_08' },
			{ name = 'skin_geometric', label = _U('component_skin_geometric'), hash = 'COMPONENT_SPECIALCARBINE_MK2_CAMO_09' },
			{ name = 'skin_boom', label = _U('component_skin_boom'), hash = 'COMPONENT_SPECIALCARBINE_MK2_CAMO_10' },
			{ name = 'skin_patriotic', label = _U('component_skin_patriotic'), hash = 'COMPONENT_SPECIALCARBINE_MK2_CAMO_IND_01' },
		}
	},

	['WEAPON_BULLPUPRIFLE_MK2'] = {
		name = 'WEAPON_BULLPUPRIFLE_MK2',
		label = _U('weapon_bullpuprifle_mk2'),
		ammo = {label = _U('ammo_rounds'), hash = GetHashKey('AMMO_RIFLE')},
		components = {
			{ name = 'clip_default', label = _U('component_clip_default'), hash = 'COMPONENT_BULLPUPRIFLE_MK2_CLIP_01' },
			{ name = 'clip_extended', label = _U('component_clip_extended'), hash = 'COMPONENT_BULLPUPRIFLE_MK2_CLIP_02' },
			
			{ name = 'rounds_tracer', label = _U('component_round_tracer'), hash = 'COMPONENT_BULLPUPRIFLE_MK2_CLIP_TRACER' },
			{ name = 'rounds_incendiary', label = _U('component_round_incendiary'), hash = 'COMPONENT_BULLPUPRIFLE_MK2_CLIP_INCENDIARY' },
			{ name = 'rounds_piercing', label = _U('component_round_piercing'), hash = 'COMPONENT_BULLPUPRIFLE_MK2_CLIP_ARMORPIERCING' },
			{ name = 'rounds_fullmetal', label = _U('component_round_fullmetal'), hash = 'COMPONENT_BULLPUPRIFLE_MK2_CLIP_FMJ' },
			
			{ name = 'flashlight', label = _U('component_flashlight'), hash = 'COMPONENT_AT_AR_FLSH' },

			{ name = 'scope', label = _U('component_scope'), hash = 'COMPONENT_AT_SIGHTS' },
			{ name = 'scope_macro', label = _U('component_scope_macro'), hash = 'COMPONENT_AT_SCOPE_MACRO_02_MK2' },
			{ name = 'scope_small', label = _U('component_scope_small'), hash = 'COMPONENT_AT_SCOPE_SMALL_MK2' },

			{ name = 'barrel', label = _U('component_barrel'), hash = 'COMPONENT_AT_BP_BARREL_01' },
			{ name = 'barrel_heavy', label = _U('component_barrel_heavy'), hash = 'COMPONENT_AT_BP_BARREL_02' },
			
			{ name = 'suppressor', label = _U('component_scope'), hash = 'COMPONENT_AT_AR_SUPP' },
			
			{ name = 'muzzle_flat', label = _U('component_muzzle_flat'), hash = 'COMPONENT_AT_MUZZLE_01' },
			{ name = 'muzzle_tatical', label = _U('component_muzzle_tatical'), hash = 'COMPONENT_AT_MUZZLE_02' },
			{ name = 'muzzle_fat', label = _U('component_muzzle_fat'), hash = 'COMPONENT_AT_MUZZLE_03' },
			{ name = 'muzzle_precision', label = _U('component_muzzle_precision'), hash = 'COMPONENT_AT_MUZZLE_04' },
			{ name = 'muzzle_heavy', label = _U('component_muzzle_heavy'), hash = 'COMPONENT_AT_MUZZLE_05' },
			{ name = 'muzzle_slanted', label = _U('component_muzzle_slanted'), hash = 'COMPONENT_AT_MUZZLE_06' },
			{ name = 'muzzle_split', label = _U('component_muzzle_split'), hash = 'COMPONENT_AT_MUZZLE_07' },
			
			{ name = 'grip', label = _U('component_grip'), hash = 'COMPONENT_AT_AR_AFGRIP_02' },
			
			{ name = 'skin_camo', label = _U('component_skin_camo'), hash = 'COMPONENT_BULLPUPRIFLE_MK2_CAMO' },
			{ name = 'skin_brushstroke', label = _U('component_skin_brushstroke'), hash = 'COMPONENT_BULLPUPRIFLE_MK2_CAMO_02' },
			{ name = 'skin_woodland', label = _U('component_skin_woodland'), hash = 'COMPONENT_BULLPUPRIFLE_MK2_CAMO_03' },
			{ name = 'skin_skull', label = _U('component_skin_skull'), hash = 'COMPONENT_BULLPUPRIFLE_MK2_CAMO_04' },
			{ name = 'skin_sessanta', label = _U('component_skin_sessanta'), hash = 'COMPONENT_BULLPUPRIFLE_MK2_CAMO_05' },
			{ name = 'skin_perseus', label = _U('component_skin_perseus'), hash = 'COMPONENT_BULLPUPRIFLE_MK2_CAMO_06' },
			{ name = 'skin_leopard', label = _U('component_skin_leopard'), hash = 'COMPONENT_BULLPUPRIFLE_MK2_CAMO_07' },
			{ name = 'skin_zebra', label = _U('component_skin_zebra'), hash = 'COMPONENT_BULLPUPRIFLE_MK2_CAMO_08' },
			{ name = 'skin_geometric', label = _U('component_skin_geometric'), hash = 'COMPONENT_BULLPUPRIFLE_MK2_CAMO_09' },
			{ name = 'skin_boom', label = _U('component_skin_boom'), hash = 'COMPONENT_BULLPUPRIFLE_MK2_CAMO_10' },
			{ name = 'skin_patriotic', label = _U('component_skin_patriotic'), hash = 'COMPONENT_BULLPUPRIFLE_MK2_CAMO_IND_01' },
		}
	},

	['WEAPON_COMBATMG_MK2'] = {
		name = 'WEAPON_COMBATMG_MK2',
		label = _U('weapon_combatmg_mk2'),
		ammo = {label = _U('ammo_rounds'), hash = GetHashKey('AMMO_MG')},
		components = {
			{ name = 'clip_default', label = _U('component_clip_default'), hash = 'COMPONENT_COMBATMG_MK2_CLIP_02' },

			{ name = 'rounds_tracer', label = _U('component_round_tracer'), hash = 'COMPONENT_COMBATMG_MK2_CLIP_TRACER' },
			{ name = 'rounds_incendiary', label = _U('component_round_incendiary'), hash = 'COMPONENT_COMBATMG_MK2_CLIP_INCENDIARY' },
			{ name = 'rounds_piercing', label = _U('component_round_piercing'), hash = 'COMPONENT_COMBATMG_MK2_CLIP_ARMORPIERCING' },
			{ name = 'rounds_fullmetal', label = _U('component_round_fullmetal'), hash = 'COMPONENT_COMBATMG_MK2_CLIP_FMJ' },
			
			{ name = 'grip', label = _U('component_grip'), hash = 'COMPONENT_AT_AR_AFGRIP_02' },
			
			{ name = 'flashlight', label = _U('component_flashlight'), hash = 'COMPONENT_AT_AR_FLSH' },

			{ name = 'scope', label = _U('component_scope'), hash = 'COMPONENT_AT_SIGHTS' },
			{ name = 'scope_medium', label = _U('component_scope_medium'), hash = 'COMPONENT_AT_SCOPE_MEDIUM_MK2' },
			{ name = 'scope_small', label = _U('component_scope_small'), hash = 'COMPONENT_AT_SCOPE_SMALL_MK2' },

			{ name = 'barrel', label = _U('component_barrel'), hash = 'COMPONENT_AT_MG_BARREL_01' },
			{ name = 'barrel_heavy', label = _U('component_barrel_heavy'), hash = 'COMPONENT_AT_MG_BARREL_02' },
					
			{ name = 'muzzle_flat', label = _U('component_muzzle_flat'), hash = 'COMPONENT_AT_MUZZLE_01' },
			{ name = 'muzzle_tatical', label = _U('component_muzzle_tatical'), hash = 'COMPONENT_AT_MUZZLE_02' },
			{ name = 'muzzle_fat', label = _U('component_muzzle_fat'), hash = 'COMPONENT_AT_MUZZLE_03' },
			{ name = 'muzzle_precision', label = _U('component_muzzle_precision'), hash = 'COMPONENT_AT_MUZZLE_04' },
			{ name = 'muzzle_heavy', label = _U('component_muzzle_heavy'), hash = 'COMPONENT_AT_MUZZLE_05' },
			{ name = 'muzzle_slanted', label = _U('component_muzzle_slanted'), hash = 'COMPONENT_AT_MUZZLE_06' },
			{ name = 'muzzle_split', label = _U('component_muzzle_split'), hash = 'COMPONENT_AT_MUZZLE_07' },
						
			{ name = 'skin_camo', label = _U('component_skin_camo'), hash = 'COMPONENT_COMBATMG_MK2_CAMO' },
			{ name = 'skin_brushstroke', label = _U('component_skin_brushstroke'), hash = 'COMPONENT_COMBATMG_MK2_CAMO_02' },
			{ name = 'skin_woodland', label = _U('component_skin_woodland'), hash = 'COMPONENT_COMBATMG_MK2_CAMO_03' },
			{ name = 'skin_skull', label = _U('component_skin_skull'), hash = 'COMPONENT_COMBATMG_MK2_CAMO_04' },
			{ name = 'skin_sessanta', label = _U('component_skin_sessanta'), hash = 'COMPONENT_COMBATMG_MK2_CAMO_05' },
			{ name = 'skin_perseus', label = _U('component_skin_perseus'), hash = 'COMPONENT_COMBATMG_MK2_CAMO_06' },
			{ name = 'skin_leopard', label = _U('component_skin_leopard'), hash = 'COMPONENT_COMBATMG_MK2_CAMO_07' },
			{ name = 'skin_zebra', label = _U('component_skin_zebra'), hash = 'COMPONENT_COMBATMG_MK2_CAMO_08' },
			{ name = 'skin_geometric', label = _U('component_skin_geometric'), hash = 'COMPONENT_COMBATMG_MK2_CAMO_09' },
			{ name = 'skin_boom', label = _U('component_skin_boom'), hash = 'COMPONENT_COMBATMG_MK2_CAMO_10' },
			{ name = 'skin_patriotic', label = _U('component_skin_patriotic'), hash = 'COMPONENT_COMBATMG_MK2_CAMO_IND_01' },
		}
	},

	['WEAPON_HEAVYSNIPER_MK2'] = {
		name = 'WEAPON_HEAVYSNIPER_MK2',
		label = _U('weapon_heavysniper_mk2'),
		ammo = {label = _U('ammo_rounds'), hash = GetHashKey('AMMO_SNIPER')},
		components = {
			{ name = 'clip_default', label = _U('component_clip_default'), hash = 'COMPONENT_HEAVYSNIPER_MK2_CLIP_01' },
			{ name = 'clip_extended', label = _U('component_clip_extended'), hash = 'COMPONENT_HEAVYSNIPER_MK2_CLIP_02' },

			{ name = 'rounds_incendiary', label = _U('component_round_incendiary'), hash = 'COMPONENT_HEAVYSNIPER_MK2_CLIP_INCENDIARY' },
			{ name = 'rounds_piercing', label = _U('component_round_piercing'), hash = 'COMPONENT_HEAVYSNIPER_MK2_CLIP_ARMORPIERCING' },
			{ name = 'rounds_fullmetal', label = _U('component_round_fullmetal'), hash = 'COMPONENT_HEAVYSNIPER_MK2_CLIP_FMJ' },
			{ name = 'rounds_explosive', label = _U('component_round_explosive'), hash = 'COMPONENT_HEAVYSNIPER_MK2_CLIP_EXPLOSIVE' },

			{ name = 'grip', label = _U('component_grip'), hash = 'COMPONENT_AT_AR_AFGRIP_02' },
			
			{ name = 'flashlight', label = _U('component_flashlight'), hash = 'COMPONENT_AT_AR_FLSH' },

			{ name = 'suppressor', label = _U('component_suppressor'), hash = 'COMPONENT_AT_SR_SUPP_03' },

			{ name = 'scope_large', label = _U('component_scope_medium'), hash = 'COMPONENT_AT_SCOPE_LARGE_MK2' },
			{ name = 'scope_zoom', label = _U('component_scope_zoom'), hash = 'COMPONENT_AT_SCOPE_MAX' },
			{ name = 'scope_nightvision', label = _U('component_scope_nightvision'), hash = 'COMPONENT_AT_SCOPE_NV' },
			{ name = 'scope_thermal', label = _U('component_scope_nightvision'), hash = 'COMPONENT_AT_SCOPE_THERMAL' },


			{ name = 'barrel', label = _U('component_barrel'), hash = 'COMPONENT_AT_SR_BARREL_01' },
			{ name = 'barrel_heavy', label = _U('component_barrel_heavy'), hash = 'COMPONENT_AT_SR_BARREL_02' },
					
			{ name = 'muzzle_squared', label = _U('component_muzzle_squared'), hash = 'COMPONENT_AT_MUZZLE_08' },
			{ name = 'muzzle_bellend', label = _U('component_muzzle_split'), hash = 'COMPONENT_AT_SR_BARREL_01' },
			
			
			{ name = 'skin_camo', label = _U('component_skin_camo'), hash = 'COMPONENT_HEAVYSNIPER_MK2_CAMO' },
			{ name = 'skin_brushstroke', label = _U('component_skin_brushstroke'), hash = 'COMPONENT_HEAVYSNIPER_MK2_CAMO_02' },
			{ name = 'skin_woodland', label = _U('component_skin_woodland'), hash = 'COMPONENT_HEAVYSNIPER_MK2_CAMO_03' },
			{ name = 'skin_skull', label = _U('component_skin_skull'), hash = 'COMPONENT_HEAVYSNIPER_MK2_CAMO_04' },
			{ name = 'skin_sessanta', label = _U('component_skin_sessanta'), hash = 'COMPONENT_HEAVYSNIPER_MK2_CAMO_05' },
			{ name = 'skin_perseus', label = _U('component_skin_perseus'), hash = 'COMPONENT_HEAVYSNIPER_MK2_CAMO_06' },
			{ name = 'skin_leopard', label = _U('component_skin_leopard'), hash = 'COMPONENT_HEAVYSNIPER_MK2_CAMO_07' },
			{ name = 'skin_zebra', label = _U('component_skin_zebra'), hash = 'COMPONENT_HEAVYSNIPER_MK2_CAMO_08' },
			{ name = 'skin_geometric', label = _U('component_skin_geometric'), hash = 'COMPONENT_HEAVYSNIPER_MK2_CAMO_09' },
			{ name = 'skin_boom', label = _U('component_skin_boom'), hash = 'COMPONENT_HEAVYSNIPER_MK2_CAMO_10' },
			{ name = 'skin_patriotic', label = _U('component_skin_patriotic'), hash = 'COMPONENT_HEAVYSNIPER_MK2_CAMO_IND_01' },
		}
	},

	['WEAPON_MARKSMANRIFLE_MK2'] = {
		name = 'WEAPON_MARKSMANRIFLE_MK2',
		label = _U('weapon_marksmanrifle_mk2'),
		ammo = {label = _U('ammo_rounds'), hash = GetHashKey('AMMO_SNIPER')},
		components = {
			{ name = 'clip_default', label = _U('component_clip_default'), hash = 'COMPONENT_MARKSMANRIFLE_MK2_CLIP_01' },
			{ name = 'clip_extended', label = _U('component_clip_extended'), hash = 'COMPONENT_MARKSMANRIFLE_MK2_CLIP_02' },

			{ name = 'rounds_tracer', label = _U('component_round_tracer'), hash = 'COMPONENT_MARKSMANRIFLE_MK2_CLIP_TRACER' },
			{ name = 'rounds_incendiary', label = _U('component_round_incendiary'), hash = 'COMPONENT_MARKSMANRIFLE_MK2_CLIP_INCENDIARY' },
			{ name = 'rounds_piercing', label = _U('component_round_piercing'), hash = 'COMPONENT_MARKSMANRIFLE_MK2_CLIP_ARMORPIERCING' },
			{ name = 'rounds_fullmetal', label = _U('component_round_fullmetal'), hash = 'COMPONENT_MARKSMANRIFLE_MK2_CLIP_FMJ' },
			
			{ name = 'grip', label = _U('component_grip'), hash = 'COMPONENT_AT_AR_AFGRIP_02' },
			
			{ name = 'flashlight', label = _U('component_flashlight'), hash = 'COMPONENT_AT_AR_FLSH' },

			{ name = 'suppressor', label = _U('component_suppressor'), hash = 'COMPONENT_AT_AR_SUPP' },

			{ name = 'scope', label = _U('component_scope'), hash = 'COMPONENT_AT_SIGHTS' },
			{ name = 'scope_medium', label = _U('component_scope_medium'), hash = 'COMPONENT_AT_SCOPE_MEDIUM_MK2' },
			{ name = 'scope_zoom', label = _U('component_scope_zoom'), hash = 'COMPONENT_AT_SCOPE_LARGE_FIXED_ZOOM_MK2' },

			{ name = 'barrel', label = _U('component_barrel'), hash = 'COMPONENT_AT_MRFL_BARREL_01' },
			{ name = 'barrel_heavy', label = _U('component_barrel_heavy'), hash = 'COMPONENT_AT_MRFL_BARREL_02' },
					
			{ name = 'muzzle_flat', label = _U('component_muzzle_flat'), hash = 'COMPONENT_AT_MUZZLE_01' },
			{ name = 'muzzle_tatical', label = _U('component_muzzle_tatical'), hash = 'COMPONENT_AT_MUZZLE_02' },
			{ name = 'muzzle_fat', label = _U('component_muzzle_fat'), hash = 'COMPONENT_AT_MUZZLE_03' },
			{ name = 'muzzle_precision', label = _U('component_muzzle_precision'), hash = 'COMPONENT_AT_MUZZLE_04' },
			{ name = 'muzzle_heavy', label = _U('component_muzzle_heavy'), hash = 'COMPONENT_AT_MUZZLE_05' },
			{ name = 'muzzle_slanted', label = _U('component_muzzle_slanted'), hash = 'COMPONENT_AT_MUZZLE_06' },
			{ name = 'muzzle_split', label = _U('component_muzzle_split'), hash = 'COMPONENT_AT_MUZZLE_07' },
			
			
			{ name = 'skin_camo', label = _U('component_skin_camo'), hash = 'COMPONENT_MARKSMANRIFLE_MK2_CAMO' },
			{ name = 'skin_brushstroke', label = _U('component_skin_brushstroke'), hash = 'COMPONENT_MARKSMANRIFLE_MK2_CAMO_02' },
			{ name = 'skin_woodland', label = _U('component_skin_woodland'), hash = 'COMPONENT_MARKSMANRIFLE_MK2_CAMO_03' },
			{ name = 'skin_skull', label = _U('component_skin_skull'), hash = 'COMPONENT_MARKSMANRIFLE_MK2_CAMO_04' },
			{ name = 'skin_sessanta', label = _U('component_skin_sessanta'), hash = 'COMPONENT_MARKSMANRIFLE_MK2_CAMO_05' },
			{ name = 'skin_perseus', label = _U('component_skin_perseus'), hash = 'COMPONENT_MARKSMANRIFLE_MK2_CAMO_06' },
			{ name = 'skin_leopard', label = _U('component_skin_leopard'), hash = 'COMPONENT_MARKSMANRIFLE_MK2_CAMO_07' },
			{ name = 'skin_zebra', label = _U('component_skin_zebra'), hash = 'COMPONENT_MARKSMANRIFLE_MK2_CAMO_08' },
			{ name = 'skin_geometric', label = _U('component_skin_geometric'), hash = 'COMPONENT_MARKSMANRIFLE_MK2_CAMO_09' },
			{ name = 'skin_boom', label = _U('component_skin_boom'), hash = 'COMPONENT_MARKSMANRIFLE_MK2_CAMO_10' },
			{ name = 'skin_patriotic', label = _U('component_skin_patriotic'), hash = 'COMPONENT_MARKSMANRIFLE_MK2_CAMO_IND_01' },
		}
	},
	---------------------------------------------------------------------------------------------------------------------

	['WEAPON_MINIGUN'] = {name = 'WEAPON_MINIGUN', label = _U('weapon_minigun'), tints = Config.DefaultWeaponTints, components = {}, ammo = {label = _U('ammo_rounds'), hash = GetHashKey('AMMO_MINIGUN')}},
	['WEAPON_RAILGUN'] = {name = 'WEAPON_RAILGUN', label = _U('weapon_railgun'), tints = Config.DefaultWeaponTints, components = {}, ammo = {label = _U('ammo_rounds'), hash = GetHashKey('AMMO_RAILGUN')}},
	['WEAPON_STUNGUN'] = {name = 'WEAPON_STUNGUN', ammo = {label = _U('ammo_rounds'), hash = GetHashKey('AMMO_STUNGUN')}, label = _U('weapon_stungun'), tints = Config.DefaultWeaponTints, components = {}},
	['WEAPON_RPG'] = {name = 'WEAPON_RPG', label = _U('weapon_rpg'), tints = Config.DefaultWeaponTints, components = {}, ammo = {label = _U('ammo_rockets'), hash = GetHashKey('AMMO_RPG')}},
	['WEAPON_HOMINGLAUNCHER'] = {name = 'WEAPON_HOMINGLAUNCHER', label = _U('weapon_hominglauncher'), tints = Config.DefaultWeaponTints, components = {}, ammo = {label = _U('ammo_rockets'), hash = GetHashKey('AMMO_HOMINGLAUNCHER')}},
	['WEAPON_GRENADELAUNCHER'] = {name = 'WEAPON_GRENADELAUNCHER', label = _U('weapon_grenadelauncher'), tints = Config.DefaultWeaponTints, components = {}, ammo = {label = _U('ammo_grenadelauncher'), hash = GetHashKey('AMMO_GRENADELAUNCHER')}},
	['WEAPON_COMPACTLAUNCHER'] = {name = 'WEAPON_COMPACTLAUNCHER', label = _U('weapon_compactlauncher'), tints = Config.DefaultWeaponTints, components = {}, ammo = {label = _U('ammo_grenadelauncher'), hash = GetHashKey('AMMO_GRENADELAUNCHER')}},
	['WEAPON_FLAREGUN'] = {name = 'WEAPON_FLAREGUN', label = _U('weapon_flaregun'), tints = Config.DefaultWeaponTints, components = {}, ammo = {label = _U('ammo_flaregun'), hash = GetHashKey('AMMO_FLAREGUN')}},
	['WEAPON_FIREEXTINGUISHER'] = {name = 'WEAPON_FIREEXTINGUISHER', label = _U('weapon_fireextinguisher'), components = {}, ammo = {label = _U('ammo_charge'), hash = GetHashKey('AMMO_FIREEXTINGUISHER')}},
	['WEAPON_PETROLCAN'] = {name = 'WEAPON_PETROLCAN', label = _U('weapon_petrolcan'), components = {}, ammo = {label = _U('ammo_petrol'), hash = GetHashKey('AMMO_PETROLCAN')}},
	['WEAPON_FIREWORK'] = {name = 'WEAPON_FIREWORK', label = _U('weapon_firework'), components = {}, ammo = {label = _U('ammo_firework'), hash = GetHashKey('AMMO_FIREWORK')}},
	['WEAPON_FLASHLIGHT'] = {name = 'WEAPON_FLASHLIGHT',ammo = {label = _U('ammo_rounds'), hash = GetHashKey('AMMO_MELEE')}, label = _U('weapon_flashlight'), components = {}},
	['GADGET_PARACHUTE'] = {name = 'GADGET_PARACHUTE',ammo = {label = _U('ammo_rounds'), hash = GetHashKey('AMMO_MELEE')}, label = _U('gadget_parachute'), components = {}},
	['WEAPON_KNUCKLE'] = {name = 'WEAPON_KNUCKLE',ammo = {label = _U('ammo_rounds'), hash = GetHashKey('AMMO_MELEE')}, label = _U('weapon_knuckle'), components = {}},
	['WEAPON_HATCHET'] = {name = 'WEAPON_HATCHET',ammo = {label = _U('ammo_rounds'), hash = GetHashKey('AMMO_MELEE')}, label = _U('weapon_hatchet'), components = {}},
	['WEAPON_MACHETE'] = {name = 'WEAPON_MACHETE',ammo = {label = _U('ammo_rounds'), hash = GetHashKey('AMMO_MELEE')}, label = _U('weapon_machete'), components = {}},
	['WEAPON_SWITCHBLADE'] = {name = 'WEAPON_SWITCHBLADE',ammo = {label = _U('ammo_rounds'), hash = GetHashKey('AMMO_MELEE')}, label = _U('weapon_switchblade'), components = {}},
	['WEAPON_BOTTLE'] = {name = 'WEAPON_BOTTLE',ammo = {label = _U('ammo_rounds'), hash = GetHashKey('AMMO_MELEE')}, label = _U('weapon_bottle'), components = {}},
	['WEAPON_DAGGER'] = {name = 'WEAPON_DAGGER',ammo = {label = _U('ammo_rounds'), hash = GetHashKey('AMMO_MELEE')}, label = _U('weapon_dagger'), components = {}},
	['WEAPON_POOLCUE'] = {name = 'WEAPON_POOLCUE',ammo = {label = _U('ammo_rounds'), hash = GetHashKey('AMMO_MELEE')}, label = _U('weapon_poolcue'), components = {}},
	['WEAPON_WRENCH'] = {name = 'WEAPON_WRENCH',ammo = {label = _U('ammo_rounds'), hash = GetHashKey('AMMO_MELEE')}, label = _U('weapon_wrench'), components = {}},
	['WEAPON_BATTLEAXE'] = {name = 'WEAPON_BATTLEAXE',ammo = {label = _U('ammo_rounds'), hash = GetHashKey('AMMO_MELEE')}, label = _U('weapon_battleaxe'), components = {}},
	['WEAPON_KNIFE'] = {name = 'WEAPON_KNIFE',ammo = {label = _U('ammo_rounds'), hash = GetHashKey('AMMO_MELEE')}, label = _U('weapon_knife'), components = {}},
	['WEAPON_NIGHTSTICK'] = {name = 'WEAPON_NIGHTSTICK',ammo = {label = _U('ammo_rounds'), hash = GetHashKey('AMMO_MELEE')}, label = _U('weapon_nightstick'), components = {}},
	['WEAPON_HAMMER'] = {name = 'WEAPON_HAMMER',ammo = {label = _U('ammo_rounds'), hash = GetHashKey('AMMO_MELEE')}, label = _U('weapon_hammer'), components = {}},
	['WEAPON_BAT'] = {name = 'WEAPON_BAT',ammo = {label = _U('ammo_rounds'), hash = GetHashKey('AMMO_MELEE')}, label = _U('weapon_bat'), components = {}},
	['WEAPON_GOLFCLUB'] = {name = 'WEAPON_GOLFCLUB',ammo = {label = _U('ammo_rounds'), hash = GetHashKey('AMMO_MELEE')}, label = _U('weapon_golfclub'), components = {}},
	['WEAPON_CROWBAR'] = {name = 'WEAPON_CROWBAR',ammo = {label = _U('ammo_rounds'), hash = GetHashKey('AMMO_MELEE')}, label = _U('weapon_crowbar'), components = {}},

	['WEAPON_GRENADE'] = {name = 'WEAPON_GRENADE', label = _U('weapon_grenade'), components = {}, ammo = {label = _U('ammo_grenade'), hash = GetHashKey('AMMO_GRENADE')}},
	['WEAPON_SMOKEGRENADE'] = {name = 'WEAPON_SMOKEGRENADE', label = _U('weapon_smokegrenade'), components = {}, ammo = {label = _U('ammo_smokebomb'), hash = GetHashKey('AMMO_SMOKEGRENADE')}},
	['WEAPON_SMOKEZZ'] = {name = 'WEAPON_SMOKEZZ', label = _U('weapon_smokegrenade'), components = {}, ammo = {label = _U('ammo_smokebomb'), hash = GetHashKey('AMMO_SMOKEGRENADE')}},
	['WEAPON_STICKYBOMB'] = {name = 'WEAPON_STICKYBOMB', label = _U('weapon_stickybomb'), components = {}, ammo = {label = _U('ammo_stickybomb'), hash = GetHashKey('AMMO_STICKYBOMB')}},
	['WEAPON_PIPEBOMB'] = {name = 'WEAPON_PIPEBOMB', label = _U('weapon_pipebomb'), components = {}, ammo = {label = _U('ammo_pipebomb'), hash = GetHashKey('AMMO_PIPEBOMB')}},
	['WEAPON_BZGAS'] = {name = 'WEAPON_BZGAS', label = _U('weapon_bzgas'), components = {}, ammo = {label = _U('ammo_bzgas'), hash = GetHashKey('AMMO_BZGAS')}},
	['WEAPON_MOLOTOV'] = {name = 'WEAPON_MOLOTOV', label = _U('weapon_molotov'), components = {}, ammo = {label = _U('ammo_molotov'), hash = GetHashKey('AMMO_MOLOTOV')}},
	['WEAPON_PROXMINE'] = {name = 'WEAPON_PROXMINE', label = _U('weapon_proxmine'), components = {}, ammo = {label = _U('ammo_proxmine'), hash = GetHashKey('AMMO_PROXMINE')}},
	['WEAPON_SNOWBALL'] = {name = 'WEAPON_SNOWBALL', label = _U('weapon_snowball'), components = {}, ammo = {label = _U('ammo_snowball'), hash = GetHashKey('AMMO_SNOWBALL')}},
	['WEAPON_BALL'] = {name = 'WEAPON_BALL', label = _U('weapon_ball'), components = {}, ammo = {label = _U('ammo_ball'), hash = GetHashKey('AMMO_BALL')}},
	['WEAPON_FLARE'] = {name = 'WEAPON_FLARE', label = _U('weapon_flare'), components = {}, ammo = {label = _U('ammo_flare'), hash = GetHashKey('AMMO_FLARE')}},

	--------------------------------------------------------------------------------------------------------------------------------------------------------------------
	--jrbWeapons
	--
	['WEAPON_ANARCHY'] = {    
		name = 'WEAPON_ANARCHY',
		label = ('ANARCHY'),
		ammo = {label = _U('ammo_rounds'), hash = GetHashKey('AMMO_RIFLE')},
		components = {
			{ name = 'clip_default', label = _U('component_clip_default'), hash = GetHashKey('w_ar_anarchy_mag1') },
			{ name = 'clip_extended', label = _U('component_clip_extended'), hash = GetHashKey('w_ar_anarchy_mag2') },
			{ name = 'suppressor', label = _U('component_suppressor'), hash = GetHashKey('w_at_ar_anarchy_supp') },
			{ name = 'scope', label = _U('component_scope'), hash = GetHashKey('w_at_ar_anarchy_scope') },
			{ name = 'grip', label = _U('component_grip'), hash = GetHashKey('w_at_ar_anarchy_grip') },
		}
	},
	--
	['WEAPON_ARX1'] = {    
		name = 'WEAPON_ARX1',
		label = ('ARX'),
		ammo = {label = _U('ammo_rounds'), hash = GetHashKey('AMMO_RIFLE')},
		components = {
			{ name = 'clip_default', label = _U('component_clip_default'), hash = GetHashKey('w_ar_arx1_mag1') },
			{ name = 'clip_extended', label = _U('component_clip_extended'), hash = GetHashKey('w_ar_arx1_mag2') },
			{ name = 'suppressor', label = _U('component_suppressor'), hash = GetHashKey('w_at_ar_arx1_supp') },
			{ name = 'scope', label = _U('component_scope'), hash = GetHashKey('w_at_ar_arx1_scope') },
			{ name = 'grip', label = _U('component_grip'), hash = GetHashKey('w_at_ar_arx1_grip') },
		}
	},
	--
	['WEAPON_AUGA2'] = {    
		name = 'WEAPON_AUGA2',
		label = ('AUGA2'),
		ammo = {label = _U('ammo_rounds'), hash = GetHashKey('AMMO_RIFLE')},
		components = {
			{ name = 'clip_default', label = _U('component_clip_default'), hash = GetHashKey('w_ar_auga2_mag1') },
			{ name = 'clip_extended', label = _U('component_clip_extended'), hash = GetHashKey('w_ar_auga2_mag2') },
			{ name = 'scope', label = _U('component_scope'), hash = GetHashKey('w_at_ar_auga2_scope') },
			{ name = 'suppressor', label = _U('component_suppressor'), hash = GetHashKey('w_at_ar_auga2_supp') },
		}
	},
	--
	['WEAPON_BEOWULF'] = {    
		name = 'WEAPON_BEOWULF',
		label = ('BEOWULF'),
		ammo = {label = _U('ammo_rounds'), hash = GetHashKey('AMMO_RIFLE')},
		components = {
			{ name = 'clip_default', label = _U('component_clip_default'), hash = GetHashKey('w_ar_beowulf_mag1') },
			{ name = 'clip_extended', label = _U('component_clip_extended'), hash = GetHashKey('w_ar_beowulf_mag2') },
			{ name = 'scope', label = _U('component_scope'), hash = GetHashKey('w_at_ar_beowulf_scope') },
			{ name = 'suppressor', label = _U('component_suppressor'), hash = GetHashKey('w_at_ar_beowulf_supp') },
			{ name = 'muzzle_flat', label = _U('component_muzzle_flat'), hash = 'w_at_ar_beowulf_muzzle' },
			{ name = 'grip', label = _U('component_grip'), hash = GetHashKey('w_at_ar_beowulf_grip') },
		}
	},
	--
	['WEAPON_CFS'] = {    
		name = 'WEAPON_CFS',
		label = ('CFS'),
		ammo = {label = _U('ammo_rounds'), hash = GetHashKey('AMMO_RIFLE')},
		components = {
			{ name = 'clip_default', label = _U('component_clip_default'), hash = GetHashKey('w_ar_cfs_mag1') },
			{ name = 'clip_extended', label = _U('component_clip_extended'), hash = GetHashKey('w_ar_cfs_mag2') },
			{ name = 'scope', label = _U('component_scope'), hash = GetHashKey('w_at_ar_cfs_scope') },
			{ name = 'suppressor', label = _U('component_suppressor'), hash = GetHashKey('w_at_ar_cfs_supp') },
			{ name = 'grip', label = _U('component_grip'), hash = GetHashKey('w_at_ar_cfs_grip') },
		}
	},
	--
	['WEAPON_FAMAS'] = {    
		name = 'WEAPON_FAMAS',
		label = ('FAMAS'),
		ammo = {label = _U('ammo_rounds'), hash = GetHashKey('AMMO_RIFLE')},
		components = {
			{ name = 'clip_default', label = _U('component_clip_default'), hash = GetHashKey('w_ar_famas_mag1') },
			{ name = 'clip_extended', label = _U('component_clip_extended'), hash = GetHashKey('w_ar_famas_mag2') },
			{ name = 'scope', label = _U('component_scope'), hash = GetHashKey('w_at_ar_famas_scope') },
			{ name = 'suppressor', label = _U('component_suppressor'), hash = GetHashKey('w_at_ar_famas_supp') },
		}
	},
	--
	['WEAPON_FNFAL'] = {    
		name = 'WEAPON_FNFAL',
		label = ('FNFAL'),
		ammo = {label = _U('ammo_rounds'), hash = GetHashKey('AMMO_RIFLE')},
		components = {
			{ name = 'clip_default', label = _U('component_clip_default'), hash = GetHashKey('w_ar_fnfal_mag1') },
			{ name = 'clip_extended', label = _U('component_clip_extended'), hash = GetHashKey('w_ar_fnfal_mag2') },
			{ name = 'suppressor', label = _U('component_suppressor'), hash = GetHashKey('w_at_ar_fnfal_supp') },
			{ name = 'scope', label = _U('component_scope'), hash = GetHashKey('w_at_ar_fnfal_scope') },
			{ name = 'grip', label = _U('component_grip'), hash = GetHashKey('w_at_ar_fnfal_grip') },
		}
	},
	--
	['WEAPON_FNFAL2'] = {    
		name = 'WEAPON_FNFAL2',
		label = ('FNFAL v2'),
		ammo = {label = _U('ammo_rounds'), hash = GetHashKey('AMMO_RIFLE')},
		components = {
			{ name = 'clip_default', label = _U('component_clip_default'), hash = GetHashKey('w_ar_fnfal2_mag1') },
			{ name = 'clip_extended', label = _U('component_clip_extended'), hash = GetHashKey('w_ar_fnfal2_mag2') },
			{ name = 'suppressor', label = _U('component_suppressor'), hash = GetHashKey('w_at_ar_fnfal2_supp') },
			{ name = 'muzzle_flat', label = _U('component_muzzle_flat'), hash = 'w_at_ar_fnfal2_muzzle' },
			{ name = 'scope', label = _U('component_scope'), hash = GetHashKey('w_at_ar_fnfal2_scope') },
			{ name = 'grip', label = _U('component_grip'), hash = GetHashKey('w_at_ar_fnfal2_grip') },
		}
	},
	--
	['WEAPON_FOOL'] = {    
		name = 'WEAPON_FOOL',
		label = ('FOOL'),
		ammo = {label = _U('ammo_rounds'), hash = GetHashKey('AMMO_RIFLE')},
		components = {
			{ name = 'clip_default', label = _U('component_clip_default'), hash = GetHashKey('w_ar_fool_mag1') },
			{ name = 'clip_extended', label = _U('component_clip_extended'), hash = GetHashKey('w_ar_fool_mag2') },
			{ name = 'scope', label = _U('component_scope'), hash = GetHashKey('w_at_ar_fool_scope') },
			{ name = 'suppressor', label = _U('component_suppressor'), hash = GetHashKey('w_at_ar_fool_supp') },
			{ name = 'grip', label = _U('component_grip'), hash = GetHashKey('w_at_ar_fool_grip') },
		}
	},
	--
	['WEAPON_GLOCK18C'] = {    
		name = 'WEAPON_GLOCK18C',
		label = ('GLOCK18C'),
		ammo = {label = _U('ammo_rounds'), hash = GetHashKey('AMMO_PISTOL')},
		components = {
			{ name = 'clip_default', label = _U('component_clip_default'), hash = GetHashKey('w_pi_glock18c_mag1') },
			{ name = 'clip_extended', label = _U('component_clip_extended'), hash = GetHashKey('w_pi_glock18c_mag2') },
			{ name = 'suppressor', label = _U('component_suppressor'), hash = GetHashKey('w_at_pi_glock18c_supp') },
		}
	},
	--
	['WEAPON_GYS'] = {
        name = 'WEAPON_GYS',
        label = ('GYS'),
        ammo = {label = _U('ammo_rounds'), hash = GetHashKey('AMMO_RIFLE')},
        components = {
            { name = 'clip_default', label = _U('component_clip_default'), hash = GetHashKey('w_ar_gys_mag1') },
            { name = 'clip_extended', label = _U('component_clip_extended'), hash = GetHashKey('w_ar_gys_mag2') },
			{ name = 'scope', label = _U('component_scope'), hash = GetHashKey('w_at_ar_gys_scope') },
			{ name = 'suppressor', label = _U('component_suppressor'), hash = GetHashKey('w_at_ar_gys_supp') },
			{ name = 'grip', label = _U('component_grip'), hash = GetHashKey('w_at_ar_gys_grip') },
        }
    },
    --
	['WEAPON_HFSMG'] = {    
		name = 'WEAPON_HFSMG',
		label = ('HF-SMG'),
		ammo = {label = _U('ammo_rounds'), hash = GetHashKey('AMMO_SMG')},
		components = {
			{ name = 'clip_default', label = _U('component_clip_default'), hash = GetHashKey('w_sb_hfsmg_mag1') },
			{ name = 'clip_extended', label = _U('component_clip_extended'), hash = GetHashKey('w_sb_hfsmg_mag2') },
			{ name = 'scope', label = _U('component_scope'), hash = GetHashKey('w_at_sb_hfsmg_scope') },
			{ name = 'suppressor', label = _U('component_suppressor'), hash = GetHashKey('w_at_sb_hfsmg_supp') },
		}
	},
	--
	['WEAPON_HK43'] = {    
		name = 'WEAPON_HK43',
		label = ('HK43'),
		ammo = {label = _U('ammo_rounds'), hash = GetHashKey('AMMO_RIFLE')},
		components = {
			{ name = 'clip_default', label = _U('component_clip_default'), hash = GetHashKey('w_ar_hk43_mag1') },
			{ name = 'clip_extended', label = _U('component_clip_extended'), hash = GetHashKey('w_ar_hk43_mag2') },
			{ name = 'scope', label = _U('component_scope'), hash = GetHashKey('w_at_ar_hk43_scope') },
			{ name = 'suppressor', label = _U('component_suppressor'), hash = GetHashKey('w_at_ar_hk43_supp') },
			{ name = 'grip', label = _U('component_grip'), hash = GetHashKey('w_at_ar_hk43_grip') },
		}
	},
	--
	['WEAPON_HKG28'] = {
		ammo = {label = _U('ammo_rounds'), hash = GetHashKey('AMMO_RIFLE')},
		name = 'WEAPON_HKG28',
		label = 'HKG28',
		components = {
			{ name = 'clip_default', label = _U('component_clip_default'), hash = GetHashKey('w_ar_hkg28_mag1') },
			{ name = 'clip_extended', label = _U('component_clip_extended'), hash = GetHashKey('w_ar_hkg28_mag2') },
			{ name = 'suppressor', label = _U('component_suppressor'), hash = GetHashKey('w_at_ar_hkg28_supp') },
			{ name = 'scope', label = _U('component_scope'), hash = GetHashKey('w_at_ar_hkg28_scope') },
			{ name = 'grip', label = _U('component_grip'), hash = GetHashKey('w_at_ar_hkg28_grip') },
		}
	},
	--
	['WEAPON_HOWA'] = {    
		name = 'WEAPON_HOWA',
		label = ('HOWA'),
		ammo = {label = _U('ammo_rounds'), hash = GetHashKey('AMMO_RIFLE')},
		components = {
			{ name = 'clip_default', label = _U('component_clip_default'), hash = GetHashKey('w_ar_howa_mag1') },
			{ name = 'clip_extended', label = _U('component_clip_extended'), hash = GetHashKey('w_ar_howa_mag2') },
			{ name = 'suppressor', label = _U('component_suppressor'), hash = GetHashKey('w_at_ar_howa_supp') },
			{ name = 'scope', label = _U('component_scope'), hash = GetHashKey('w_at_ar_howa_scope') },
			{ name = 'grip', label = _U('component_grip'), hash = GetHashKey('w_at_ar_howa_grip') },
		}
	},
	--
	['WEAPON_ISY'] = {    
		name = 'WEAPON_ISY',
		label = ('ISY'),
		ammo = {label = _U('ammo_rounds'), hash = GetHashKey('AMMO_RIFLE')},
		components = {
			{ name = 'clip_default', label = _U('component_clip_default'), hash = GetHashKey('w_ar_isy_mag1') },
			{ name = 'clip_extended', label = _U('component_clip_extended'), hash = GetHashKey('w_ar_isy_mag2') },
			{ name = 'suppressor', label = _U('component_suppressor'), hash = GetHashKey('w_at_ar_isy_supp') },
			{ name = 'scope', label = _U('component_scope'), hash = GetHashKey('w_at_ar_isy_scope') },
			{ name = 'grip', label = _U('component_grip'), hash = GetHashKey('w_at_ar_isy_grip') },
		}
	},
	--
	['WEAPON_KRISSVECT'] = {    
		name = 'WEAPON_KRISSVECT',
		label = ('Kriss Vector'),
		ammo = {label = _U('ammo_rounds'), hash = GetHashKey('AMMO_SMG')},
		components = {
			{ name = 'clip_default', label = _U('component_clip_default'), hash = GetHashKey('w_sb_krissvect_mag1') },
			{ name = 'clip_extended', label = _U('component_clip_extended'), hash = GetHashKey('w_sb_krissvect_mag2') },
			{ name = 'suppressor', label = _U('component_suppressor'), hash = GetHashKey('w_at_sb_krissvect_supp') },
			{ name = 'scope', label = _U('component_scope'), hash = GetHashKey('w_at_sb_krissvect_scope') },
		}
	},
	--
	['WEAPON_LVOAC'] = {    
		name = 'WEAPON_LVOAC',
		label = ('LVOAC'),
		ammo = {label = _U('ammo_rounds'), hash = GetHashKey('AMMO_RIFLE')},
		components = {
			{ name = 'clip_default', label = _U('component_clip_default'), hash = GetHashKey('w_ar_lvoac_mag1') },
			{ name = 'clip_extended', label = _U('component_clip_extended'), hash = GetHashKey('w_ar_lvoac_mag2') },
			{ name = 'scope', label = _U('component_scope'), hash = GetHashKey('w_at_ar_lvoac_scope') },
			{ name = 'suppressor', label = _U('component_suppressor'), hash = GetHashKey('w_at_ar_lvoac_supp') },
			{ name = 'grip', label = _U('component_grip'), hash = GetHashKey('w_at_ar_lvoac_grip') },
		}
	},
	--
	['WEAPON_M4A1V'] = {    
		name = 'WEAPON_M4A1V',
		label = ('M4A1V'),
		ammo = {label = _U('ammo_rounds'), hash = GetHashKey('AMMO_RIFLE')},
		components = {
			{ name = 'clip_default', label = _U('component_clip_default'), hash = GetHashKey('w_ar_m4a1v_mag1') },
			{ name = 'clip_extended', label = _U('component_clip_extended'), hash = GetHashKey('w_ar_m4a1v_mag2') },
			{ name = 'suppressor', label = _U('component_suppressor'), hash = GetHashKey('w_at_ar_m4a1v_supp') },
			{ name = 'scope', label = _U('component_scope'), hash = GetHashKey('w_at_ar_m4a1v_scope') },
			{name = 'grip',         label = _U('component_grip'),     hash = GetHashKey('w_at_ar_m4a1v_grip')},
		}
	},
	--
	['WEAPON_M4A4'] = {    
		name = 'WEAPON_M4A4',
		label = ('M4A4'),
		ammo = {label = _U('ammo_rounds'), hash = GetHashKey('AMMO_RIFLE')},
		components = {
			{ name = 'clip_default', label = _U('component_clip_default'), hash = GetHashKey('w_ar_m4a4_mag1') },
			{ name = 'clip_extended', label = _U('component_clip_extended'), hash = GetHashKey('w_ar_m4a4_mag2') },
			{ name = 'scope', label = _U('component_scope'), hash = GetHashKey('w_at_ar_m4a4_scope') },
			{ name = 'suppressor', label = _U('component_suppressor'), hash = GetHashKey('w_at_ar_m4a4_supp') },
			{ name = 'grip', label = _U('component_grip'), hash = GetHashKey('w_at_ar_m4a4_grip') },
		}
	},
	--
	['WEAPON_M4A5'] = {    
		name = 'WEAPON_M4A5',
		label = ('M4A5'),
		ammo = {label = _U('ammo_rounds'), hash = GetHashKey('AMMO_RIFLE')},
		components = {
			{ name = 'clip_default', label = _U('component_clip_default'), hash = GetHashKey('w_ar_m4a5_mag1') },
			{ name = 'clip_extended', label = _U('component_clip_extended'), hash = GetHashKey('w_ar_m4a5_mag2') },
			{ name = 'scope', label = _U('component_scope'), hash = GetHashKey('w_at_ar_m4a5_scope') },
			{ name = 'suppressor', label = _U('component_suppressor'), hash = GetHashKey('w_at_ar_m4a5_supp') },
			{ name = 'grip', label = _U('component_grip'), hash = GetHashKey('w_at_ar_m4a5_grip') },
		}
	},
	--
	['WEAPON_M4RIFLE'] = {    
        name = 'WEAPON_M4RIFLE',
        label = ('M4 CQB'),
        ammo = {label = _U('ammo_rounds'), hash = GetHashKey('AMMO_RIFLE')},
        components = {
            { name = 'clip_default', label = _U('component_clip_default'), hash = GetHashKey('w_ar_m4rifle_mag1') },
            { name = 'clip_extended', label = _U('component_clip_extended'), hash = GetHashKey('w_ar_m4rifle_mag2') },
            { name = 'scope', label = _U('component_scope'), hash = GetHashKey('w_at_ar_m4rifle_scope') },
            {name = 'suppressor',         label = _U('component_suppressor'),     hash = GetHashKey('w_at_ar_m4rifle_supp')},
            {name = 'grip',         label = _U('component_grip'),     hash = GetHashKey('w_at_ar_m4rifle_grip')},
        }
    },
	--
	['WEAPON_M16A1'] = {    
		name = 'WEAPON_M16A1',
		label = ('M16A1'),
		ammo = {label = _U('ammo_rounds'), hash = GetHashKey('AMMO_RIFLE')},
		components = {
			{ name = 'clip_default', label = _U('component_clip_default'), hash = GetHashKey('w_ar_m16a1_mag1') },
			{ name = 'clip_extended', label = _U('component_clip_extended'), hash = GetHashKey('w_ar_m16a1_mag2') },
			{ name = 'scope', label = _U('component_scope'), hash = GetHashKey('w_at_ar_m16a1_scope') },
			{ name = 'suppressor', label = _U('component_suppressor'), hash = GetHashKey('w_at_ar_m16a1_supp') },
			{ name = 'grip', label = _U('component_grip'), hash = GetHashKey('w_at_ar_m16a1_grip') },
		}
	},
	--
	['WEAPON_M133'] = {    
		name = 'WEAPON_M133',
		label = ('M133'),
		ammo = {label = _U('ammo_rounds'), hash = GetHashKey('AMMO_RIFLE')},
		components = {
			{ name = 'clip_default', label = _U('component_clip_default'), hash = GetHashKey('w_ar_m133_mag1') },
			{ name = 'clip_extended', label = _U('component_clip_extended'), hash = GetHashKey('w_ar_m133_mag2') },
			{ name = 'suppressor', label = _U('component_suppressor'), hash = GetHashKey('w_at_ar_m133_supp') },
			{ name = 'scope', label = _U('component_scope'), hash = GetHashKey('w_at_ar_m133_scope') },
			{ name = 'grip', label = _U('component_grip'), hash = GetHashKey('w_at_ar_m133_grip') },
		}
	},
	--
	['WEAPON_M203'] = {    
		name = 'WEAPON_M203',
		label = ('M203'),
		ammo = {label = _U('ammo_rounds'), hash = GetHashKey('AMMO_RIFLE')},
		components = {
			{ name = 'clip_default', label = _U('component_clip_default'), hash = GetHashKey('w_ar_m203_mag1') },
			{ name = 'clip_extended', label = _U('component_clip_extended'), hash = GetHashKey('w_ar_m203_mag2') },
			{ name = 'scope', label = _U('component_scope'), hash = GetHashKey('w_at_ar_m203_scope') },
			{ name = 'suppressor', label = _U('component_suppressor'), hash = GetHashKey('w_at_ar_m203_supp') },
			{ name = 'grip', label = _U('component_grip'), hash = GetHashKey('w_at_ar_m203_grip') },
		}
	},
	--
	['WEAPON_M320'] = {    
		name = 'WEAPON_M320',
		label = ('M320'),
		ammo = {label = _U('ammo_rounds'), hash = GetHashKey('AMMO_RIFLE')},
		components = {
			{ name = 'clip_default', label = _U('component_clip_default'), hash = GetHashKey('w_ar_m320_mag1') },
			{ name = 'clip_extended', label = _U('component_clip_extended'), hash = GetHashKey('w_ar_m320_mag2') },
			{ name = 'suppressor', label = _U('component_suppressor'), hash = GetHashKey('w_at_ar_m320_supp') },
			{ name = 'scope', label = _U('component_scope'), hash = GetHashKey('w_at_ar_m320_scope') },
			{name = 'grip',         label = _U('component_grip'),     hash = GetHashKey('w_at_ar_m320_grip')},
		}
	},
	--
	['WEAPON_MARINE'] = {    
		name = 'WEAPON_MARINE',
		label = ('MARINE'),
		ammo = {label = _U('ammo_rounds'), hash = GetHashKey('AMMO_RIFLE')},
		components = {
			{ name = 'clip_default', label = _U('component_clip_default'), hash = GetHashKey('w_ar_marine_mag1') },
			{ name = 'clip_extended', label = _U('component_clip_extended'), hash = GetHashKey('w_ar_marine_mag2') },
			{ name = 'scope', label = _U('component_scope'), hash = GetHashKey('w_at_ar_marine_scope') },
			{ name = 'suppressor', label = _U('component_suppressor'), hash = GetHashKey('w_at_ar_marine_supp') },
			{ name = 'grip', label = _U('component_grip'), hash = GetHashKey('w_at_ar_marine_grip') },
		}
	},
	--
	['WEAPON_MGXR'] = {
        ammo = {label = _U('ammo_rounds'), hash = GetHashKey('AMMO_MG')},
        name = 'WEAPON_MGXR',
        label = 'MG-XR',
        components = {
			{ name = 'clip_default', label = _U('component_clip_default'), hash = GetHashKey('w_mg_mgxr_mag1') },
        }
    },
	--
	['WEAPON_MK2S2'] = {    
		name = 'WEAPON_MK2S2',
		label = ('MK2S2'),
		ammo = {label = _U('ammo_rounds'), hash = GetHashKey('AMMO_RIFLE')},
		components = {
			{ name = 'clip_default', label = _U('component_clip_default'), hash = GetHashKey('w_ar_mk2s2_mag1') },
			{ name = 'clip_extended', label = _U('component_clip_extended'), hash = GetHashKey('w_ar_mk2s2_mag2') },
			{ name = 'suppressor', label = _U('component_suppressor'), hash = GetHashKey('w_at_ar_mk2s2_supp') },
			{ name = 'scope', label = _U('component_scope'), hash = GetHashKey('w_at_ar_mk2s2_scope') },
			{ name = 'grip', label = _U('component_grip'), hash = GetHashKey('w_at_ar_mk2s2_grip') },
		}
	},
	--
	['WEAPON_MP5A5'] = {    
		name = 'WEAPON_MP5A5',
		label = ('MP5A5'),
		ammo = {label = _U('ammo_rounds'), hash = GetHashKey('AMMO_SMG')},
		components = {
			{ name = 'clip_default', label = _U('component_clip_default'), hash = GetHashKey('w_sb_mp5a5_mag1') },
			{ name = 'clip_extended', label = _U('component_clip_extended'), hash = GetHashKey('w_sb_mp5a5_mag2') },
			{ name = 'scope', label = _U('component_scope'), hash = GetHashKey('w_at_sb_mp5a5_scope') },
			{ name = 'suppressor', label = _U('component_suppressor'), hash = GetHashKey('w_at_sb_mp5a5_supp') },
		}
	},
	--
	['WEAPON_MP5SD'] = {    
		name = 'WEAPON_MP5SD',
		label = ('MP5SD'),
		ammo = {label = _U('ammo_rounds'), hash = GetHashKey('AMMO_SMG')},
		components = {
			{ name = 'clip_default', label = _U('component_clip_default'), hash = GetHashKey('w_sb_mp5sd_mag1') },
			{ name = 'clip_extended', label = _U('component_clip_extended'), hash = GetHashKey('w_sb_mp5sd_mag2') },
			{ name = 'scope', label = _U('component_scope'), hash = GetHashKey('w_at_sb_mp5sd_scope') },
			{ name = 'suppressor', label = _U('component_suppressor'), hash = GetHashKey('w_at_sb_mp5sd_supp') },
		}
	},
	--
	['WEAPON_MP7X'] = {    
		name = 'WEAPON_MP7X',
		label = ('MP7X'),
		ammo = {label = _U('ammo_rounds'), hash = GetHashKey('AMMO_SMG')},
		components = {
			{ name = 'clip_default', label = _U('component_clip_default'), hash = GetHashKey('w_sb_mp7x_mag1') },
			{ name = 'clip_extended', label = _U('component_clip_extended'), hash = GetHashKey('w_sb_mp7x_mag2') },
			{ name = 'suppressor', label = _U('component_suppressor'), hash = GetHashKey('w_at_sb_mp7x_supp') },
			{ name = 'scope', label = _U('component_scope'), hash = GetHashKey('w_at_sb_mp7x_scope') },
		}
	},
	--
	['WEAPON_NEVA'] = {
		name = 'WEAPON_NEVA',
		label = ('NEVA'),
		ammo = {label = _U('ammo_rounds'), hash = GetHashKey('AMMO_RIFLE')},
		components = {
			{ name = 'clip_default', label = _U('component_clip_default'), hash = GetHashKey('w_ar_neva_mag1') },
			{ name = 'clip_extended', label = _U('component_clip_extended'), hash = GetHashKey('w_ar_neva_mag2') },
			{ name = 'scope', label = _U('component_scope'), hash = GetHashKey('w_at_ar_neva_scope') },
			{ name = 'suppressor', label = _U('component_suppressor'), hash = GetHashKey('w_at_ar_neva_supp') },
			{ name = 'grip', label = _U('component_grip'), hash = GetHashKey('w_at_ar_neva_grip') },
		}
	},
	--
	['WEAPON_OGA'] = {    
		name = 'WEAPON_OGA',
		label = ('M4 OGA'),
		ammo = {label = _U('ammo_rounds'), hash = GetHashKey('AMMO_RIFLE')},
		components = {
			{ name = 'clip_default', label = _U('component_clip_default'), hash = GetHashKey('w_ar_oga_mag1') },
			{ name = 'clip_extended', label = _U('component_clip_extended'), hash = GetHashKey('w_ar_oga_mag2') },
			{ name = 'suppressor', label = _U('component_suppressor'), hash = GetHashKey('w_at_ar_oga_supp') },
			{ name = 'scope', label = _U('component_scope'), hash = GetHashKey('w_at_ar_oga_scope') },
			{ name = 'grip', label = _U('component_grip'), hash = GetHashKey('w_at_ar_oga_grip') },
		}
	},
	--
	['WEAPON_RPK'] = {    
		name = 'WEAPON_RPK',
		label = ('RPK'),
		ammo = {label = _U('ammo_rounds'), hash = GetHashKey('AMMO_RIFLE')},
		components = {
			{ name = 'clip_default', label = _U('component_clip_default'), hash = GetHashKey('w_ar_rpk_mag1') },
			{ name = 'clip_extended', label = _U('component_clip_extended'), hash = GetHashKey('w_ar_rpk_mag2') },
			{ name = 'scope', label = _U('component_scope'), hash = GetHashKey('w_at_ar_rpk_scope') },
			{ name = 'suppressor', label = _U('component_suppressor'), hash = GetHashKey('w_at_ar_rpk_supp') },
			{ name = 'grip', label = _U('component_grip'), hash = GetHashKey('w_at_ar_rpk_grip') },
		}
	},
	--
	['WEAPON_SCARMK17'] = {    
		name = 'WEAPON_SCARMK17',
		label = ('SCARMK17'),
		ammo = {label = _U('ammo_rounds'), hash = GetHashKey('AMMO_RIFLE')},
		components = {
			{ name = 'clip_default', label = _U('component_clip_default'), hash = GetHashKey('w_ar_scarmk17_mag1') },
			{ name = 'clip_extended', label = _U('component_clip_extended'), hash = GetHashKey('w_ar_scarmk17_mag2') },
			{ name = 'scope', label = _U('component_scope'), hash = GetHashKey('w_at_ar_scarmk17_scope') },
			{ name = 'suppressor', label = _U('component_suppressor'), hash = GetHashKey('w_at_ar_scarmk17_supp') },
			{ name = 'grip', label = _U('component_grip'), hash = GetHashKey('w_at_ar_scarmk17_grip') },
		}
	},
	--
	['WEAPON_SCARSC'] = {
        name = 'WEAPON_SCARSC',
        label = ('SCARSC'),
        ammo = {label = _U('ammo_rounds'), hash = GetHashKey('AMMO_RIFLE')},
        components = {
            { name = 'clip_default', label = _U('component_clip_default'), hash = GetHashKey('w_ar_scarsc_mag1') },
            { name = 'clip_extended', label = _U('component_clip_extended'), hash = GetHashKey('w_ar_scarsc_mag2') },
            { name = 'scope', label = _U('component_scope'), hash = GetHashKey('w_at_ar_scarsc_scope') },
            { name = 'suppressor', label = _U('component_suppressor'), hash = GetHashKey('w_at_ar_scarsc_supp') },
            { name = 'grip', label = _U('component_grip'), hash = GetHashKey('w_at_ar_scarsc_grip') },
        }
    },
    --
	['WEAPON_SOBMOD'] = {    
		name = 'WEAPON_SOBMOD',
		label = ('SOBMOD'),
		ammo = {label = _U('ammo_rounds'), hash = GetHashKey('AMMO_RIFLE')},
		components = {
			{ name = 'clip_default', label = _U('component_clip_default'), hash = GetHashKey('w_ar_sobmod_mag1') },
			{ name = 'clip_extended', label = _U('component_clip_extended'), hash = GetHashKey('w_ar_sobmod_mag2') },
			{ name = 'clip_drum', label = _U('component_clip_drum'), hash = GetHashKey('w_ar_sobmod_mag3')},
			{ name = 'scope', label = _U('component_scope'), hash = GetHashKey('w_at_ar_sobmod_scope') },
			{ name = 'suppressor',         label = _U('component_suppressor'),     hash = GetHashKey('w_at_ar_sobmod_supp')},
			{ name = 'grip',         label = _U('component_grip'),     hash = GetHashKey('w_at_ar_sobmod_grip')},
		}
	},
	--
	['WEAPON_SUNDA'] = {    
		name = 'WEAPON_SUNDA',
		label = ('SUNDA'),
		ammo = {label = _U('ammo_rounds'), hash = GetHashKey('AMMO_RIFLE')},
		components = {
			{ name = 'clip_default', label = _U('component_clip_default'), hash = GetHashKey('w_ar_sunda_mag1') },
			{ name = 'clip_extended', label = _U('component_clip_extended'), hash = GetHashKey('w_ar_sunda_mag2') },
			{ name = 'scope', label = _U('component_scope'), hash = GetHashKey('w_at_ar_sunda_scope') },
			{ name = 'suppressor', label = _U('component_suppressor'), hash = GetHashKey('w_at_ar_sunda_supp') },
		}
	},
	--
	['WEAPON_XR2'] = {    
		name = 'WEAPON_XR2',
		label = ('XR2'),
		ammo = {label = _U('ammo_rounds'), hash = GetHashKey('AMMO_RIFLE')},
		components = {
			{ name = 'clip_default', label = _U('component_clip_default'), hash = GetHashKey('w_ar_xr2_mag1') },
			{ name = 'clip_extended', label = _U('component_clip_extended'), hash = GetHashKey('w_ar_xr2_mag2') },
			{ name = 'scope', label = _U('component_scope'), hash = GetHashKey('w_at_ar_xr2_scope') },
			{ name = 'suppressor', label = _U('component_suppressor'), hash = GetHashKey('w_at_ar_xr2_supp') },
		}
	},
	['WEAPON_BERETTA'] = {    
		name = 'WEAPON_BERETTA',
		label = ('M9 Beretta'),
		ammo = {label = _U('ammo_rounds'), hash = GetHashKey('AMMO_PISTOL')},
		components = {
			{ name = 'clip_default', label = _U('component_clip_default'), hash = GetHashKey('w_pi_beretta_mag1') },
			{ name = 'clip_extended', label = _U('component_clip_extended'), hash = GetHashKey('w_pi_beretta_mag2') },
			{ name = 'suppressor', label = _U('component_suppressor'), hash = GetHashKey('w_at_pi_beretta_supp') },
		}
	},
	--
	['WEAPON_COMP45'] = {    
		name = 'WEAPON_COMP45',
		label = ('COMP 45'),
		ammo = {label = _U('ammo_rounds'), hash = GetHashKey('AMMO_PISTOL')},
		components = {
			{ name = 'clip_default', label = _U('component_clip_default'), hash = GetHashKey('w_pi_comp45_mag1') },
			{ name = 'clip_extended', label = _U('component_clip_extended'), hash = GetHashKey('w_pi_comp45_mag2') },
			{ name = 'suppressor', label = _U('component_suppressor'), hash = GetHashKey('w_at_pi_comp45_supp') },
		}
	},
	--
	['WEAPON_P88'] = {    
		name = 'WEAPON_P88',
		label = ('P88'),
		ammo = {label = _U('ammo_rounds'), hash = GetHashKey('AMMO_PISTOL')},
		components = {
			{ name = 'clip_default', label = _U('component_clip_default'), hash = GetHashKey('w_pi_p88_mag1') },
			{ name = 'clip_extended', label = _U('component_clip_extended'), hash = GetHashKey('w_pi_p88_mag2') },
			{ name = 'suppressor', label = _U('component_suppressor'), hash = GetHashKey('w_at_pi_p88_supp') },
		}
	},
	--
	['WEAPON_CZ75'] = {    
		name = 'WEAPON_CZ75',
		label = ('CZ 75'),
		ammo = {label = _U('ammo_rounds'), hash = GetHashKey('AMMO_PISTOL')},
		components = {
			{ name = 'clip_default', label = _U('component_clip_default'), hash = GetHashKey('w_pi_cz75_mag1') },
			{ name = 'clip_extended', label = _U('component_clip_extended'), hash = GetHashKey('w_pi_cz75_mag2') },
			{ name = 'suppressor', label = _U('component_suppressor'), hash = GetHashKey('w_at_pi_cz75_supp') },
		}
	},
	--
	['WEAPON_GLOCK17'] = {    
		name = 'WEAPON_GLOCK17',
		label = ('Glock 17'),
		ammo = {label = _U('ammo_rounds'), hash = GetHashKey('AMMO_PISTOL')},
		components = {
			{ name = 'clip_default', label = _U('component_clip_default'), hash = GetHashKey('w_pi_glock17_mag1') },
			{ name = 'clip_extended', label = _U('component_clip_extended'), hash = GetHashKey('w_pi_glock17_mag2') },
			{ name = 'suppressor', label = _U('component_suppressor'), hash = GetHashKey('w_at_pi_glock17_supp') },
		}
	},
	--
	['WEAPON_M133_2'] = {    
		name = 'WEAPON_M133_2',
		label = ('M133 v2'),
		ammo = {label = _U('ammo_rounds'), hash = GetHashKey('AMMO_RIFLE')},
		components = {
			{ name = 'clip_default', label = _U('component_clip_default'), hash = GetHashKey('w_ar_m133_2_mag1') },
			{ name = 'clip_extended', label = _U('component_clip_extended'), hash = GetHashKey('w_ar_m133_2_mag2') },
			{ name = 'scope', label = _U('component_scope'), hash = GetHashKey('w_at_ar_m133_2_scope') },
			{ name = 'suppressor', label = _U('component_suppressor'), hash = GetHashKey('w_at_ar_m133_2_supp') },
			{ name = 'grip', label = _U('component_grip'), hash = GetHashKey('w_at_ar_m133_2_grip') },
		}
	},
	--
	['WEAPON_MC4'] = {    
		name = 'WEAPON_MC4',
		label = ('MC-4'),
		ammo = {label = _U('ammo_rounds'), hash = GetHashKey('AMMO_RIFLE')},
		components = {
			{ name = 'clip_default', label = _U('component_clip_default'), hash = GetHashKey('w_ar_mc4_mag1') },
			{ name = 'clip_extended', label = _U('component_clip_extended'), hash = GetHashKey('w_ar_mc4_mag2') },
			{ name = 'scope', label = _U('component_scope'), hash = GetHashKey('w_at_ar_mc4_scope') },
			{ name = 'suppressor', label = _U('component_suppressor'), hash = GetHashKey('w_at_ar_mc4_supp') },
			{ name = 'grip', label = _U('component_grip'), hash = GetHashKey('w_at_ar_mc4_grip') },
		}
	},
	--
	['WEAPON_FAR'] = {    
		name = 'WEAPON_FAR',
		label = ('FAR'),
		ammo = {label = _U('ammo_rounds'), hash = GetHashKey('AMMO_RIFLE')},
		components = {
			{ name = 'clip_default', label = _U('component_clip_default'), hash = GetHashKey('w_ar_far_mag1') },
			{ name = 'clip_extended', label = _U('component_clip_extended'), hash = GetHashKey('w_ar_far_mag2') },
			{ name = 'scope', label = _U('component_scope'), hash = GetHashKey('w_at_ar_far_scope') },
			{ name = 'suppressor', label = _U('component_suppressor'), hash = GetHashKey('w_at_ar_far_supp') },
			{ name = 'grip', label = _U('component_grip'), hash = GetHashKey('w_at_ar_far_grip') },
		}
	},
	--
	['WEAPON_AR15_BONE'] = {
        name = 'WEAPON_AR15_BONE',
        label = ('AR15 BONE'),
        ammo = {label = _U('ammo_rounds'), hash = GetHashKey('AMMO_RIFLE')},
        components = {
            { name = 'clip_default', label = _U('component_clip_default'), hash = GetHashKey('w_ar_ar15_bone_mag1') },
            { name = 'clip_extended', label = _U('component_clip_extended'), hash = GetHashKey('w_ar_ar15_bone_mag2') },
        }
	},
	--
	['WEAPON_UMP45'] = {
		name = 'WEAPON_UMP45',
		label = ('UMP45'),
		ammo = {label = _U('ammo_rounds'), hash = GetHashKey('AMMO_SMG')},
		components = {
			{ name = 'clip_default', label = _U('component_clip_default'), hash = GetHashKey('w_sb_ump45_mag1') },
			{ name = 'clip_extended', label = _U('component_clip_extended'), hash = GetHashKey('w_sb_ump45_mag2') },
			{ name = 'scope', label = _U('component_scope'), hash = GetHashKey('w_at_sb_ump45_scope') },
			{ name = 'suppressor',         label = _U('component_suppressor'),     hash = GetHashKey('w_at_sb_ump45_supp')},
			{ name = 'grip',         label = _U('component_grip'),     hash = GetHashKey('w_at_sb_ump45_grip')},

		}
	},
	--
	['WEAPON_SS2_2'] = {
        name = 'WEAPON_SS2_2',
        label = ('SS2 v2'),
        ammo = {label = _U('ammo_rounds'), hash = GetHashKey('AMMO_RIFLE')},
        components = {
            { name = 'clip_default', label = _U('component_clip_default'), hash = GetHashKey('w_ar_ss2_2_mag1') },
            { name = 'clip_extended', label = _U('component_clip_extended'), hash = GetHashKey('w_ar_ss2_2_mag2') },
            { name = 'scope', label = _U('component_scope'), hash = GetHashKey('w_at_ar_gys_scope') },
            {name = 'suppressor',         label = _U('component_suppressor'),     hash = GetHashKey('w_at_ar_ss2_2_supp')},
            {name = 'grip',         label = _U('component_grip'),     hash = GetHashKey('w_at_ar_ss2_2_grip')},
        }
    },
	--
	['WEAPON_ICEDRAKE'] = {
        name = 'WEAPON_ICEDRAKE',
        label = ('ICEDRAKE'),
        ammo = {label = _U('ammo_rounds'), hash = GetHashKey('AMMO_RIFLE')},
        components = {
            { name = 'clip_default', label = _U('component_clip_default'), hash = GetHashKey('w_ar_icedrake_mag1') },
            { name = 'clip_extended', label = _U('component_clip_extended'), hash = GetHashKey('w_ar_icedrake_mag2') },
            { name = 'scope', label = _U('component_scope'), hash = GetHashKey('w_at_ar_gys_scope') },
            {name = 'suppressor',         label = _U('component_suppressor'),     hash = GetHashKey('w_at_ar_icedrake_supp')},
            {name = 'grip',         label = _U('component_grip'),     hash = GetHashKey('w_at_ar_icedrake_grip')},
        }
    },
	--
	['WEAPON_VA030'] = {
		name = 'WEAPON_VA030',
		label = ('VA-030'),
		ammo = {label = _U('ammo_rounds'), hash = GetHashKey('AMMO_RIFLE')},
		components = {
			{ name = 'clip_default', label = _U('component_clip_default'), hash = GetHashKey('w_ar_va030_mag1') },
			{ name = 'clip_extended', label = _U('component_clip_extended'), hash = GetHashKey('w_ar_va030_mag2') },
			{ name = 'scope', label = _U('component_scope'), hash = GetHashKey('w_at_ar_va030_scope') },
			{ name = 'suppressor',         label = _U('component_suppressor'),     hash = GetHashKey('w_at_ar_va030_supp')},

		}
	},
	--
	['WEAPON_R99'] = {
        name = 'WEAPON_R99',
        label = ('R99'),
        ammo = {label = _U('ammo_rounds'), hash = GetHashKey('AMMO_SMG')},
        components = {
            { name = 'clip_default', label = _U('component_clip_default'), hash = GetHashKey('w_sb_r99_mag1') },
            { name = 'clip_extended', label = _U('component_clip_extended'), hash = GetHashKey('w_sb_r99_mag2') },
        }
    },
	--
	['WEAPON_SM237'] = {
		name = 'WEAPON_SM237',
		label = ('SM-237'),
		ammo = {label = _U('ammo_rounds'), hash = GetHashKey('AMMO_RIFLE')},
		components = {
			{ name = 'clip_default', label = _U('component_clip_default'), hash = GetHashKey('w_ar_sm237_mag1') },
			{ name = 'clip_extended', label = _U('component_clip_extended'), hash = GetHashKey('w_ar_sm237_mag2') },
			{ name = 'scope', label = _U('component_scope'), hash = GetHashKey('w_at_ar_sm237_scope') },
			{ name = 'suppressor',         label = _U('component_suppressor'),     hash = GetHashKey('w_at_ar_sm237_supp')},
			{ name = 'grip',         label = _U('component_grip'),     hash = GetHashKey('w_at_ar_sm237_grip')},
		}
	},
	--
	['WEAPON_ART64'] = {
		name = 'WEAPON_ART64',
		label = ('AR-T64'),
		ammo = {label = _U('ammo_rounds'), hash = GetHashKey('AMMO_RIFLE')},
		components = {
			{ name = 'clip_default', label = _U('component_clip_default'), hash = GetHashKey('w_ar_art64_mag1') },
			{ name = 'clip_extended', label = _U('component_clip_extended'), hash = GetHashKey('w_ar_art64_mag2') },
			{ name = 'scope', label = _U('component_scope'), hash = GetHashKey('w_at_ar_art64_scope') },
			{ name = 'suppressor',         label = _U('component_suppressor'),     hash = GetHashKey('w_at_ar_art64_supp')},
			{ name = 'grip',         label = _U('component_grip'),     hash = GetHashKey('w_at_ar_art64_grip')},
		}
	},
	--
	['WEAPON_AR727'] = {
        name = 'WEAPON_AR727',
        label = ('AR727'),
        ammo = {label = _U('ammo_rounds'), hash = GetHashKey('AMMO_RIFLE')},
        components = {
            { name = 'clip_default', label = _U('component_clip_default'), hash = GetHashKey('w_ar_ar727_mag1') },
            { name = 'clip_extended', label = _U('component_clip_extended'), hash = GetHashKey('w_ar_ar727_mag2') },
            { name = 'scope', label = _U('component_scope'), hash = GetHashKey('w_at_ar_gys_scope') },
            {name = 'suppressor',         label = _U('component_suppressor'),     hash = GetHashKey('w_at_ar_ar727_supp')},
            {name = 'grip',         label = _U('component_grip'),     hash = GetHashKey('w_at_ar_ar727_grip')},
        }
    },
	--
    ['WEAPON_SB181'] = {
        name = 'WEAPON_SB181',
        label = ('SB181'),
        ammo = {label = _U('ammo_rounds'), hash = GetHashKey('AMMO_SMG')},
        components = {
            { name = 'clip_default', label = _U('component_clip_default'), hash = GetHashKey('w_sb_sb181_mag1') },
            { name = 'clip_extended', label = _U('component_clip_extended'), hash = GetHashKey('w_sb_sb181_mag2') },
            { name = 'scope', label = _U('component_scope'), hash = GetHashKey('w_at_sb_sb181_scope') },
            {name = 'suppressor',         label = _U('component_suppressor'),     hash = GetHashKey('w_at_sb_sb181_supp')},
        }
    },
	--
	['WEAPON_ARMA1'] = {
        name = 'WEAPON_ARMA1',
        label = ('ARMA1'),
        ammo = {label = _U('ammo_rounds'), hash = GetHashKey('AMMO_RIFLE')},
        components = {
            { name = 'clip_default', label = _U('component_clip_default'), hash = GetHashKey('w_ar_arma1_mag1') },
            { name = 'clip_extended', label = _U('component_clip_extended'), hash = GetHashKey('w_ar_arma1_mag2') },
            { name = 'scope', label = _U('component_scope'), hash = GetHashKey('w_at_ar_arma1_scope') },
            {name = 'suppressor',         label = _U('component_suppressor'),     hash = GetHashKey('w_at_ar_arma1_supp')},
            {name = 'grip',         label = _U('component_grip'),     hash = GetHashKey('w_at_ar_arma1_grip')},
        }
    },
    --
	['WEAPON_SMG1311'] = {
        name = 'WEAPON_SMG1311',
        label = ('SMG 1311'),
        ammo = {label = _U('ammo_rounds'), hash = GetHashKey('AMMO_SMG')},
        components = {
            { name = 'clip_default', label = _U('component_clip_default'), hash = GetHashKey('w_sb_smg1311_mag1') },
            { name = 'clip_extended', label = _U('component_clip_extended'), hash = GetHashKey('w_sb_smg1311_mag2') },
            { name = 'scope', label = _U('component_scope'), hash = GetHashKey('w_at_sb_smg1311_scope') },
            {name = 'suppressor',         label = _U('component_suppressor'),     hash = GetHashKey('w_at_sb_smg1311_supp')},
        }
    },
	--
	['WEAPON_RAYCARBINE'] = {
		name = 'WEAPON_RAYCARBINE',
		label = ('RAYCARBINE'),
		ammo = {label = _U('ammo_rounds'), hash = GetHashKey('AMMO_MG')},
		components = {
		}
	},
	--
	['WEAPON_RAYMINIGUN'] = {
		name = 'WEAPON_RAYMINIGUN',
		label = ('RAYMINIGUN'),
		ammo = {label = _U('ammo_rounds'), hash = GetHashKey('AMMO_MINIGUN')},
		components = {
			{ name = 'clip_default', label = _U('component_clip_default'), hash = GetHashKey('COMPONENT_MINIGUN_CLIP_01') },
		}
	},
	--
	-- ['WEAPON_RAYPISTOL'] = {
	-- 	name = 'WEAPON_RAYPISTOL',
	-- 	label = ('RAYPISTOL'),
	-- 	ammo = {label = _U('ammo_rounds'), hash = GetHashKey('AMMO_RAYPISTOL')},
	-- 	components = {
	-- 		{name = 'luxary_finish', label = _U('component_luxary_finish'), hash = GetHashKey('COMPONENT_RAYPISTOL_VARMOD_XMAS18')}
	-- 	}
	-- },
	--
	['WEAPON_M90S'] =  {
        name = 'WEAPON_M90S',
        label = ('M90S'),
        ammo = {label = _U('ammo_rounds'), hash = GetHashKey('AMMO_SHOTGUN')},
        components = {
            { name = 'clip', label = _U('component_clip_default'), hash = GetHashKey('w_sg_m90s_mag1') },
        }
    },
    --
    ['WEAPON_NANITE'] = {
        name = 'WEAPON_NANITE',
        label = ('NANITE'),
        ammo = {label = _U('ammo_rounds'), hash = GetHashKey('AMMO_RIFLE')},
        components = {
            { name = 'clip_default', label = _U('component_clip_default'), hash = GetHashKey('w_ar_nanite_mag1') },
            { name = 'clip_extended', label = _U('component_clip_extended'), hash = GetHashKey('w_ar_nanite_mag2') },
            { name = 'scope', label = _U('component_scope'), hash = GetHashKey('w_at_ar_nanite_scope') },
            {name = 'suppressor',         label = _U('component_suppressor'),     hash = GetHashKey('w_at_ar_nanite_supp')},
            {name = 'grip',         label = _U('component_grip'),     hash = GetHashKey('w_at_ar_nanite_grip')},
        }
    },
	--
	['WEAPON_MUSICFEST'] = {    
		name = 'WEAPON_MUSICFEST',
		label = ('MUSICFEST'),
		ammo = {label = _U('ammo_rounds'), hash = GetHashKey('AMMO_RIFLE')},
		components = {
			{ name = 'clip_default', label = _U('component_clip_default'), hash = GetHashKey('w_ar_musicfest_mag1') },
			{ name = 'clip_extended', label = _U('component_clip_extended'), hash = GetHashKey('w_ar_musicfest_mag2') },
		}
	},
	--
	['WEAPON_SSR56'] = {
        name = 'WEAPON_SSR56',
        label = ('SSR56'),
        ammo = {label = _U('ammo_rounds'), hash = GetHashKey('AMMO_RIFLE')},
        components = {
            { name = 'clip_default', label = _U('component_clip_default'), hash = GetHashKey('w_ar_ssr56_mag1') },
            { name = 'clip_extended', label = _U('component_clip_extended'), hash = GetHashKey('w_ar_ssr56_mag2') },
            { name = 'scope', label = _U('component_scope'), hash = GetHashKey('w_at_ar_ssr56_scope') },
            {name = 'suppressor',         label = _U('component_suppressor'),     hash = GetHashKey('w_at_ar_ssr56_supp')},
            {name = 'grip',         label = _U('component_grip'),     hash = GetHashKey('w_at_ar_ssr56_grip')},
        }
    },
    --
    ['WEAPON_SCIFW'] = {
        name = 'WEAPON_SCIFW',
        label = ('SCIFW'),
        ammo = {label = _U('ammo_rounds'), hash = GetHashKey('AMMO_RIFLE')},
        components = {
            { name = 'clip_default', label = _U('component_clip_default'), hash = GetHashKey('w_ar_scifw_mag1') },
            { name = 'clip_extended', label = _U('component_clip_extended'), hash = GetHashKey('w_ar_scifw_mag2') },
            { name = 'scope', label = _U('component_scope'), hash = GetHashKey('w_at_ar_scifw_scope') },
            {name = 'suppressor',         label = _U('component_suppressor'),     hash = GetHashKey('w_at_ar_scifw_supp')},
            {name = 'grip',         label = _U('component_grip'),     hash = GetHashKey('w_at_ar_scifw_grip')},
        }
    },
    --
    ['WEAPON_KILLSMG'] = {
        name = 'WEAPON_KILLSMG',
        label = ('KILLSMG'),
        ammo = {label = _U('ammo_rounds'), hash = GetHashKey('AMMO_SMG')},
        components = {
            { name = 'clip_default', label = _U('component_clip_default'), hash = GetHashKey('w_sb_killsmg_mag1') },
        }
    },
    --
    ['WEAPON_KILLCARBINE'] = {
        name = 'WEAPON_KILLCARBINE',
        label = ('KILLCARBINE'),
        ammo = {label = _U('ammo_rounds'), hash = GetHashKey('AMMO_RIFLE')},
        components = {
            { name = 'clip_default', label = _U('component_clip_default'), hash = GetHashKey('w_sb_killcarbine_mag1') },
        }
    },
    --
    ['WEAPON_DCS'] = {
        name = 'WEAPON_DCS',
        label = ('DCS'),
        ammo = {label = _U('ammo_rounds'), hash = GetHashKey('AMMO_SHOTGUN')},
        components = {
            { name = 'clip', label = _U('component_clip_default'), hash = GetHashKey('w_sg_dcs_mag1') },
            { name = 'suppressor',         label = _U('component_suppressor'),     hash = GetHashKey('w_at_sg_dcs_supp')},
			{ name = 'grip',         label = _U('component_grip'),     hash = GetHashKey('w_at_sg_dcs_grip')},
        }
    },
    --
	['WEAPON_OWSHOTGUN'] = {
        name = 'WEAPON_OWSHOTGUN',
        label = ('OWSHOTGUN'),
        ammo = {label = _U('ammo_rounds'), hash = GetHashKey('AMMO_SHOTGUN')},
        components = {
        }
    },
    --
    ['WEAPON_PEACEKEEPER'] = {
        name = 'WEAPON_PEACEKEEPER',
        label = ('PEACEKEEPER'),
        ammo = {label = _U('ammo_rounds'), hash = GetHashKey('AMMO_SHOTGUN')},
        components = {
        }
    },
	--
	['WEAPON_INTERCEPTOR'] = {
        name = 'WEAPON_INTERCEPTOR',
        label = ('INTERCEPTOR'),
        ammo = {label = _U('ammo_rounds'), hash = GetHashKey('AMMO_RIFLE')},
        components = {
            { name = 'clip_default', label = _U('component_clip_default'), hash = GetHashKey('w_ar_interceptor_mag1') },
            { name = 'clip_extended', label = _U('component_clip_extended'), hash = GetHashKey('w_ar_interceptor_mag2') },
        }
    },
    --
    ['WEAPON_ARCUS'] = {
        name = 'WEAPON_ARCUS',
        label = ('ARCUS'),
        ammo = {label = _U('ammo_rounds'), hash = GetHashKey('AMMO_RIFLE')},
        components = {
            { name = 'clip_default', label = _U('component_clip_default'), hash = GetHashKey('w_ar_arcus_mag1') },
            { name = 'clip_extended', label = _U('component_clip_extended'), hash = GetHashKey('w_ar_arcus_mag2') },
        }
    },
	--
	['WEAPON_CYBERAK'] = {
        name = 'WEAPON_CYBERAK',
        label = ('CYBERAK'),
        ammo = {label = _U('ammo_rounds'), hash = GetHashKey('AMMO_RIFLE')},
        components = {
            { name = 'clip_default', label = _U('component_clip_default'), hash = GetHashKey('w_ar_cyberak_mag1') },
            { name = 'clip_extended', label = _U('component_clip_extended'), hash = GetHashKey('w_ar_cyberak_mag2') },
        }
    },
    --
    ['WEAPON_CYBERAK_2'] = {
        name = 'WEAPON_CYBERAK_2',
        label = ('CYBERAK v2'),
        ammo = {label = _U('ammo_rounds'), hash = GetHashKey('AMMO_RIFLE')},
        components = {
            { name = 'clip_default', label = _U('component_clip_default'), hash = GetHashKey('w_ar_cyberak_2_mag1') },
            { name = 'clip_extended', label = _U('component_clip_extended'), hash = GetHashKey('w_ar_cyberak_2_mag2') },
        }
    },
    --
    ['WEAPON_CYBERCARBINE'] = {
        name = 'WEAPON_CYBERCARBINE',
        label = ('CYBERCARBINE'),
        ammo = {label = _U('ammo_rounds'), hash = GetHashKey('AMMO_RIFLE')},
        components = {
            { name = 'clip_default', label = _U('component_clip_default'), hash = GetHashKey('w_ar_cybercarbine_mag1') },
            { name = 'clip_extended', label = _U('component_clip_extended'), hash = GetHashKey('w_ar_cybercarbine_mag2') },
        }
    },
    --
    ['WEAPON_CYBERCARBINE_2'] = {
        name = 'WEAPON_CYBERCARBINE_2',
        label = ('CYBERCARBINE v2'),
        ammo = {label = _U('ammo_rounds'), hash = GetHashKey('AMMO_RIFLE')},
        components = {
            { name = 'clip_default', label = _U('component_clip_default'), hash = GetHashKey('w_ar_cybercarbine_2_mag1') },
            { name = 'clip_extended', label = _U('component_clip_extended'), hash = GetHashKey('w_ar_cybercarbine_2_mag2') },
        }
    },
    --
    ['WEAPON_CYBERMICROSMG'] = {
        name = 'WEAPON_CYBERMICROSMG',
        label = ('CYBERMICROSMG'),
        ammo = {label = _U('ammo_rounds'), hash = GetHashKey('AMMO_SMG')},
        components = {
            { name = 'clip_default', label = _U('component_clip_default'), hash = GetHashKey('w_sb_cybermicrosmg_mag1') },
            { name = 'clip_extended', label = _U('component_clip_extended'), hash = GetHashKey('w_sb_cybermicrosmg_mag2') },
        }
    },
    --
    ['WEAPON_CYBERP90'] = {
        name = 'WEAPON_CYBERP90',
        label = ('CYBERP90'),
        ammo = {label = _U('ammo_rounds'), hash = GetHashKey('AMMO_RIFLE')},
        components = {
            { name = 'clip_default', label = _U('component_clip_default'), hash = GetHashKey('w_ar_cyberp90_mag1') },
            { name = 'clip_extended', label = _U('component_clip_extended'), hash = GetHashKey('w_ar_cyberp90_mag2') },
        }
    },
    --
    ['WEAPON_CYBERPISTOL'] = {
        name = 'WEAPON_CYBERPISTOL',
        label = ('CYBERPISTOL'),
        ammo = {label = _U('ammo_rounds'), hash = GetHashKey('AMMO_RIFLE')},
        components = {
            { name = 'clip_default', label = _U('component_clip_default'), hash = GetHashKey('w_ar_cyberpistol_mag1') },
            { name = 'clip_extended', label = _U('component_clip_extended'), hash = GetHashKey('w_ar_cyberpistol_mag2') },
        }
    },
    --
    ['WEAPON_CYBERPUMP'] = {
        name = 'WEAPON_CYBERPUMP',
        label = ('CYBERPUMP'),
        ammo = {label = _U('ammo_rounds'), hash = GetHashKey('AMMO_SHOTGUN')},
        components = {
        }
    },
    --
    ['WEAPON_CYBERSMG'] = {
        name = 'WEAPON_CYBERSMG',
        label = ('CYBERSMG'),
        ammo = {label = _U('ammo_rounds'), hash = GetHashKey('AMMO_SMG')},
        components = {
            { name = 'clip_default', label = _U('component_clip_default'), hash = GetHashKey('w_sb_cybersmg_mag1') },
            { name = 'clip_extended', label = _U('component_clip_extended'), hash = GetHashKey('w_sb_cybersmg_mag2') },
        }
    },
    --
    ['WEAPON_CYBERSMG_2'] = {
        name = 'WEAPON_CYBERSMG_2',
        label = ('CYBERSMG v2'),
        ammo = {label = _U('ammo_rounds'), hash = GetHashKey('AMMO_SMG')},
        components = {
            { name = 'clip_default', label = _U('component_clip_default'), hash = GetHashKey('w_sb_cybersmg_2_mag1') },
            { name = 'clip_extended', label = _U('component_clip_extended'), hash = GetHashKey('w_sb_cybersmg_2_mag2') },
        }
    },
    --
    ['WEAPON_CYBERSNIPER'] = {
        name = 'WEAPON_CYBERSNIPER',
        label = ('CYBERSNIPER'),
        ammo = {label = _U('ammo_rounds'), hash = GetHashKey('AMMO_SNIPER')},
        components = {
            { name = 'clip_default', label = _U('component_clip_default'), hash = GetHashKey('w_sr_cybersniper_mag1') },
        }
    },
    --
    ['WEAPON_CYBERSNIPER_2'] = {
        name = 'WEAPON_CYBERSNIPER_2',
        label = ('CYBERSNIPER v2'),
        ammo = {label = _U('ammo_rounds'), hash = GetHashKey('AMMO_SNIPER')},
        components = {
            { name = 'clip_default', label = _U('component_clip_default'), hash = GetHashKey('w_sr_cybersniper_2_mag1') },
        }
    },
    --
	['WEAPON_CYBERAK_3'] = {
        name = 'WEAPON_CYBERAK_3',
        label = ('CYBERAK_3'),
        ammo = {label = _U('ammo_rounds'), hash = GetHashKey('AMMO_RIFLE')},
        components = {
            { name = 'clip_default', label = _U('component_clip_default'), hash = GetHashKey('w_ar_cyberak_3_mag1') },
            { name = 'clip_extended', label = _U('component_clip_extended'), hash = GetHashKey('w_ar_cyberak_3_mag2') },
        }
    },
    --
    ['WEAPON_CYBERPDW'] = {
        name = 'WEAPON_CYBERPDW',
        label = ('CYBERPDW'),
        ammo = {label = _U('ammo_rounds'), hash = GetHashKey('AMMO_SMG')},
        components = {
            { name = 'clip_default', label = _U('component_clip_default'), hash = GetHashKey('w_sb_cyberpdw_mag1') },
            { name = 'clip_extended', label = _U('component_clip_extended'), hash = GetHashKey('w_sb_cyberpdw_mag2') },
        }
    },
    --
	['WEAPON_CYBERTOMMYGUN'] = {
        name = 'WEAPON_CYBERTOMMYGUN',
        label = ('CYBERTOMMYGUN'),
        ammo = {label = _U('ammo_rounds'), hash = GetHashKey('AMMO_SMG')},
        components = {
            { name = 'clip_default', label = _U('component_clip_default'), hash = GetHashKey('w_sb_cybertommygun_mag1') },
            { name = 'clip_extended', label = _U('component_clip_extended'), hash = GetHashKey('w_sb_cybertommygun_mag2') },
        }
    },
    --
	['WEAPON_KALASH'] = {
        name = 'WEAPON_KALASH',
        label = ('KALASH'),
        ammo = {label = _U('ammo_rounds'), hash = GetHashKey('AMMO_RIFLE')},
        components = {
            { name = 'clip_default', label = _U('component_clip_default'), hash = GetHashKey('w_ar_kalash_mag1') },
            { name = 'clip_extended', label = _U('component_clip_extended'), hash = GetHashKey('w_ar_kalash_mag2') },
            { name = 'scope', label = _U('component_scope'), hash = GetHashKey('w_at_ar_kalash_scope') },
            { name = 'suppressor',         label = _U('component_suppressor'),     hash = GetHashKey('w_at_ar_kalash_supp')},
            { name = 'grip',         label = _U('component_grip'),     hash = GetHashKey('w_at_ar_kalash_grip')},
        }
    },
    --
    ['WEAPON_PDW_OG'] = {
        name = 'WEAPON_PDW_OG',
        label = ('PDW OG'),
        ammo = {label = _U('ammo_rounds'), hash = GetHashKey('AMMO_SMG')},
        components = {
            { name = 'clip_default', label = _U('component_clip_default'), hash = GetHashKey('w_sb_pdw_og_mag1') },
            { name = 'clip_extended', label = _U('component_clip_extended'), hash = GetHashKey('w_sb_pdw_og_mag2') },
            { name = 'scope', label = _U('component_scope'), hash = GetHashKey('w_at_sb_pdw_og_scope') },
            { name = 'suppressor',         label = _U('component_suppressor'),     hash = GetHashKey('w_at_sb_pdw_og_supp')},
            { name = 'grip',         label = _U('component_grip'),     hash = GetHashKey('w_at_sb_pdw_og_grip')},
        }
    },
    --
    ['WEAPON_CARBINE_OG'] = {
        name = 'WEAPON_CARBINE_OG',
        label = ('CARBINE OG'),
        ammo = {label = _U('ammo_rounds'), hash = GetHashKey('AMMO_RIFLE')},
        components = {
            { name = 'clip_default', label = _U('component_clip_default'), hash = GetHashKey('w_ar_carbine_og_mag1') },
            { name = 'clip_extended', label = _U('component_clip_extended'), hash = GetHashKey('w_ar_carbine_og_mag2') },
            { name = 'scope', label = _U('component_scope'), hash = GetHashKey('w_at_ar_carbine_og_scope') },
            { name = 'suppressor',         label = _U('component_suppressor'),     hash = GetHashKey('w_at_ar_carbine_og_supp')},
        }
    },
    --
    ['WEAPON_SAIGA_OG'] = {
        name = 'WEAPON_SAIGA_OG',
        label = ('SAIGA OG'),
        ammo = {label = _U('ammo_rounds'), hash = GetHashKey('AMMO_SMG')},
        components = {
            { name = 'clip_default', label = _U('component_clip_default'), hash = GetHashKey('w_sb_saiga_og_mag1') },
            { name = 'clip_extended', label = _U('component_clip_extended'), hash = GetHashKey('w_sb_saiga_og_mag2') },
            { name = 'scope', label = _U('component_scope'), hash = GetHashKey('w_at_sb_saiga_og_scope') },
            { name = 'suppressor',         label = _U('component_suppressor'),     hash = GetHashKey('w_at_sb_saiga_og_supp')},
        }
    },
    --
	['WEAPON_DEVIL_CARBINE'] = {
        name = 'WEAPON_DEVIL_CARBINE',
        label = ('DEVIL CARBINE'),
        ammo = {label = _U('ammo_rounds'), hash = GetHashKey('AMMO_RIFLE')},
        components = {
            { name = 'clip_default', label = _U('component_clip_default'), hash = GetHashKey('w_ar_devil_carbine_mag1') },
            { name = 'clip_extended', label = _U('component_clip_extended'), hash = GetHashKey('w_ar_devil_carbine_mag2') },
            {name = 'suppressor',         label = _U('component_suppressor'),     hash = GetHashKey('w_at_ar_devil_carbine_supp')},
        }
    },
    --
    ['WEAPON_DEVIL_SMG'] = {
        name = 'WEAPON_DEVIL_SMG',
        label = ('DEVIL SMG'),
        ammo = {label = _U('ammo_rounds'), hash = GetHashKey('AMMO_SMG')},
        components = {
            { name = 'clip_default', label = _U('component_clip_default'), hash = GetHashKey('w_sb_devil_smg_mag1') },
            { name = 'clip_extended', label = _U('component_clip_extended'), hash = GetHashKey('w_sb_devil_smg_mag2') },
        }
    },
    --
    ['WEAPON_GRANDAL'] = {
        name = 'WEAPON_GRANDAL',
        label = ('GRANDAL'),
        ammo = {label = _U('ammo_rounds'), hash = GetHashKey('AMMO_RIFLE')},
        components = {
            { name = 'clip_default', label = _U('component_clip_default'), hash = GetHashKey('w_ar_grandal_mag1') },
            { name = 'clip_extended', label = _U('component_clip_extended'), hash = GetHashKey('w_ar_grandal_mag2') },
        }
    },
    --
    ['WEAPON_ENERGYKNIFE'] = {
        name = 'WEAPON_ENERGYKNIFE',
        label = ('ENERGY KNIFE'),
        components = {}
    },
    --
    ['WEAPON_CFS_KNIFE'] = {
        name = 'WEAPON_CFS_KNIFE',
        label = ('CFS KNIFE'),
        components = {}
    },
    --
	['WEAPON_BGK'] = {
		name = 'WEAPON_BGK',
		label = ('BGK'),
		ammo = {label = _U('ammo_rounds'), hash = GetHashKey('AMMO_RIFLE')},
		components = {
			{ name = 'clip_default', label = _U('component_clip_default'), hash = GetHashKey('w_ar_bgk_mag1') },
			{ name = 'clip_extended', label = _U('component_clip_extended'), hash = GetHashKey('w_ar_bgk_mag2') },
			{ name = 'scope', label = _U('component_scope'), hash = GetHashKey('w_at_ar_bgk_scope') },
			{name = 'suppressor',         label = _U('component_suppressor'),     hash = GetHashKey('w_at_ar_bgk_supp')},
			{name = 'grip',         label = _U('component_grip'),     hash = GetHashKey('w_at_ar_bgk_grip')},
		}
	},
	--
	['WEAPON_CARBINE9'] = {
		name = 'WEAPON_CARBINE9',
		label = ('CARBINE9'),
		ammo = {label = _U('ammo_rounds'), hash = GetHashKey('AMMO_RIFLE')},
		components = {
			{ name = 'clip_default', label = _U('component_clip_default'), hash = GetHashKey('w_ar_carbine9_mag1') },
			{ name = 'clip_extended', label = _U('component_clip_extended'), hash = GetHashKey('w_ar_carbine9_mag2') },
			{ name = 'scope', label = _U('component_scope'), hash = GetHashKey('w_at_ar_carbine9_scope') },
			{name = 'suppressor',         label = _U('component_suppressor'),     hash = GetHashKey('w_at_ar_carbine9_supp')},
			{name = 'grip',         label = _U('component_grip'),     hash = GetHashKey('w_at_ar_carbine9_grip')},
		}
	},
	--
	['WEAPON_PAINFUL'] = {
		name = 'WEAPON_PAINFUL',
		label = ('PAINFUL'),
		ammo = {label = _U('ammo_rounds'), hash = GetHashKey('AMMO_RIFLE')},
		components = {
			{ name = 'clip_default', label = _U('component_clip_default'), hash = GetHashKey('w_ar_painful_mag1') },
			{ name = 'clip_extended', label = _U('component_clip_extended'), hash = GetHashKey('w_ar_painful_mag2') },
			{ name = 'scope', label = _U('component_scope'), hash = GetHashKey('w_at_ar_painful_scope') },
			{name = 'suppressor',         label = _U('component_suppressor'),     hash = GetHashKey('w_at_ar_painful_supp')},
			{name = 'grip',         label = _U('component_grip'),     hash = GetHashKey('w_at_ar_painful_grip')},
		}
	},
	--
	['WEAPON_MSG4A1'] = {
		name = 'WEAPON_MSG4A1',
		label = ('MSG4A1'),
		ammo = {label = _U('ammo_rounds'), hash = GetHashKey('AMMO_RIFLE')},
		components = {
			{ name = 'clip_default', label = _U('component_clip_default'), hash = GetHashKey('w_ar_msg4a1_mag1') },
			{ name = 'clip_extended', label = _U('component_clip_extended'), hash = GetHashKey('w_ar_msg4a1_mag2') },
			{ name = 'scope', label = _U('component_scope'), hash = GetHashKey('w_at_ar_msg4a1_scope') },
			{name = 'suppressor',         label = _U('component_suppressor'),     hash = GetHashKey('w_at_ar_msg4a1_supp')},
			{name = 'grip',         label = _U('component_grip'),     hash = GetHashKey('w_at_ar_msg4a1_grip')},
		}
	},
	--
	['WEAPON_MSG4A1SR'] = {
		name = 'WEAPON_MSG4A1SR',
		label = ('MSG4A1SR'),
		ammo = {label = _U('ammo_rounds'), hash = GetHashKey('AMMO_RIFLE')},
		components = {
			{ name = 'clip_default', label = _U('component_clip_default'), hash = GetHashKey('w_ar_msg4a1sr_mag1') },
			{ name = 'clip_extended', label = _U('component_clip_extended'), hash = GetHashKey('w_ar_msg4a1sr_mag2') },
			{ name = 'scope', label = _U('component_scope'), hash = GetHashKey('w_at_ar_msg4a1sr_scope') },
			{name = 'suppressor',         label = _U('component_suppressor'),     hash = GetHashKey('w_at_ar_msg4a1sr_supp')},
			{name = 'grip',         label = _U('component_grip'),     hash = GetHashKey('w_at_ar_msg4a1sr_grip')},
		}
	},
	--
	['WEAPON_ACCEPTRIFLE'] = {
		name = 'WEAPON_ACCEPTRIFLE',
		label = ('ACCEPTRIFLE'),
		ammo = {label = _U('ammo_rounds'), hash = GetHashKey('AMMO_RIFLE')},
		components = {
			{ name = 'clip_default', label = _U('component_clip_default'), hash = GetHashKey('w_ar_acceptrifle_mag1') },
			{ name = 'clip_extended', label = _U('component_clip_extended'), hash = GetHashKey('w_ar_acceptrifle_mag2') },
			{ name = 'scope', label = _U('component_scope'), hash = GetHashKey('w_at_ar_acceptrifle_scope') },
			{name = 'suppressor',         label = _U('component_suppressor'),     hash = GetHashKey('w_at_ar_acceptrifle_supp')},
		}
	},
	--
	['WEAPON_FOXEN9'] = {
		name = 'WEAPON_FOXEN9',
		label = ('FOXEN9'),
		ammo = {label = _U('ammo_rounds'), hash = GetHashKey('AMMO_SMG')},
		components = {
			{ name = 'clip_default', label = _U('component_clip_default'), hash = GetHashKey('w_sb_foxen9_mag1') },
			{ name = 'clip_extended', label = _U('component_clip_extended'), hash = GetHashKey('w_sb_foxen9_mag2') },
			{ name = 'scope', label = _U('component_scope'), hash = GetHashKey('w_at_sb_foxen9_scope') },
			{name = 'suppressor',         label = _U('component_suppressor'),     hash = GetHashKey('w_at_sb_foxen9_supp')},
		}
	},
	--

	--------------------------------------------------------------------------------------------------------------------------------------------------------------------
}

Config.WeaponHashesToName = {}

for k,v in pairs(Config.Weapons) do
	Config.WeaponHashesToName[GetHashKey(k)] = k
end