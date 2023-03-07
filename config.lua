Config = {}
Config.DebugPoly = false -- True or false.

Config.MinPolice = 0
Config.HeistCooldown = 1 -- As minutes -- By ped
Config.HeistStartMoney = 50000 -- Money the ped asks for it to start heist // Changeable. Both money and bank works. Only numbers.
Config.ItemForPed = 'w_documents' -- Items to give it to ped
Config.HeistPed = { -- All of the below is target options <<< !!!!!! Change only if you know what you are doing !!!!!! >>>
    [1] = { 
        ped = 'cs_movpremmale',
        pos = vector4(-1124.7, -549.89, 32.48, 302.19),
        minusOne = true,
        freeze = true,
        invincible = true,
        blockEvents = true,
        scenario = 'WORLD_HUMAN_STAND_IMPATIENT',
        distance = 2.5
    }, 
} 

Config.Dispatch = 'ps-dispatch' -- Usage: 'ps-dispatch', 'cd_dispatch'. If it is empty it will use the default qb-policejob alert system.
Config.Cooldown = 60 -- As minutes - For hacking

Config.StartHackItem = 'screwdriverset' -- Item that start to heist with
Config.StartHackItemAmount = 1 -- Amount to get it from ped

Config.MinigameTime = 10 -- Time (seconds)
Config.MinigameGrid = 5 -- Grid size
Config.MinigameBlocks = 3 -- Incorrect blocks

Config.DoorName = 'warehouse1' -- First door name 
Config.DoorName2 = 'warehouse2' -- Second door name 
Config.DoorName3 = 'warehouse3' -- Third door name

Config.LootPedModel = 'mp_s_m_armoured_01' --  Ped models, it should be same with the inside of Config.Guards peds. <<< !!!!!! Change only if you know what you are doing !!!!!! >>>
Config.LootPedItem = 'w_accesscard' -- What should be the item name when you loot peds?
Config.LootPedAmount = 1 -- How many items should the player receive on loot and needed for the laptop
Config.LootChance = 30 -- between 1 and 100 

Config.HackComputerItem = 'w_heistusb' -- Item for hacking computers
Config.HackComputerItemAmount = 1 -- How much item should be removed?

Config.Minigame2Blocks = 2 -- Number of Blocks
Config.Minigame2Time = 3 -- Time (seconds)

Config.HackLocation = vector3(928.58, -1479.81, 30.02) 

Config.Crates = {
    [1] = {
        pos = vector3(945.28, -1476.16, 30.1), -- Lootable items position
        isLooted = false, -- MUST BE false, DO NOT EVER CHANGE IT
        lootType = 'crate', -- Which type of the loot? 'crate', 'search', 'case'
        type = 'items', -- Which type of reward? 'items' or 'money'
        reward = { 
            [1] = {name = 'goldchain', amount = math.random(5, 6)}, -- Rewards should be added like this if they are items, otherwise check line 58.
            [2] = {name = 'rolex', amount = math.random(7, 8)},
        },
    },
    [2] = {
        pos = vector3(945.28, -1476.14, 31.5),
        isLooted = false, 
        lootType = 'crate', 
        type = 'money',
        reward = {
            [1] = {account = 'cash', amount = math.random(20000, 35000)}
        },
    },
    [3] = {
        pos = vector3(945.26, -1473.27, 30.1),
        isLooted = false, 
        lootType = 'crate', 
        type = 'items', 
        reward = {
            [1] = {name = 'weed_brick', amount = 5},
        },
    },
    [4] = {
        pos = vector3(945.2, -1473.28, 31.5),
        isLooted = false, 
        lootType = 'crate', 
        type = 'items', 
        reward = {
            [1] = {name = 'bandage', amount = 10}, 
        },
    },
    [5] = {
        pos = vector3(945.05, -1470.51, 30.1),
        isLooted = false, 
        lootType = 'crate', 
        type = 'items', 
        reward = {
            [1] = {name = 'weapon_stickybomb', amount = 5},
            [2] = {name = 'weapon_proxmine', amount = 5},
        },
    },
    [6] = {
        pos = vector3(945.05, -1470.51, 31.5),
        isLooted = false, 
        lootType = 'crate', 
        type = 'items', 
        reward = {
            [1] = {name = 'weapon_combatmg', amount = 5}, 
        },
    },
    [7] = {
        pos = vector3(944.99, -1466.52, 30.1),
        isLooted = false, 
        lootType = 'crate', 
        type = 'items', 
        reward = {
            [1] = {name = 'weapon_smg', amount = 5}, 
        },
    },
    [8] = {
        pos = vector3(936.48, -1466.63, 30.1),
        isLooted = false, 
        lootType = 'crate',  
        type = 'items', 
        reward = {
            [1] = {name = 'rifle_ammo', amount = 25}, 
            [2] = {name = 'smg_ammo', amount = 25},
            [3] = {name = 'mg_ammo', amount = 25},
        },
    },
    [9] = {
        pos = vector3(934.45, -1460.3, 33.61),
        isLooted = false,
        lootType = 'case', 
        type = 'money',
        reward = {
            [1] = {account = 'cash', amount = math.random(5000, 10000)}, 
        },
    },
    [10] = { 
        pos = vector3(948.51, -1471.2, 30.4),
        isLooted = false,
        lootType = 'search', 
        type = 'items',
        reward = {
            [1] = {name = 'w_heistusb', amount = math.random(1, 3)}, 
        },
    }
}

Config.Guards = {
    [1] = {
        pos = vector4(943.42, -1478.92, 30.1, 181.35), -- guards position
        ped = 'mp_s_m_armoured_01', -- guards model name
        weapon = 'WEAPON_CARBINERIFLE_MK2', -- guards weapon
        health = 2000, -- guards health
        range = 2, -- guards range
        accuracy = 100, -- guards accuracy
        aggresiveness = 3, -- guards aggresiveness - 0 stand / 1 defensive / 2 offensive / 3 ultra offensive 
        alertness = 3, -- guards alertness 3 is the highest one - values from 0 to 3.
        armor = 100, -- guards armor 
    },
    [2] = {
        pos = vector4(931.47, -1483.5, 30.4, 247.62), -- guards position
        ped = 'mp_s_m_armoured_01', -- guards model name
        weapon = 'WEAPON_CARBINERIFLE_MK2', -- guards weapon
        health = 2000, -- guards health
        range = 2, -- guards range
        accuracy = 100, -- guards accuracy
        aggresiveness = 3, -- guards aggresiveness - 0 stand / 1 defensive / 2 offensive / 3 ultra offensive 
        alertness = 3, -- guards alertness 3 is the highest one - values from 0 to 3.
        armor = 100, -- guards armor 
    },
    [3] = {
        pos = vector4(933.87, -1475.43, 30.1, 204.06), -- guards position
        ped = 'mp_s_m_armoured_01', -- guards model name
        weapon = 'WEAPON_CARBINERIFLE_MK2', -- guards weapon
        health = 2000, -- guards health
        range = 2, -- guards range
        accuracy = 100, -- guards accuracy
        aggresiveness = 3, -- guards aggresiveness - 0 stand / 1 defensive / 2 offensive / 3 ultra offensive 
        alertness = 3, -- guards alertness 3 is the highest one - values from 0 to 3.
        armor = 100, -- guards armor 
    },
    [4] = {
        pos = vector4(937.77, -1463.64, 30.4, 183.56), -- guards position
        ped = 'mp_s_m_armoured_01', -- guards model name
        weapon = 'WEAPON_CARBINERIFLE_MK2', -- guards weapon
        health = 2000, -- guards health
        range = 2, -- guards range
        accuracy = 100, -- guards accuracy
        aggresiveness = 3, -- guards aggresiveness - 0 stand / 1 defensive / 2 offensive / 3 ultra offensive 
        alertness = 3, -- guards alertness 3 is the highest one - values from 0 to 3.
        armor = 100, -- guards armor 
    },
    [5] = {
        pos = vector4(935.06, -1465.49, 33.61, 202.25), -- guards position
        ped = 'mp_s_m_armoured_01', -- guards model name
        weapon = 'WEAPON_CARBINERIFLE_MK2', -- guards weapon
        health = 2000, -- guards health
        range = 2, -- guards range
        accuracy = 100, -- guards accuracy
        aggresiveness = 3, -- guards aggresiveness - 0 stand / 1 defensive / 2 offensive / 3 ultra offensive 
        alertness = 3, -- guards alertness 3 is the highest one - values from 0 to 3.
        armor = 100, -- guards armor 
        isLooted = false, -- DO NOT TOUCH IT
    },
    [6] = {
        pos = vector4(944.17, -1466.98, 33.61, 170.59), -- guards position
        ped = 'mp_s_m_armoured_01', -- guards model name
        weapon = 'WEAPON_CARBINERIFLE_MK2', -- guards weapon
        health = 2000, -- guards health
        range = 2, -- guards range
        accuracy = 100, -- guards accuracy
        aggresiveness = 3, -- guards aggresiveness - 0 stand / 1 defensive / 2 offensive / 3 ultra offensive 
        alertness = 3, -- guards alertness 3 is the highest one - values from 0 to 3.
        armor = 100, -- guards armor 
    },
    [6] = {
        pos = vector4(931.18, -1460.38, 33.61, 177.89), -- guards position
        ped = 'mp_s_m_armoured_01', -- guards model name
        weapon = 'WEAPON_CARBINERIFLE_MK2', -- guards weapon
        health = 2000, -- guards health
        range = 2, -- guards range
        accuracy = 100, -- guards accuracy
        aggresiveness = 3, -- guards aggresiveness - 0 stand / 1 defensive / 2 offensive / 3 ultra offensive 
        alertness = 3, -- guards alertness 3 is the highest one - values from 0 to 3.
        armor = 100, -- guards armor 
    },
    [7] = {
        pos = vector4(946.08, -1461.47, 30.4, 165.74), -- guards position
        ped = 'mp_s_m_armoured_01', -- guards model name
        weapon = 'WEAPON_CARBINERIFLE_MK2', -- guards weapon
        health = 2000, -- guards health
        range = 2, -- guards range
        accuracy = 100, -- guards accuracy
        aggresiveness = 3, -- guards aggresiveness - 0 stand / 1 defensive / 2 offensive / 3 ultra offensive 
        alertness = 3, -- guards alertness 3 is the highest one - values from 0 to 3.
        armor = 100, -- guards armor 
    },
    [8] = {
        pos = vector4(944.82, -1461.65, 33.61, 112.77), -- guards position
        ped = 'mp_s_m_armoured_01', -- guards model name
        weapon = 'WEAPON_CARBINERIFLE_MK2', -- guards weapon
        health = 2000, -- guards health
        range = 2, -- guards range
        accuracy = 100, -- guards accuracy
        aggresiveness = 3, -- guards aggresiveness - 0 stand / 1 defensive / 2 offensive / 3 ultra offensive 
        alertness = 3, -- guards alertness 3 is the highest one - values from 0 to 3.
        armor = 100, -- guards armor 
    },
    [9] = {
        pos = vector4(948.57, -1466.99, 33.61, 168.96), -- guards position
        ped = 'mp_s_m_armoured_01', -- guards model name
        weapon = 'WEAPON_CARBINERIFLE_MK2', -- guards weapon
        health = 2000, -- guards health
        range = 2, -- guards range
        accuracy = 100, -- guards accuracy
        aggresiveness = 3, -- guards aggresiveness - 0 stand / 1 defensive / 2 offensive / 3 ultra offensive 
        alertness = 3, -- guards alertness 3 is the highest one - values from 0 to 3.
        armor = 100, -- guards armor 
    },
}  

Config.Computers = {
    [1] = {
        pos = vector3(941.04, -1465.81, 33.61),
        isHacked = false,
        item = 'w_documents',
        chance = 100, -- between 0 and 100
        amount = 1
    },
    [2] = {
        pos = vector3(943.27, -1465.75, 33.61),
        isHacked = false,
        item = 'w_documents',
        chance = 100,
        amount = 1
    },
    [3] = {
        pos = vector3(945.56, -1465.88, 33.61),
        isHacked = false,
        item = 'w_documents',
        chance = 100,
        amount = 1
    },
    [4] = {
        pos = vector3(947.71, -1465.85, 33.61),
        isHacked = false,
        item = 'w_documents',
        chance = 100,
        amount = 1
    },
    [5] = {
        pos = vector3(940.96, -1464.74, 33.61),
        isHacked = false,
        item = 'w_documents',
        chance = 100,
        amount = 1
    },
    [6] = {
        pos = vector3(943.24, -1464.78, 33.61),
        isHacked = false,
        item = 'w_documents',
        chance = 100,
        amount = 1
    },
    [7] = {
        pos = vector3(945.45, -1464.77, 33.61),
        isHacked = false,
        item = 'w_documents',
        chance = 100,
        amount = 1
    },
    [8] = {
        pos = vector3(947.72, -1464.74, 33.61),
        isHacked = false,
        item = 'w_documents',
        chance = 100,
        amount = 1
    }
} 

Config.Progressbar = {
    ['tablet'] = {
        duration = 5000,
        useWhileDead = false,
        canCancel = true,
        disableMovement = true,
		disableCarMovement = true,
		disableMouse = false,
		disableCombat = true,
        animDict = 'amb@code_human_in_bus_passenger_idles@female@tablet@base',
		anim = 'base',
		flags = 16,
    },
    ['crate'] = {
        duration = 5000,
        useWhileDead = false,
        canCancel = true,
        disableMovement = true,
		disableCarMovement = true,
		disableMouse = false,
		disableCombat = true,
        animDict = "anim@heists@ornate_bank@grab_cash_heels",
		anim = "grab",
		flags = 16,
    },
    ['search'] = {
        duration = 5000,
        useWhileDead = false,
        canCancel = true,
        disableMovement = true,
		disableCarMovement = true,
		disableMouse = false,
		disableCombat = true,
        animDict = 'missexile3',
		anim = 'ex03_dingy_search_case_base_michael',
		flags = 49,
    },
    ['case'] = {
        duration = 5000,
        useWhileDead = false,
        canCancel = true,
        disableMovement = true,
		disableCarMovement = true,
		disableMouse = false,
		disableCombat = true,
        animDict = 'mini@safe_cracking',
		anim = 'door_open_succeed_stand',
		flags = 16, 
    },
    ['guards'] = {
        duration = 5000,
        useWhileDead = false,
        canCancel = true,
        disableMovement = true,
		disableCarMovement = true,
		disableMouse = false,
		disableCombat = true,
        animDict = 'missexile3',
		anim = 'ex03_dingy_search_case_base_michael',
		flags = 49,
    },
    ['computers'] = {
        duration = 5000,
        useWhileDead = false,
        canCancel = true,
        disableMovement = true,
		disableCarMovement = true,
		disableMouse = false,
		disableCombat = true,
        animDict = 'anim@heists@prison_heiststation@cop_reactions',
		anim = 'cop_b_idle',
		flags = 16,
    }
}