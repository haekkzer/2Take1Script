# 2Take1Script

2Take1Script is a script created by myself, with the help of others.

> I want to thank all of you, helping, advising and supporting me. Especially:
>
> - **Proddy**, **Sterz**, **IN2-Moist**, **1337Zero** and **Wolfry** for their help provided to make this script!
> - **sub1to** and **Cynical Bastard**, for this awesome menu!
> - **Danierutu**, for letting me host this documentation in the official 2Take1Docs site!
> - And all People, who wrote a great suggestion for the script!

## Setup

Download the latest script release from [**#lua-script-share**](discord:/channels/570999086874886154/614871694938472507/). The scripts come in a `2Take1Script.zip` file.

Extract the `.zip` file in the `scripts` folder from the menu (see the [**Scripts Guide**](https://docs.2take1.menu/features/local/scripts) for further details).
If done right, your `scripts` folder should contain:

- `2Take1Script.lua` (main script)
- `2Take1Script\` (folder with additional assets)

![help1](https://drive.google.com/uc?export=view&id=1O0wA4RQPIJheNn0mx5adV2_KXUifkMot)

![help2](https://drive.google.com/uc?export=view&id=1u9-HH0PPvOPcfafiBz2U1PCyi-UdHBB3)

Once all the above is done, you can straight go to [**Scripts**](https://docs.2take1.menu/features/local/scripts) and select **2Take1Script.lua**.

If you have a problem loading this script, have a look [**here**](#common-questions).

## Features List

### Blacklist

- Enable Blacklist
- Auto-Kick
- Mark as Modder
- Add Player by SCID
- Count Currently Blocked Players
- Notify on Rockstar Admin SCID
- *Auto-\[Kick/Crash\] R\* Admin* (disabled, see [note 1](#notes))
- Kick new joining Players

### Modders

- Remember every Modder
- Modder Detections (see [note 2](#notes))
  - Max Speed Bypass
  - Illegal Name
  - Modded IP / SCID
  - Modded Net-Events
  - Forcing Script-Host (WIP)

### Lobby

- Block Vehicles
  - Activate Block Vehicles
  - Select from currently 16 blockable Vehicles
- Block Areas with Objects
  - Teleport to Block Location (see [note 3](#notes))
  - Block LSCs
  - Casino
  - Maze Bank
  - Custom Locations
- Explosion Features (see [note 4](#notes))
  - Laser Beam Explode Waypoint
  - Random Explosions
    - Select Explosion Type
  - Shake Cam
- Sound-Features
  - Sound Rape
  - Garage Door Sound - Infinite Time
- Kill all PEDs
- Vehicles
  - Disable Control from near Vehicles
  - Modify Vehicle Speeds (-500 - 1000)
  - Reset Modifies
  - Include Self & Friends
  - Overwrite default Speedlimit
- Bounty
  - Set Bounty after Death (0 - 10000$)
  - Anonymous Bounty Toggle
  - Place Bounty from a custom presaved list
- Script Events
  - Custom Script Events
    - Enter Custom Script Event with Parameters
    - Send Script Events from a Custom presaved list
  - Send all to Mission
  - CEO all Player
    - Ban
    - Dismiss
    - Terminate
  - Block - Passive
  - Unblock - Passive
- Send SMSs to Lobby
  - Custom SMS input
  - Send SCIDs & IPs
  - Send SMS from a custom presaved list
- Malicious
  - Karma every Script Event
  - Punish Aliens in Lobby
  - Kick all Players
  - Host Kick All
  - Kick Hosts until You become Host
  - Crash Session
  - Fix loading screen after Crash

### Online Players

- Unmark Modder
- Remote Control Vehicle
- Repair Vehicle
- Waypoint Player
- Modify Speed (0-500)
- Attach Entities
  - Attach Entity from Aim
  - Clear Entities
  - Custom Attachments
- Log Events
  - Log Script Events
  - Reset Script Event Log
  - Log Net Events
  - Reset Net Event Log
- Script-Events
  - Custom Script Events
    - Enter Custom Script Event with Parameters
    - Send Script Events from a Custom presaved list
  - Block - Passive
  - Unblock - Passive
  - Send Player to Mission
  - CEO
    - Ban
    - Dismiss
    - Terminate
- Send PEDs (Assassins)
  - Clear PEDs
  - Send PEDs from a custom list
- TP to Player
- TP Players Vehicle to me
- Add Player to Blacklist
- Miscellaneous
  - Send SMSs to Player
    - Custom SMS input
    - Send his SCID & IP
    - Send SMS from a custom presaved list
  - Falling Asteroids
  - Delete Asteroids
  - Apply random Force to Player
  - Trap in Prison
  - Trap in invisible Cage
- Bounty
  - Place Bounty from a custom presaved list
- Lag Area with Vehicles
  - Select from a custom list of Vehicles to lag the area (see [note 5](#notes))
  - Delete Vehicles
- Malicious (Kick / Crash)
  - Kick Player
  - Host Kick Player
  - Crash Player

### Chat-Features

- Chat-Log
- Kick if Russki Char is typed
- Punish Money Beggers (see [note 6](#notes))
- Send Message to 2Take1Script-Users
- Enable Chat-Commands
- Chat-Commands (see [note 7](#notes))
  - `!explode <playername>`
  - `!explodeall` \[SU\]
  - `!kick <playername>`
  - `!kickall` \[SU\]
  - `!crash <playername>`   \[SU\]
  - `!crashall` \[SU\]
  - `!lag <playername>`
  - `!trap <playername>`
  - `!tp <playername>`   \[SU\]
  - `!clearwanted` \[NOT SU\]
  - `!vehicle <name>`
  - `!bigpp <playername>`
  - `!bigppall`   \[SU\]
- Delete Vehicles from `!lag`
- Chat Commands for Friends
- Chat Commands Everyone
- Send Message to [`#general`](discord:/channels/570999086874886154/570999091320979486)

### Custom Vehicles

- Moveable Robot
  - Enable Robot
  - Controllable Blasts
  - Moveable Legs
  - Collision
  - Rocket Propulsion (Visual)
  - Equip Miniguns on hands
  - Drive Robot
- Custom Vehicles
  - Preview Custom Vehicles
  - Delete Custom Vehicles
  - Spawn a Custom Vehicle from a presaved list
- Options
  - Spawn in Custom Vehicle
  - Use Own Vehicle for Custom ones
  - Godmode on Custom Vehicles
  - Disable Moveable Robot Tampa Notify

### Explosive Beam on Horn

- Enable Beam on Horn
- Select Explosion
- Select Explosion 2
- Select Scattering
- Select Min Range
- Select Max Range
- Enable Horn for Player (see [note 8](#notes))

### Better Animal Changer

- Ground Animals
- Water Animals
- Flying Animals
- Standard Models
- Safe Model Change
- Fix endless loading Screen

### PTFX

- Sparkling Ass
- Sparkling Tires (WIP)
- Smoke Area
- Fire Circle
- Fire Fart
- Fire Ass

### Miscellaneous

- Weapon Features
  - Load Weapons (see [note 9](#notes))
  - Flamethrower
    - Select Scale
    - Normal
    - Green
  - Shoot Objects
    - Enable Object Shoot
    - Delete Objects
    - Select Objects from a list
  - Delete Gun
  - Kick Gun
  - Give Demi-God for Player
  - Model Gun
    - Standard Model Gun (PEDs)
    - Add Objects and Vehicles to Model Gun
  - Rapid Fire
- Teleport High in Air
- Vehicle
  - Teleport Own Vehicle to me
  - Teleport Own Vehicle to me and drive
  - Drive Own Vehicle
  - Teleport to Own Vehicle
  - Vehicle Colors
    - Set Speed in Milliseconds
    - Random Colors
      - Random Primary
      - Random Secondary
      - Random Pearlescent
      - Random Neon Lights
      - Random Smoke
      - Random Xenon
    - Rainbow Colors
      - Rainbow Primary
      - Rainbow Secondary
      - Rainbow Pearlescent
      - Rainbow Neon Lights
      - Rainbow Smoke
      - Rainbow Xenon
    - Synced Random Colors
    - Synced Rainbow Colors
    - Synced Smooth Rainbow
    - 100% Black
    - 100% Black-Toggle
    - Fade Black-Red
  - Set Heli Blades Speed 0-100%
  - Boost Vehicle
  - License Plate Speedometer (see [note 10](#notes))
  - No collision
  - Auto Repair Vehicle
- Drive / Walk on the Ocean
- Drive / Walk this Height
- Weird Entity
- Real Time (Clientside)
- Random Clothes
- Gameplay Clear Area
- Clear Area
- Auto Teleport to Waypoint
- Force Police Outfit
- You've Been Banned
- Swap Vehicle Seat
- Fill Snacks and Armor
- Player History
  - Store info in each Lobby subcategory
    - Lobby info (see [note 11](#notes))
      - Shows number of logged Players
      - Hide Lobby from History
    - Players
      - NAME / Copy
      - SCID / Copy
      - IP / Copy
      - PlayerID
      - First Seen
      - Add to Blacklist
      - Add to Remember Modder
      - Copy Outfit
      - Is `<name>` in this lobby?
      - Was he a modder?
- Utils
  - Load Scripts (WIP)
  - autoexec Scripts from folder 'autoload' (see [note 12](#notes))
  - Leave-Session
  - Crash Yourself
  - Auto-Hostkick-Yourself
  - Fuck You
- IPL-Loader
  - Load ALL IPLs from File
  - Select starting line for range
  - Select ending line for range
  - Remove ALL IPLs between selected Range
- Dev Tools
  - Delete Entity from Aim
  - Get input Hash Key
  - Notify & Print String from file
  - Print Info from Entity @Aim to file
  - Clear 2Take1Script.log
  - Clear 2Take1Menu.log files
  - Clear crashdumps
  - Log Modder Flags
  - Enable Log from this Lua-Script

### Bodyguards

- Godmode for Bodyguards
- Set Health of Bodyguards (5000-50000)
- Equip Bodyguards with MG
- Set Formation
- Enable Bodyguards

### Aim Protection

- Enable Aim Protection
- Anonymous Punishment
- Ragdoll Player
- Set on Fire
- Kill Player
- Remove Current Weapon
- Kick Player

### Options

- Hotkey Settings
  - Enable Hotkeys
  - Reload 2Take1Hotkeys.ini
  - Hotkey Notifications
  - Print active Hotkeys
- Menu-Wide-Hotkeys
  - Menu-Wide Hotkey Notifications
  - Exclude Navigation Keys
  - Exclude NoClip Keys
  - Exclude EditorRotation Keys
  - Exclude Keys from File
  - Reload `2Take1Exclude.ini`
- Exclude Friends from Harmful Lobby Events
- Attached Entitys No Collision
- Continuously Assassin Peds
- Disable Player-History
- Force Notification Color
- Show Notification Color
- 2Take1Script Parent
- Save Configuration

## Customize the Script

In order to customize the script, you have to edit the `2Take1Script\2Take1ScriptEXT.lua` file.

Although any text editor will do the work, I'd recommend a specialized code editor, such as **Notepad++**, **Visual Studio Code**, **Atom** or **Sublime Text**.

If you add something to a variable, set it to the last entry.

Here's an example:

```lua
-- This is RIGHT
local array = {
    {"Entry X", 10},
    {"Entry Y", 40},
    {"New Entry", -1},
}

-- This is WRONG
local array = {
    {"Entry X", 10},
    {"New Entry", -1},
    {"Entry Y", 40},
}
```

### Custom Script Events

Edit the `_2t1s_se_custom` global variable.

```lua
_2t1s_se_custom = {
    {"Custom Script Event 1", {
        {0xffffffff, {0, 0, 0}},
        {0xffffffff, {0, 0, 0}},
        {0xffffffff, {}},
    } },
    {"Custom Script Event 2", {
        {0xaaaaaaaa, {1, -1}},
        {0xffffffff, {0, 0, 0}},
    } },
}
```

### Attacker / Assassin PEDs

Edit the `_2t1s_ped_assassins` global variable.

```lua
_2t1s_ped_assassins = {
--  {"Attacker Name", ped_Hash, ped_Type},
    {"Cop", 0x5E3DA4A4, 6},
    {"FIB", 0x5CDEF405, 6},
    {"Juggernaut", 0x90EF5134, 4},
    {"Bigfoot", 0x61D4C771, 28},
}
```

### Punish Money Beggers

Edit the `_2t1s_begger_texts` global variable.

```lua
_2t1s_begger_texts = {
--  "Beg String 1", "Beg String 2, "Beg String 3", "...",
    "money please", "gib mal money hier", "any money dropper", "money dropper anyone?"
}
```

### License Plate Speedometer

Edit the `_2t1s_speedometer_units` global variable.

2Take1Script will convert from **meters per second** to the desired unit. Because of this, you need the **multiply factor** that will be applied in the conversion.

Don't forget to leave a blank space before the short name, otherwise the speed won't be displayed properly.

```lua
_2t1s_speedometer_units = {
--  {" Short Unit", mply_Factor, "Long Unit"},
    {" MPS", 1, "Meter per Second"},
    {" MPH", 2.23694, "Miles per Hour"},
    {" KMH", 3.6, "Kilometers per Hour"},
}
```

- The first unit, MPS, is the default unit, so it uses a multiplier of **1**.
- The third unit, KPH, equals **3.6** times the MPS unit (because 1 kph = 3.6 mps).

### Block Custom Areas

Edit the `_2t1s_block_custom` global variable.

The last line of each custom location will add a **Teleporting Position**.

Instead of setting a fixed position, you can place the objects at a random generated position.  
To do this, instead of typing the exact coordinates as shown above, use the following format:  
`{nil, X1, X2, Y1, Y2, Z1, Z2}`

- `nil` defines that the coordinates will be randomly generated within a prism, whose vertices will be specified next.
- `X1` and `X2` define the range of coordinates for the X axis.
- `Y1` and `Y2` define the range of coordinates for the Y axis.
- `Z1` and `Z2` define the range of coordinates for the Z axis.

And always remember, **the first value has to be the smaller one**.

```lua
_2t1s_block_custom = {
--  {"Example", {
--      {hash, {pos X, Y, Z}, {rot X, Y, Z}, bool_Freeze, bool_Invisible},
--      {false, {teleport_Pos X, Y, Z}, float_Heading},
--      }, },
    {"Block Orbital Room", {
        {3291218330, {335.9567565918, 4834.3325195312, -58.686454772949}, {0, 0, 35}, true, true},
        {3291218330, {326.33291625977, 4827.6704101562, -60.25874710083}, {0, -90, 0}, true, true},
        {false, {342.8, 4838.2, -57}, 121.2},
        }, },
    {"Trees Main LSC", {
        {3015194288, {nil, -415, -350, -165, -97, 36, 45}, {0, 0, 0}, true, false},
        {3015194288, {nil, -415, -350, -165, -97, 36, 45}, {0, 0, 0}, true, false},
        {3015194288, {nil, -415, -350, -165, -97, 36, 45}, {0, 0, 0}, true, false},
        {3015194288, {nil, -415, -350, -165, -97, 36, 45}, {0, 0, 0}, true, false},
        {3015194288, {nil, -415, -350, -165, -97, 36, 45}, {0, 0, 0}, true, false},
        {false, {-370.4, -104.72, 47}, -110.83449554443},
        }, },
}
```

### Custom Attachments

Edit the `_2t1s_custom_attachments` global variable.

Each attachment can be made of many entities; you only have to add more entity identifiers.

```lua
_2t1s_custom_attachments = {
--    {"Name", {
--      {hash, bone_ID, {pos X, Y, Z}, {rot X, Y, Z}, bool_Invisible},
--      }, },
    {"DEMI-GOD - Light", {
        {148511758, 0, {0, 0, 0}, {0, 0, 0}, true},
        }, },
    {"DEMI-GOD - Heavy", {
        {148511758, 0, {0, 0, 0}, {0, 0, 0}, true},
        {3291218330, 0, {0, 0, -3.5}, {0, 90, 0}, true},
        {3291218330, 0, {0, 0, 0}, {0, 90, 0}, true},
        {3291218330, 0, {0, 0, 3.5}, {0, 90, 0}, true},
        }, },
    {"Cat Cap", {
        {0x573201B8, 119, {0, -0.075, 0.3}, {0, 0, 0}},
        }, },
}
```

The third example, "Cat Cap", uses a **ped hash**.

### New Custom Vehicles

Edit the `_2t1s_custom_vehicles` global variable.

This is the most complicated part of the Lua, but let's take it step by step.

1. The first line contains all **vehicle/object hashes** you want to use for the custom vehicle.
2. The next lines will define how each vehicle/object will be placed in the custom vehicle. You have to repeat this line for every hash you defined above. Keep in mind that the first of the hashes will define the **starting vehicle**.

- `hash`  
  This is the hash to which the next parameters will be applied.
- `{pos X, Y, Z}`  
  Set the offset of the entity.
- `{rot X, Y, Z}`  
  Set the rotation of the entity.
- `{primary_Color, secondary_Color, pearlescent, wheel, window}`  
  If the entity is a vehicle, set the primary/secondary/pearlescent/wheel color (all HEX RGB) and the window tint (0 to 3).
- `bool_Invisible`  
  Set this to `true` to render the entity invisible.
- `int_SpawnHeight`  
  If you have a plane as a starting vehicle, this value will let you spawn it at a certain amount of meters above the current location.
- `int_BoneIndex`  
  Set a boneindex if you want to attach something, for example, to the wheels.
- `int_AttachToEntity`  
  By default, everything will be attached to the first (starting) vehicle. To change that, just set it to the line number defining the vehicle where it should be attached.
- `ped_Hash`  
  To get the engine of a helicopter/plane running, you can set here a ped hash. The ped will be spawned into the vehicle, and the doors will be locked after it.
- `bool_NoCollision`  
  Set it to `true` to disable the collision for this entity.
- `int_Offset`  
  Defines how many meters away the entity should be spawned in front of you (especially for the preview).
- `int_OffsetZPreview`  
  Defines the height of the vehicle during the preview.
- `int_Alpha`  
  Some vehicles will glitch put if you render them invisible. Instead, set the Alpha to `0`.

The position/rotation *should* always be `nil` for the starting vehicle.

Setting some value to `nil` will set the default setting for it.  
For example, the color for each vehicle will be randomly selected.

Setting the starting vehicle's hash to `0` will check if you're in a vehicle and if the "Use own Vehicle" option is enabled.  
If that's the case, your current vehicle will become the "base", on which the rest of the entities will be attached.

```lua
_2t1s_custom_vehicles = {
--  {"Name", {
--      {hash1, hash2, hash3, ...}
--      {hash, {pos X, Y, Z}, {rot X, Y, Z}, {primary_Color, secondary_Color, pearlescent, wheel, window}, bool_Invisible, int_SpawnHeight, int_BoneIndex, int_AttachToEntity, ped_Hash, bool_NoCollision, int_Offset, int_OffsetZPreview, int_Alpha},
--      }, },
    {"WarMachine", {
        {0x9dae1398, 1030400667, 0x2F03547B, 2971578861, 3871829598, 3229200997, 0x187D938D, 782665360},
        {0x9dae1398, nil, nil, {0, 0, 0, 0, 1}, nil, nil, nil, nil, nil, nil, 15},
        {1030400667, {0, -4, 0}, nil, {0, 0, 0, 0, 1}},
        {0x2F03547B, {0, -8, 4}, {-90, 0, 0}, {0, 0, 0, 0, 1}, true, nil, nil, nil, 0x97F5FE8D, true},
        {2971578861, {-0.3, -0.6, 9.8}, {-90, 0, 0}, nil, nil, nil, 16, 3},
        }, },
    {"Attach Ramp", {
        {3233397978},
        {0},
        {3233397978, {0, 4.5, 0.25}, {0, 0, 180}},
        }, },
}
```

### Vehicle Lag Area

Edit the `_2t1s_vehicle_lag_area` global variable.

```lua
_2t1s_vehicle_lag_area = {
--  {"Name", Hash},
    {"Cargoplanes", 0x15F27762},
    {"Volatols", 0x1AAD0DED},
}
```

### Bounty

Edit the `_2t1s_bounty_amount` global variable.

The amount value must be between 0 and 10000.

```lua
_2t1s_bounty_amount = {
--  amount1, amount2, amount3, ...
    0, 1, 10, 69, 420, 666, 1337, 5555, 9999, 10000
}
```

### SMS List

Edit the `_2t1s_sms_texts` global variable.

```lua
_2t1s_sms_texts = {
--  "Message 1", "Message 2", "Message 3", "..."
    "Fucking bitch", "REKT", "NOOB", "GET ON MY LEVEL", "Send Nudes", "UR MOM GAY"
}
```

### Modded SCIDs / IPs

Edit the `_2t1s_modded_ips` and `_2t1s_modded_scids` global variables.

```lua
_2t1s_modded_ips = {
--  ip1, ip2, ip3, ...
}
```

```lua
_2t1s_modded_scids = {
--  scid1, scid2, scid3, ...
}
```

The IPs are stored in [decimal](https://awebanalysis.com/en/decimal-to-ip-address/).

### Load Weapons

Edit the `_2t1s_weapons` global variable.

```lua
_2t1s_weapons = {
--  {weapon_Hash, attachment1_Hash, attachment2_Hash, attachment3_Hash, ...},
    {0x1B06D571, 0xD7391086},
    {0x22D8FE39, 0x249A17D5, 0x359B7AAE, 0xC304849A, 0x9B76C72C},
    {0xCB96392F, 0xEFBF25, 0x420FD713, 0x27077CCB},
}
```

## Known Issues

- **Kick Hosts until You become Host** can cause issues!
- Too many **Custom Vehicles / PEDs / Objects** may cause issues! Just delete them after use.
- **Realtime** is likely to make the clouds flash (this should be fixed, but doesn't work 100%).
- After disabling **2Take1Script-Parent**, you have to reload the script
- Some features won't work properly if the distance between you and the target is too long.
- When the script gets autoloaded (for example, with an `autoexec.lua`), the **Event Listeners** (Chat features, etc) might not work.
- If you crash on inject / script load, delete the `2Take1Script.ini` file in the `2Take1Script` folder.
- For some users Moist autoload folder will crash the game. -\> Instead use my autoload-Feature
- Teleport to Waypoint will teleport you near a street.
- Enabling Vehicle Colors might wont apply, press the Feature a few times.

## Notes

1. These features are disabled by default. You may enable them by setting `enable_rockstar_admin_kick_crash` to `true` at the end of the **2Take1ScriptEXT.lua** file, but keep in mind that ***this will nullify any Ban Report you may fill up in the future!***
2. There's always chances to get some false positives. I keep looking into reducing the false positive rate.
3. If you use **Block** features while having this enabled, you'll be teleported to the location right before it will be blocked.
4. These will spawn explosions all over the map, though you better not expect people from dying of it. Due to how GTA works, explosions won't spawn sometimes if the distance between you and the explosion is too long.
5. This feature will spawn 50 Vehicles at the Target. You can choose from a custom list of vehicles.
6. To detect a money begger, it will search the chat for phrases like "give me money". Since I can't predict every constellation of begging strings, you can add own phrases to the detection.
7. **\[SU\]** stands for Script User. Since these commands are very powerful and could be abused, I decided to set them only usable by yourself.
8. Pressing **`E`** while this feature is enabled will spawn a few explosions in the direction you're moving. When setting the value from `Enable Horn for Player` to a valid Player ID, the Explosive Beam will be set for the selected Player. To take affect you have to reenable this feature.
9. This will load a weapon choice of mine. If you don't like it, you can edit which weapons will be loaded.
10. Currently, there are 14 Units to display the speed. If it's still not enough, you can add some of your own.
11. The feature `Lobby Information` will only be visible, when you enter a new session.
12. You have to create the folder yourself, i wont deliever this folder in my script.  
After enabling this option, the script will sleep and then load all scripts with the extention `.lua`.

## Common Questions

> How do I add stuff?

- See [**Customize the Script**](#customize-the-script)

> How do I enter a Custom Vehicle?

- Enable **Spawn in Vehicle** under **Settings**.

> Some vehicles won't work, like "Attach Ramp"

- Enable **Use own Vehicle**, and enter any car.

> Does it work with other scripts?

- It should work - it has been tested with a few other scripts. But i dont officially support co-loads.

> Does it work after a GTA Update?

- Chances are very high for all **Script Event** features to break is; everything else *should* be fine.

> Does it work after a 2T1 Update?

- Yes, under normal circumstances.

> How do I reset the script config?

- Delete the  `2Take1Script.ini` file in the  `2Take1Script\` folder.

> My game crashed when i load the script?

- Delete the  `2Take1Script.ini` file in the  `2Take1Script\` folder.

> I dont see the Script in the menu?

- Press "Refresh Scripts"

> The kick from the script did not worked on a player?

- The kick will only not work, when the target is a modder. He is probably blocking the script events.

> I downloaded the new version, but i dont see the new features?

- Clear the cache of the Browser and make sure you deleted every old file.

> I dont see the Online-Player Features?

- They are not in Local -\> Script Features located. Go to the Online Tab and select a Player. Under Script Features you will see the Features.

> How do i autoload this script?

- Rename this script to `autoexec.lua`

> I have already a file called `autoexec.lua`?

- Rename the other file and use my Autoload-Feature

> How do i use the autoload feature?

- Create a folder `autoload` in the scripts folder and place the script you wish to get loaded inside.  
  In the game, select my script -\> Miscellaneous -\> Utils -\> `autoexec Scripts from folder 'autoload'`
- Or Create a new file called `autoexec.lua` and paste this into it:

    ```lua
    if not require("2Take1Script") then
        ui.notify_above_map("ERROR Loading Script, returning!", "Auto-Loader", 208)
    end
    ```

- Or just paste the code snippet above to your other `autoexec.lua`

## Changelog

### 2020-11-02

- Player History
  - Store Players in Lobby Sub-Category
  - Show Name / Copy Name
  - Show Player ID
  - Added [Y] and [F] tags
  - Lobby informations
  - Show amount of logged Players per Lobby
  - Hide Lobby from history
- Moved 'Unmark Modder' to top of Player Script Features
- Moved 'Send Message #general' to Chat Features
- Moved Config/CustomFiles to sub folder
- Moved Custom Vehicle Options to Custom Vehicle Section
- Player Script Features
  - Log Events
    - Log Script Events
    - Reset Script Event Log
    - Log Net Events
    - Reset Net Event Log
- Added Moveable Robot -> Custom Vehicles
  - Enable Robot
  - Controllable Blasts
  - Moveable legs
  - Collision
  - Rocket Propulsion (Visual)
  - Disable Notify in Options for Tampa Notify
  - Drive Robot
  - Equip Miniguns on Arms
- Fill Snacks and Armor -> Misc
- Disable Player-History -> Options
- Added Sections to Settings File
- Custom Vehicle Build Helper (DEV ONLY)
- Added Custom Vehicles
- Added Auto Repair Vehicle -> Misc -> Vehicle
- Menu-Wide-Hotkey Notifications
  - Exclude specific Hotkey-Groups
  - Exclude Hotkeys from a CustomFile "2Take1Exclude.ini"
- Added Vehicles Sub Category in Lobby
  - Moved Disable Control in Sub-Menu
  - Modify Vehicle Speeds
  - Reset Modifies
  - Include Self & Friends
  - Overwrite default Speedlimit
- Rewrote parts of the script
- Added Kick Gun -> Misc -> Weapons
- Added Give Demi-God Gun -> Misc -> Weapons

### 2020-10-15

- Minor improvments
- Unmark from Modder
- Clear Area
- No Collision vehicle
- Rapid fire (WIP) (not 2.4.2)
- Trap in invisible cage
- Player history
  - Shows SCID / Copy SCID
  - Shows IP / Copy IP
  - First seen
  - Add Player to Blacklist
  - Add Player to Remember-Modder
  - Copy Outfit
  - Is `<name>` in this lobby?
  - Was he a modder?
- Log Modder Flags
- Modder-Detection: Forcing Script-Host (WIP)
- Removed Rat

### 2020-09-27

- Added More Custom Vehicles
- Safety checks for folder structure
- Send message to discord #general
- Xenon colors (not 2.4.2)
- Fade Black-Red
- Kill all Peds
- Internal changes
- Kick new joining Players
- Force Police-Outfit
- Aim protection
  - Anonymous punishment
  - Ragdoll player
  - Set on Fire
  - Kill player
  - Remove Current Weapon
  - Kick player
- Force Notification Color
- Fire Fart
- Fire Ass
- Set Heli Blades Speed 0-100%
- Included Fuck You
- Add Custom Script Event presets to `2Take1ScriptEXT.lua`
- Input Script Event with Parameters to send
- Improved handling with Teleport Own Vehicle
- Teleport Own Vehicle to me and drive
- Drive Own Vehicle
- Teleport to own Vehicle
- Minor changes to Modder-Detection
- Send Message to other 2Take1Script-User
- Hotkey Support
- Hotkey Notifications
- Print active Hotkeys

### 2020-09-13

- Less false positives for Modder-Detection
- Fixed kick features
- Fixed some options wont save properly
- Karma every script event
- Load Weapons -\> Toggle-Feature
- Auto-Load scripts from folder `autoload`
- SMS-Features for Lobby
- Laser Beam Explode Waypoint
- Improved Flamethrower
- Repair Vehicle for other Player
- Delete Gun
- Clear 2Take1Script.log
- Clear 2Take1menu.log files
- Clear crashdumps
- Many more Vehicle Color-Modes
- 100% Black
- 100% Black-Toggle
- Moved Sparkling-Ass to own PTFX-Category
  - Smoke Area
  - Fire Circle
  - Sparkling Tires (WIP)

### 2020-09-06

- Fixed `!bigpp` Command
- Fixed bug Script Events getting blocked
- Fixed Exclude Friends not working sometimes
- Fixed Modder-Database-File bug not recognizing some entrys
- Added `!bigppall` Command
- Changed Bodyguards weapon
- Waypoint Player
- Added Send to Mission back
- Modify Speed of other Player Vehicle
- Added Leave-Session to Script (Misc -\> Utils)
- Added Crash-Yourself to Script (Misc -\> Utils)
- Added Auto-Hostkick-Yourself to Script (Misc -\> Utils)
- Added Vehicle Colors
  - Set Speed in Milliseconds
  - Random Neon Lights
  - Rainbow Neon Lights
  - Random Smoke
  - Rainbow Smoke
  - Synced Random Colors
  - Synced Rainbow Colors
- Modded Net-Events Modder Detection
- Added Modder-Flags to Modder Detection
- Sparkling Ass

### 2020-08-22

- Changeable amount for Bounty after death
- Detect Rockstar-Admin by SCID
  - Auto-Kick / Crash
- Swap Vehicle Seats
- Modded IP / SCID Modder Detection
- Model Gun
- More Custom Vehicles
- More Custom Attachments
- Updated most Script-Events for GTA:O 1.51
- Bodyguards
- Removed Teleport / Block REQ-CTRL Modder Detection
- Removed strong kicks
  > Some users shared these kicks to the competence, and thus got patched...
- Safty Checks for Players / Files / Threading Mode
- Flamethrower

### 2020-08-02

- Improvments
- Little Modder Detection
- Remember every Modder and remark Modder
- Delete Entity from Aim (Misc -\> Dev)
- IPL-Config
- Added Speedometer Units (from 8 to 14)
- Remote Control Vehicle
- Weird Enity
- Improved Auto-Teleport-To-Waypoint
- Block 2 Locations with Trees
- Reworked Shoot Entitys (Removed some of weird behaviour, added more Objects)
- Improved Kick-System
- Added back a few Chat-Features (They might still not work 100%, but atleast there shouldnt be any crashes anymore)
- Moved many Things to a seperated file. (Located in the `2Take1Script\`  folder in `2Take1ScriptEXT.lua`)

### 2020-07-20

- Improved drive on water / height
- Improved time sync
- Shoot tanks, bikes and a few others. (work in progress)
- Disabled all chat features temporarily (enabling is possible)
- Added Punish aliens
- Added disable control of vehicles
- Added more vehicles for the blacklist
- Added more custom vehicles
- Added a feature to Punish someone with a bounty if he dies
- Many many many improvements

### 2020-06-17

- Added a Speedometer
- Added more Chat Commands
- Added Custom Vehicle Spawn Preview (like in the real menu)
- Punish Money Beggers
- Many Improvements (especially for the Vehicle Spawner and hopefully decreasing risk to crash while using Blocklist)
- Added DEMI-GOD Attachment

### 2020-06-15

- Set Bounty
- Host Kick
- Kick Hosts until u become Host
- Added Custom Vehicles
- Improved Vehicle Spawner
- 100% compatible with Sai's Script Loader
- Fixed Crashes
