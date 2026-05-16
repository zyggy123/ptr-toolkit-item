local ITEM_ID = 900005

local PvPGear = {
    [1]  = {51419, 51420, 51421, 51422, 51423}, [2]  = {51474, 51475, 51476, 51477, 51478},
    [3]  = {51464, 51465, 51466, 51467, 51468}, [4]  = {51499, 51500, 51501, 51502, 51503},
    [5]  = {51484, 51485, 51486, 51487, 51488}, [6]  = {51414, 51415, 51416, 51417, 51418},
    [7]  = {51489, 51490, 51491, 51492, 51493}, [8]  = {51469, 51470, 51471, 51472, 51473},
    [9]  = {51494, 51495, 51496, 51497, 51498}, [11] = {51429, 51430, 51431, 51432, 51434},
}

local PvPExtras = {
    [1]  = {51393, 51433, 51333, 51343, 51364, 51351, 51355, 51358, 51359, 51377, 51378},
    [2]  = {51393, 51433, 51333, 51343, 51364, 51351, 51355, 51358, 51359, 51377, 51378},
    [3]  = {51392, 51449, 51333, 51343, 51364, 51351, 51355, 51358, 51359, 51377, 51378},
    [4]  = {51398, 51398, 51333, 51343, 51364, 51351, 51355, 51358, 51359, 51377, 51378},
    [5]  = {51408, 51428, 51333, 51343, 51364, 51351, 51355, 51358, 51359, 51377, 51378},
    [6]  = {51393, 51433, 51333, 51343, 51364, 51351, 51355, 51358, 51359, 51377, 51378},
    [7]  = {51408, 51428, 51333, 51343, 51364, 51351, 51355, 51358, 51359, 51377, 51378},
    [8]  = {51408, 51428, 51333, 51343, 51364, 51351, 51355, 51358, 51359, 51377, 51378},
    [9]  = {51408, 51428, 51333, 51343, 51364, 51351, 51355, 51358, 51359, 51377, 51378},
    [11] = {51408, 51428, 51333, 51343, 51364, 51351, 51355, 51358, 51359, 51377, 51378},
}

local ClassSpells = {
    [1]  = {7384, 47436, 47450, 47465, 47437, 47471, 47475, 47440, 47488},
    [2]  = {48942, 48952, 48932, 48936, 48825, 48819, 48827},
    [3]  = {49052, 49045, 49056, 49001, 49012, 49021, 53209},
    [4]  = {48668, 48638, 48672, 48657, 48666, 48659, 51690, 5171},
    [5]  = {48066, 48068, 48113, 48120, 48123, 48125, 48045, 48161},
    [6]  = {49895, 49909, 49921, 49924, 49930, 49938, 49941, 50842},
    [7]  = {49273, 49276, 49233, 49236, 49238, 49281, 49284, 51505},
    [8]  = {42897, 42842, 42833, 42846, 42859, 43015, 42914, 42921},
    [9]  = {47809, 47811, 47813, 47823, 47825, 47834, 47836, 47838},
    [11] = {48370, 48465, 48467, 48469, 48477, 48505, 48508, 50516},
}

local Professions = {
    [30] = {spell = 51304, skill = 171}, [31] = {spell = 51300, skill = 164},
    [32] = {spell = 51313, skill = 333}, [33] = {spell = 51306, skill = 202},
    [34] = {spell = 50300, skill = 136}, [35] = {spell = 45363, skill = 773},
    [36] = {spell = 51311, skill = 755}, [37] = {spell = 51302, skill = 165},
    [38] = {spell = 50310, skill = 186}, [39] = {spell = 50305, skill = 393},
    [40] = {spell = 51309, skill = 197},
}

local TeleportLocations = {
    [130] = {"Dalaran", 571, 5804.15, 624.77, 647.77, 1.64},
    [131] = {"Stormwind", 0, -8833.38, 628.62, 93.93, 0.68},
    [132] = {"Orgrimmar", 1, 1569.50, -4399.20, 16.20, 0.54},
    [133] = {"Icecrown Citadel", 571, 5855.22, 2102.03, 635.99, 3.91},
    [134] = {"Trial of the Crusader", 571, 8515.61, 714.05, 558.24, 1.56},
    [135] = {"Vault of Archavon", 571, 5453.72, 2840.79, 421.28, 0.0},
    [136] = {"Ulduar", 571, 9222.88, -1113.59, 1216.12, 6.22},
    [137] = {"Naxxramas", 571, 3668.72, -1262.46, 243.52, 4.69},
    [138] = {"Ruby Sanctum", 571, 3590.43, 199.75, -113.76, 5.43},
    [139] = {"Obsidian Sanctum", 571, 3472.43, 264.51, -120.18, 3.24},
    [140] = {"Eye of Eternity", 571, 3875.09, 6973.65, 152.04, 5.81},
}

local SpecGear = {
    ["DK dps 2H"] = {
        enchants = {{44149,1},{44133,1},{39003,1},{44465,1},{44815,1},{38374,1},{41118,1}},
        gems     = {{41398,1},{40111,9},{40146,8},{49110,1},{42142,3}},
        gear     = {{51312,1},{50647,1},{51314,1},{50677,1},{51310,1},{50659,1},{51311,1},{50620,1},{50624,1},{50639,1},{50693,1},{52572,1},{47464,1},{50363,1},{49623,1},{47673,1}},
        glyphs   = {{43549,1},{43546,1},{43542,1},{43544,1},{43672,1},{43673,1}},
    },
    ["DK dps 1H"] = {
        enchants = {{44149,1},{44133,1},{39003,1},{44465,1},{44815,1},{38374,1},{41118,1}},
        gems     = {{41398,1},{40111,10},{40146,6},{42142,3},{49110,1}},
        gear     = {{51312,1},{50647,1},{51314,1},{50677,1},{51310,1},{50659,1},{51311,1},{50620,1},{50624,1},{50639,1},{52572,1},{51855,1},{47131,1},{50363,1},{50737,1},{50737,1},{47673,1}},
        glyphs   = {{43549,1},{43546,1},{43542,1},{43544,1},{43672,1},{43673,1}},
    },
    ["DK tank"] = {
        enchants = {{44957,1},{41111,1},{44947,1},{38373,1},{39006,1}},
        gems     = {{41380,1},{36767,3},{40008,14},{40022,1}},
        gear     = {{46120,1},{45485,1},{46122,1},{45496,1},{46118,1},{45111,1},{46119,1},{45551,1},{45594,1},{45988,1},{45471,1},{45326,1},{45158,1},{46021,1},{45533,1},{45144,1}},
        glyphs   = {{45805,1},{43550,1},{43538,1},{43544,1},{43535,1},{43673,1}},
    },
    ["Druid Balance"] = {
        enchants = {{44159,1},{44135,1},{44465,1},{44470,1},{41602,1},{41118,1},{44467,1}},
        gems     = {{41285,1},{40113,11},{40155,4},{40133,2},{45883,1},{40152,1}},
        gear     = {{51290,1},{50724,1},{51292,1},{50628,1},{51294,1},{50651,1},{50663,1},{50613,1},{51293,1},{50699,1},{50664,1},{50398,1},{50348,1},{50365,1},{50734,1},{50719,1},{50457,1}},
        glyphs   = {{40916,1},{40923,1},{40921,1},{44922,1},{43331,1},{43335,1}},
    },
    ["Druid tank"] = {
        enchants = {{44957,1},{39001,1},{38376,1},{44947,1},{38373,1},{41118,1},{46098,1}},
        gems     = {{41380,1},{40119,19},{40130,1}},
        gear     = {{51296,1},{50682,1},{51299,1},{50466,1},{50656,1},{50670,1},{51295,1},{50707,1},{51297,1},{50607,1},{50622,1},{50404,1},{47088,1},{50364,1},{51432,1},{50456,1}},
        glyphs   = {{40897,1},{46372,1},{40896,1},{43334,1},{43332,1},{43331,1}},
    },
    ["Druid feral"] = {
        enchants = {{44149,1},{44133,1},{41111,1},{44465,1},{44815,1},{38374,1},{41118,1},{44493,1}},
        gems     = {{41398,1},{40117,11},{40125,2},{40162,2},{40143,5},{49110,1}},
        gear     = {{51296,1},{50633,1},{51299,1},{47545,1},{51298,1},{50670,1},{50675,1},{50707,1},{51297,1},{50607,1},{50604,1},{50402,1},{50363,1},{50343,1},{50735,1},{50456,1}},
        glyphs   = {{206580,1},{45604,1},{40901,1},{43674,1},{43335,1},{43331,1}},
    },
    ["Hunter"] = {
        enchants = {{44149,1},{44133,1},{41111,1},{44465,1},{44815,1},{38374,1},{41118,1},{44463,1},{41167,1}},
        gems     = {{41398,1},{40112,12},{42143,3},{40148,4},{49110,1},{40150,1},{45879,1}},
        gear     = {{51286,1},{50633,1},{51288,1},{47546,1},{51289,1},{50655,1},{51285,1},{50688,1},{50645,1},{54577,1},{50618,1},{54576,1},{50363,1},{54590,1},{50735,1},{50733,1}},
        glyphs   = {{42912,1},{45733,1},{45732,1},{43351,1},{43338,1},{43350,1}},
    },
    ["Mage"] = {
        enchants = {{44159,1},{44135,1},{44465,1},{44470,1},{41118,1},{44467,1}},
        gems     = {{41285,1},{40133,8},{40152,7},{40113,5}},
        gear     = {{51281,1},{50724,1},{51284,1},{50628,1},{50629,1},{50651,1},{51280,1},{50613,1},{51282,1},{50699,1},{50664,1},{50398,1},{50365,1},{50348,1},{50732,1},{50719,1},{50684,1}},
        glyphs   = {{42739,1},{42751,1},{45737,1},{43339,1},{43364,1}},
    },
    ["Paladin Protection"] = {
        enchants = {{44957,1},{41111,1},{44465,1},{44947,1},{38373,1},{41118,1},{44497,1},{44936,1}},
        gems     = {{41380,1},{40129,5},{40119,14},{49110,1},{40166,1}},
        gear     = {{49475,1},{47133,1},{48646,1},{47549,1},{46968,1},{47111,1},{45487,1},{47076,1},{48645,1},{47003,1},{47157,1},{45471,1},{45158,1},{47451,1},{46097,1},{46964,1},{47661,1}},
        glyphs   = {{43869,1},{41100,1},{45745,1},{43368,1},{43367,1},{43365,1}},
    },
    ["Paladin Retribution"] = {
        enchants = {{44149,1},{44133,1},{41111,1},{44465,1},{44815,1},{38374,1},{41118,1},{44493,1}},
        gems     = {{41398,1},{40111,14},{40146,3},{49110,1},{42142,2},{42154,1}},
        gear     = {{51277,1},{54581,1},{51279,1},{50677,1},{51275,1},{54580,1},{50690,1},{50707,1},{51278,1},{54578,1},{50402,1},{54576,1},{54590,1},{50706,1},{49623,1},{50455,1}},
        glyphs   = {{43869,1},{41092,1},{204385,1},{43368,1},{43367,1},{43365,1}},
    },
    ["Priest Discipline"] = {
        enchants = {{44159,1},{44135,1},{44465,1},{38979,1},{41604,1},{41118,1},{44467,1}},
        gems     = {{41401,1},{40134,1},{40113,19},{40151,1}},
        gear     = {{51178,1},{50700,1},{51175,1},{47551,1},{51176,1},{51918,1},{51179,1},{50702,1},{51823,1},{51850,1},{50720,1},{50400,1},{50366,1},{47059,1},{51944,1},{51922,1},{50631,1}},
        glyphs   = {{42408,1},{42400,1},{45756,1},{43371,1},{43374,1},{43342,1}},
    },
    ["Priest Shadow"] = {
        enchants = {{44159,1},{44135,1},{38928,1},{44470,1},{41602,1},{41118,1},{44467,1}},
        gems     = {{41285,1},{40133,4},{40113,9},{40155,7}},
        gear     = {{51255,1},{50724,1},{51257,1},{50628,1},{51259,1},{50651,1},{51256,1},{50613,1},{50694,1},{50699,1},{50664,1},{50398,1},{50348,1},{50365,1},{50734,1},{50719,1},{50684,1}},
        glyphs   = {{42407,1},{42415,1},{45753,1},{43371,1},{43372,1},{43374,1}},
    },
    ["Rogue Assassination"] = {
        enchants = {{44149,1},{44133,1},{41111,1},{44465,1},{44815,1},{38374,1},{41118,1},{44493,2}},
        gems     = {{41398,1},{40114,12},{40159,2},{49110,1},{40157,6}},
        gear     = {{51252,1},{50633,1},{51254,1},{50653,1},{50656,1},{54580,1},{51251,1},{50707,1},{51253,1},{50607,1},{50402,1},{54576,1},{50363,1},{54590,1},{50621,1},{50736,1},{50733,1}},
        glyphs   = {{45768,1},{45767,1},{45761,1}},
    },
    ["Shaman Elemental"] = {
        enchants = {{44159,1},{44135,1},{44465,1},{44470,1},{41604,1},{38986,1},{44467,1},{44455,1}},
        gems     = {{41285,1},{40113,12},{40155,6},{40134,2}},
        gear     = {{51237,1},{50658,1},{50698,1},{50628,1},{51239,1},{50687,1},{51238,1},{50613,1},{51236,1},{50699,1},{50398,1},{50664,1},{50348,1},{50365,1},{50734,1},{50616,1},{50458,1}},
        glyphs   = {{41532,1},{45776,1},{41536,1},{44923,1},{43386,1},{43725,1}},
    },
    ["Shaman Enhancement"] = {
        enchants = {{44149,1},{44133,1},{39003,1},{44465,1},{44815,1},{40776,1},{38374,1},{41118,1},{44493,2}},
        gems     = {{41398,1},{40118,7},{42156,3},{40128,8},{49110,1},{40125,1}},
        gear     = {{51242,1},{50658,1},{51240,1},{50653,1},{51244,1},{50687,1},{50619,1},{50613,1},{51241,1},{50711,1},{50604,1},{50402,1},{50343,1},{45609,1},{51939,1},{50710,1},{50458,1}},
        glyphs   = {{41530,1},{41532,1},{45771,1}},
    },
    ["Warlock"] = {
        enchants = {{44159,1},{44135,1},{38928,1},{44470,1},{41118,1},{44467,1}},
        gems     = {{41285,1},{40133,4},{40113,9},{40155,7}},
        gear     = {{51231,1},{50724,1},{51234,1},{50628,1},{51233,1},{50651,1},{51230,1},{50613,1},{50694,1},{50699,1},{50398,1},{50664,1},{50365,1},{50348,1},{50732,1},{50719,1},{50684,1}},
        glyphs   = {{50077,1},{45785,1},{45779,1},{43394,1},{43390,1},{43393,1}},
    },
    ["Warrior Fury"] = {
        enchants = {{44149,1},{44133,1},{39003,1},{44465,1},{44815,1},{38374,1},{41118,1},{44493,2}},
        gems     = {{41398,1},{40117,11},{49110,1},{42156,1},{40143,4},{40111,6},{42153,2}},
        gear     = {{51227,1},{50633,1},{51229,1},{47545,1},{51225,1},{50670,1},{50675,1},{50620,1},{51228,1},{50639,1},{50618,1},{50402,1},{50343,1},{50363,1},{49623,1},{50730,1},{50733,1}},
        glyphs   = {{43432,1},{43418,1},{43416,1},{49084,1},{206953,1},{43397,1}},
    },
    ["Warrior Protection"] = {
        enchants = {{44150,1},{44957,1},{41111,1},{44465,1},{44947,1},{40776,1},{38373,1},{39006,1},{44497,1},{44936,1}},
        gems     = {{41380,1},{40130,8},{40119,7},{36767,2},{40167,2}},
        gear     = {{50640,1},{50682,1},{51224,1},{50718,1},{51220,1},{50611,1},{51222,1},{50691,1},{51223,1},{50625,1},{50622,1},{50642,1},{50364,1},{50344,1},{50738,1},{50729,1},{51834,1}},
        glyphs   = {{43425,1},{45793,1},{43415,1},{43397,1},{43399,1},{49084,1}},
    },
}

local function GiveGear(player, gearTable, extrasTable)
    local class = player:GetClass()
    local baseItems = gearTable[class]
    local extraItems = extrasTable[class]

    if baseItems then
        for _, itemId in ipairs(baseItems) do
            if itemId and itemId ~= 0 then player:AddItem(itemId, 1) end
        end
        if extraItems then
            for _, itemId in ipairs(extraItems) do
                if itemId and itemId ~= 0 then player:AddItem(itemId, 1) end
            end
        end
        player:SendBroadcastMessage("Full gear set has been added to your bags.")
    else
        player:SendBroadcastMessage("No gear configured for your class.")
    end
end

local function AddSpecGear(player, specKey)
    local data = SpecGear[specKey]
    if not data then return end

    local function addList(list)
        for _, entry in ipairs(list) do
            local itemId = entry[1]
            local count = entry[2] or 1
            if itemId and itemId ~= 0 then player:AddItem(itemId, count) end
        end
    end

    addList(data.enchants or {})
    addList(data.gems or {})
    addList(data.gear or {})
    addList(data.glyphs or {})

    player:SendBroadcastMessage(specKey .. " gear, gems, enchants and glyphs added to your bags.")
end

local function OnGossipHello(event, player, item, target)
    player:GossipClearMenu()
    player:GossipMenuAddItem(0, "Level me to 80", 1, 1)
    player:GossipMenuAddItem(0, "Give me Gear", 1, 2)
    player:GossipMenuAddItem(0, "Max Professions", 1, 3)
    player:GossipMenuAddItem(0, "Learn Spells & Skills", 1, 4)
    player:GossipMenuAddItem(0, "Learn Riding & Mounts", 1, 5)
    player:GossipMenuAddItem(0, "Delete All Items in Bags", 1, 6)
    player:GossipMenuAddItem(0, "Delete Equipped Gear", 1, 7)
    player:GossipMenuAddItem(0, "Give 4 Large Bags", 1, 8)
    player:GossipMenuAddItem(0, "Give 1000 Gold", 1, 9)
    player:GossipMenuAddItem(0, "Max Reputations", 1, 10)
    player:GossipMenuAddItem(0, "Full Heal & Reset Auras", 1, 11)
    player:GossipMenuAddItem(0, "Buffs & Consumables", 1, 12)
    player:GossipMenuAddItem(0, "Teleport", 1, 13)
    player:GossipSendMenu(1, item)
    
    return false 
end

local function OnGossipSelect(event, player, item, sender, intid, code)
    if (intid == 0) then
        OnGossipHello(event, player, item)
    elseif (intid == 1) then
        player:SetLevel(80)
        player:SendBroadcastMessage("You are now level 80.")
        OnGossipHello(event, player, item)
    elseif (intid == 2) then
        player:GossipClearMenu()
        player:GossipMenuAddItem(0, "PvE Spec Gear", 1, 22)
        player:GossipMenuAddItem(0, "PvP Gear (Wrathful Full Set)", 1, 21)
        player:GossipMenuAddItem(0, "<- Back", 1, 0)
        player:GossipSendMenu(1, item)
    elseif (intid == 3) then
        player:GossipClearMenu()
        player:GossipMenuAddItem(0, "Alchemy", 1, 30)
        player:GossipMenuAddItem(0, "Blacksmithing", 1, 31)
        player:GossipMenuAddItem(0, "Enchanting", 1, 32)
        player:GossipMenuAddItem(0, "Engineering", 1, 33)
        player:GossipMenuAddItem(0, "Herbalism", 1, 34)
        player:GossipMenuAddItem(0, "Inscription", 1, 35)
        player:GossipMenuAddItem(0, "Jewelcrafting", 1, 36)
        player:GossipMenuAddItem(0, "Leatherworking", 1, 37)
        player:GossipMenuAddItem(0, "Mining", 1, 38)
        player:GossipMenuAddItem(0, "Skinning", 1, 39)
        player:GossipMenuAddItem(0, "Tailoring", 1, 40)
        player:GossipMenuAddItem(0, "<- Back", 1, 0)
        player:GossipSendMenu(1, item)
    elseif (intid == 4) then
        player:AdvanceSkillsToMax()
        local class = player:GetClass()
        local cSpells = ClassSpells[class]
        if cSpells then
            for _, spellId in ipairs(cSpells) do player:LearnSpell(spellId) end
        end
        player:LearnSpell(1804)
        player:LearnSpell(2764)
        player:SendBroadcastMessage("Weapon skills maximized and max rank spells learned.")
        OnGossipHello(event, player, item)
    elseif (intid == 5) then
        player:LearnSpell(33388)
        player:LearnSpell(33391)
        player:LearnSpell(34090)
        player:LearnSpell(34091)
        player:LearnSpell(54197)
        player:LearnSpell(48025)
        player:LearnSpell(63624)
        player:SendBroadcastMessage("Riding skills and Mounts learned.")
        OnGossipHello(event, player, item)
    elseif (intid == 6) then
        for slot = 19, 22 do
            local bag = player:GetItemByPos(255, slot)
            if bag then
                for bagSlot = 0, 35 do
                    local invItem = player:GetItemByPos(slot, bagSlot)
                    if invItem and invItem:GetEntry() ~= ITEM_ID then
                        player:RemoveItem(invItem:GetEntry(), invItem:GetCount())
                    end
                end
            end
        end
        for bagSlot = 23, 38 do
            local invItem = player:GetItemByPos(255, bagSlot)
            if invItem and invItem:GetEntry() ~= ITEM_ID then
                player:RemoveItem(invItem:GetEntry(), invItem:GetCount())
            end
        end
        player:SendBroadcastMessage("All items in your bags have been deleted (except the PTR Toolkit).")
        OnGossipHello(event, player, item)
    elseif (intid == 7) then
        for slot = 0, 18 do
            local invItem = player:GetItemByPos(255, slot)
            if invItem and invItem:GetEntry() ~= ITEM_ID then
                player:RemoveItem(invItem:GetEntry(), invItem:GetCount())
            end
        end
        player:SendBroadcastMessage("All equipped gear has been deleted.")
        OnGossipHello(event, player, item)
    elseif (intid == 8) then
        for i = 1, 4 do player:AddItem(23162, 1) end
        player:SendBroadcastMessage("4 large bags have been added to your bags.")
        OnGossipHello(event, player, item)
    elseif (intid == 9) then
        player:ModifyMoney(10000000)
        player:SendBroadcastMessage("You received 1000 Gold.")
        OnGossipHello(event, player, item)
    elseif (intid == 10) then
        local reputations = {{1119, "Sons of Hodir"}, {1090, "Kirin Tor"}, {1098, "Knights of the Ebon Blade"}, {1091, "The Wyrmrest Accord"}, {1106, "Argent Crusade"}, {1094, "The Silver Covenant"}, {1124, "The Sunreavers"}}
        for _, rep in ipairs(reputations) do player:SetReputation(rep[1], 42000) end
        player:SendBroadcastMessage("All essential reputations set to Exalted (42000).")
        OnGossipHello(event, player, item)
    elseif (intid == 11) then
        player:SetHealth(player:GetMaxHealth())
        player:RemoveAllAuras()
        player:SendBroadcastMessage("Health restored and all auras removed.")
        OnGossipHello(event, player, item)
    elseif (intid == 12) then
        player:GossipClearMenu()
        player:GossipMenuAddItem(0, "Raid Buffs", 1, 120)
        player:GossipMenuAddItem(0, "Flasks & Food", 1, 121)
        player:GossipMenuAddItem(0, "Potions", 1, 122)
        player:GossipMenuAddItem(0, "Hunter Ammo (1000)", 1, 123)
        player:GossipMenuAddItem(0, "Emblems (100 Frost + 100 Triumph)", 1, 124)
        player:GossipMenuAddItem(0, "<- Back", 1, 0)
        player:GossipSendMenu(1, item)
    elseif (intid == 13) then
        player:GossipClearMenu()
        player:GossipMenuAddItem(0, "Dalaran", 1, 130)
        player:GossipMenuAddItem(0, "Stormwind", 1, 131)
        player:GossipMenuAddItem(0, "Orgrimmar", 1, 132)
        player:GossipMenuAddItem(0, "Icecrown Citadel", 1, 133)
        player:GossipMenuAddItem(0, "Trial of the Crusader", 1, 134)
        player:GossipMenuAddItem(0, "Vault of Archavon", 1, 135)
        player:GossipMenuAddItem(0, "Ulduar", 1, 136)
        player:GossipMenuAddItem(0, "Naxxramas", 1, 137)
        player:GossipMenuAddItem(0, "Ruby Sanctum", 1, 138)
        player:GossipMenuAddItem(0, "Obsidian Sanctum", 1, 139)
        player:GossipMenuAddItem(0, "Eye of Eternity", 1, 140)
        player:GossipMenuAddItem(0, "<- Back", 1, 0)
        player:GossipSendMenu(1, item)
    elseif (intid == 21) then
        GiveGear(player, PvPGear, PvPExtras)
        OnGossipHello(event, player, item)
    elseif (intid == 22) then
        player:GossipClearMenu()
        local class = player:GetClass()
        if class == 6 then
            player:GossipMenuAddItem(0, "DK - DPS 2H", 1, 100)
            player:GossipMenuAddItem(0, "DK - DPS 1H", 1, 101)
            player:GossipMenuAddItem(0, "DK - Tank", 1, 102)
        elseif class == 11 then
            player:GossipMenuAddItem(0, "Druid - Balance", 1, 103)
            player:GossipMenuAddItem(0, "Druid - Tank", 1, 104)
            player:GossipMenuAddItem(0, "Druid - Feral", 1, 105)
        elseif class == 3 then player:GossipMenuAddItem(0, "Hunter - DPS", 1, 106)
        elseif class == 8 then player:GossipMenuAddItem(0, "Mage - DPS", 1, 107)
        elseif class == 2 then
            player:GossipMenuAddItem(0, "Paladin - Protection", 1, 108)
            player:GossipMenuAddItem(0, "Paladin - Retribution", 1, 109)
        elseif class == 5 then
            player:GossipMenuAddItem(0, "Priest - Discipline", 1, 110)
            player:GossipMenuAddItem(0, "Priest - Shadow", 1, 111)
        elseif class == 4 then player:GossipMenuAddItem(0, "Rogue - Assassination", 1, 112)
        elseif class == 7 then
            player:GossipMenuAddItem(0, "Shaman - Elemental", 1, 113)
            player:GossipMenuAddItem(0, "Shaman - Enhancement", 1, 114)
        elseif class == 9 then player:GossipMenuAddItem(0, "Warlock - DPS", 1, 115)
        elseif class == 1 then
            player:GossipMenuAddItem(0, "Warrior - Fury", 1, 116)
            player:GossipMenuAddItem(0, "Warrior - Protection", 1, 117)
        else
            player:SendBroadcastMessage("No spec gear available for your class.")
        end
        player:GossipMenuAddItem(0, "<- Back", 1, 2)
        player:GossipSendMenu(1, item)
    elseif (intid >= 30 and intid <= 40) then
        local prof = Professions[intid]
        if prof then
            player:LearnSpell(prof.spell)
            player:SetSkill(prof.skill, 1, 450, 450)
            player:SendBroadcastMessage("Profession maxed to 450.")
        end
        OnGossipHello(event, player, item)
    elseif (intid == 100) then AddSpecGear(player, "DK dps 2H"); OnGossipHello(event, player, item)
    elseif (intid == 101) then AddSpecGear(player, "DK dps 1H"); OnGossipHello(event, player, item)
    elseif (intid == 102) then AddSpecGear(player, "DK tank"); OnGossipHello(event, player, item)
    elseif (intid == 103) then AddSpecGear(player, "Druid Balance"); OnGossipHello(event, player, item)
    elseif (intid == 104) then AddSpecGear(player, "Druid tank"); OnGossipHello(event, player, item)
    elseif (intid == 105) then AddSpecGear(player, "Druid feral"); OnGossipHello(event, player, item)
    elseif (intid == 106) then AddSpecGear(player, "Hunter"); OnGossipHello(event, player, item)
    elseif (intid == 107) then AddSpecGear(player, "Mage"); OnGossipHello(event, player, item)
    elseif (intid == 108) then AddSpecGear(player, "Paladin Protection"); OnGossipHello(event, player, item)
    elseif (intid == 109) then AddSpecGear(player, "Paladin Retribution"); OnGossipHello(event, player, item)
    elseif (intid == 110) then AddSpecGear(player, "Priest Discipline"); OnGossipHello(event, player, item)
    elseif (intid == 111) then AddSpecGear(player, "Priest Shadow"); OnGossipHello(event, player, item)
    elseif (intid == 112) then AddSpecGear(player, "Rogue Assassination"); OnGossipHello(event, player, item)
    elseif (intid == 113) then AddSpecGear(player, "Shaman Elemental"); OnGossipHello(event, player, item)
    elseif (intid == 114) then AddSpecGear(player, "Shaman Enhancement"); OnGossipHello(event, player, item)
    elseif (intid == 115) then AddSpecGear(player, "Warlock"); OnGossipHello(event, player, item)
    elseif (intid == 116) then AddSpecGear(player, "Warrior Fury"); OnGossipHello(event, player, item)
    elseif (intid == 117) then AddSpecGear(player, "Warrior Protection"); OnGossipHello(event, player, item)
    elseif (intid == 120) then
        local buffs = {48161, 48469, 43002, 47436, 57330, 56525, 57567}
        for _, spellId in ipairs(buffs) do 
            player:AddAura(spellId, player)
        end
        player:SendBroadcastMessage("Raid buffs applied.")
        OnGossipHello(event, player, item)
    elseif (intid == 121) then
        player:AddItem(46377, 1) player:AddItem(46376, 1)
        player:AddItem(46379, 1) player:AddItem(46378, 1)
        player:AddItem(43015, 20)
        player:SendBroadcastMessage("Flasks and food added.")
        OnGossipHello(event, player, item)
    elseif (intid == 122) then
        player:AddItem(40211, 20) player:AddItem(40212, 20)
        player:AddItem(33447, 20) player:AddItem(33448, 20)
        player:SendBroadcastMessage("Potions added.")
        OnGossipHello(event, player, item)
    elseif (intid == 123) then
        player:AddItem(41165, 1000)
        player:SendBroadcastMessage("1000 Saronite Razorheads added.")
        OnGossipHello(event, player, item)
    elseif (intid == 124) then
        player:AddItem(49426, 100) player:AddItem(47241, 100)
        player:SendBroadcastMessage("100 Emblems of Frost and 100 Emblems of Triumph added.")
        OnGossipHello(event, player, item)
    elseif (intid >= 130 and intid <= 140) then
        local loc = TeleportLocations[intid]
        if loc then
            player:Teleport(loc[2], loc[3], loc[4], loc[5], loc[6])
            player:SendBroadcastMessage("Teleported to " .. loc[1] .. ".")
        end
        OnGossipHello(event, player, item)
    end
end

RegisterItemEvent(ITEM_ID, 2, OnGossipHello)
RegisterItemGossipEvent(ITEM_ID, 2, OnGossipSelect)