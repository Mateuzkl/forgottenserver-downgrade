# 🌺 𝓜𝓲𝓵𝓵𝓱𝓲𝓸𝓻𝓮 𝓣𝓕𝓢 𝓓𝓸𝔀𝓷𝓰𝓻𝓪𝓭𝓮 🌺

[![Build status](https://ci.appveyor.com/api/projects/status/github/Mateuzkl/forgottenserver-downgrade?branch=official&svg=true)](https://ci.appveyor.com/project/Mateuzkl/forgottenserver-downgrade)

### 🐱 [Based nekiro downgrade.](https://github.com/nekiro/TFS-1.5-Downgrades)

**Version: TFS 1.7 | Protocol: 8.60**

- This downgrade is not download and run distribution, monsters and spells are probably not 100% correct.
- You are welcome to submit a pull request though.

## 🛠 It is currently under development. ⚙

## 📥 Quick Start - Download Pre-compiled Binaries

**Don't want to compile? No problem!** You can download the latest pre-compiled binaries from AppVeyor:

### Step-by-Step Guide:

1. **Visit the AppVeyor builds page**: 
   - Go to: https://ci.appveyor.com/project/Mateuzkl/forgottenserver-downgrade
   
2. **Select the latest successful build**:
   - Click on the most recent build with a ✅ green checkmark
   - Example: https://ci.appveyor.com/project/Mateuzkl/forgottenserver-downgrade/builds/53194264

3. **Download the artifacts**:
   - Click on the **"Artifacts"** tab at the top
   - Scroll down to find the **"zips"** folder
   - Click on **"tfs.zip"** to download

4. **Extract and replace**:
   - Extract the downloaded `tfs.zip` file
   - Copy all `.dll` files and `theforgottenserver-x64.exe` from the zip
   - Paste them into your server folder (replace existing files)

5. **Run the server**:
   - Double-click `theforgottenserver-x64.exe` to start your server
   - Done! 🎉

**Note**: This method is perfect for quick testing or if you don't have a compiler installed.

---

## 🔨 How to Compile (Advanced Users)

### Compiling on Ubuntu 22.04

```bash
sudo apt install git cmake build-essential libluajit-5.1-dev libmysqlclient-dev libboost-system1.74-dev libboost-iostreams1.74-dev libboost-filesystem1.74-dev libboost-locale1.74-dev libpugixml-dev libfmt-dev libssl-dev libspdlog-dev -y
```

```bash
git clone https://github.com/Mateuzkl/forgottenserver-downgrade.git
cd forgottenserver-downgrade
mkdir build && cd build
cmake ..
make -j$(nproc)
```

### Compiling on Ubuntu 24.04

```bash
sudo apt install git cmake build-essential libluajit-5.1-dev libmysqlclient-dev libboost-system1.83-dev libboost-iostreams1.83-dev libboost-filesystem1.83-dev libboost-locale1.83-dev libpugixml-dev libfmt-dev libssl-dev libspdlog-dev -y
```

```bash
git clone https://github.com/Mateuzkl/forgottenserver-downgrade.git
cd forgottenserver-downgrade
mkdir build && cd build
cmake ..
make -j$(nproc)
```

### Compiling on Windows (vcpkg)

[Compiling on Windows](https://github.com/MillhioreBT/forgottenserver-downgrade/wiki/Compiling-on-Windows-(vcpkg))

## Client Update (OTCv8)

If you are using **OTCv8** client, you need to enable the correct game features for version **860**.

Add the following code to your client's `modules/game_features/game_features.lua` file:

```lua
if(version >= 860) then
    g_game.enableFeature(GameAttackSeq)
    g_game.enableFeature(GameBot)
    g_game.enableFeature(GameExtendedOpcode)       
    g_game.enableFeature(GameSkillsBase)
    g_game.enableFeature(GamePlayerMounts)
    g_game.enableFeature(GameMagicEffectU16)
    g_game.enableFeature(GameOfflineTrainingTime)
    g_game.enableFeature(GameDoubleSkills)
    g_game.enableFeature(GameBaseSkillU16)
    g_game.enableFeature(GameAdditionalSkills)
    g_game.enableFeature(GameIdleAnimations)
    g_game.enableFeature(GameEnhancedAnimations)
    g_game.enableFeature(GameSpritesU32)
    g_game.enableFeature(GameExtendedClientPing)
    g_game.enableFeature(GameChangeMapAwareRange)
end
```

**Note:** Make sure to check your OTCv8 client version and adjust the version check accordingly.

### 📦 Using Extended Sprites (GameSpritesU32)

To use the extended sprites feature, you need to extract the sprite files from the provided `.rar` archive:

1. **Download the sprite archive**: Look for the `860 by marko.rar` file in the repository
2. **Extract the files**: Extract the `.spr` and `.dat` files from the archive
3. **Copy to OTCv8**: Place the extracted `.spr` and `.dat` files into your OTCv8 client directory
4. **Enable the feature**: Make sure `g_game.enableFeature(GameSpritesU32)` is enabled in your `game_features.lua` file (already enabled above)
5. **Enjoy**: Start your client and use the extended sprites!

**Important**: The `.spr` and `.dat` files must match the client version (860) for proper functionality.

## 🧩 Client With DLL (Extensions & Mounts)

**[📥 Download Client (v8.60 with DLL & Mounts)](https://github.com/Mateuzkl/Client-cip-8.60-with-DLL-Mount)**

If you are using the custom Client with DLL injection (for Mounts and other extensions), **you MUST configure your server correctly** to avoid player disconnections (kicks).

The DLL requires the server to send a periodic verification packet ("DLL Check"). If disabled, the client will disconnect.

**Required `config.lua` settings:**

```lua
-- DLL Check Configuration
-- Sends the DLL verification packet. REQUIRED 'true' for the DLL Client to work.
dllCheckKick = true

-- Time in seconds between checks.
-- CRITICAL: Must be set to 5 seconds to match the DLL's internal heartbeat.
dllCheckKickTime = 5
```

## 🎮 New Systems & Features

This custom version includes several enhanced systems and features:

### ⚔️ Tier & Classification System
- Items can have **Tier** and **Classification** attributes
- Tier system allows for item upgrades and progression
- Classification system for categorizing items
- Fully integrated with Lua scripting API

### 🏆 Reward Boss System
- **Reward Boss** system similar to Global Tibia
- Tracks player contribution (damage done, damage taken, healing done)
- Distributes rewards based on contribution score
- Supports multiple contributors with proportional loot distribution
- Rewards are stored in reward containers (ID: 21518) and reward chests (ID: 21584)
- Configurable reward rates via config manager

### 💤 Offline Training System
- Train skills while offline using beds
- Available skills: Sword, Axe, Club, Distance, Shielding, and Magic Level
- Premium account required
- Commands:
  - `!train <skill>` - Select skill to train (sword, axe, club, distance, shielding, magic)
  - `!sleep` - Start offline training (must be near a bed inside a house)
- Automatically calculates training time based on logout duration
- Maximum training time: 12 hours per session

### 🏰 Guild Halls System
- **Guild Leaders** and **Vice-Leaders** can purchase guild halls
- Guild halls are purchased using guild bank balance
- Only one guild hall per guild
- Guild halls support all house features (doors, beds, etc.)
- Commands:
  - `!buyhouse` - Purchase a guild hall (Leader/Vice-Leader only)
  - `!leavehouse` - Leave/abandon a guild hall (Leader/Vice-Leader only)

### 🛡️ House Protection System
- **Per-house protection** system (not global)
- House owners can enable/disable protection for their specific house
- When protection is enabled, only the owner and authorized guests can move items
- When protection is disabled, anyone can move items
- Protection state persists across server restarts
- Commands:
  - `!protecthouse on` - Enable protection for your house
  - `!protecthouse off` - Disable protection for your house
  - `!protecthouse` - Check current protection status
  - `!houseguest add <name>` - Add a player to the protection guest list
  - `!houseguest remove <name>` - Remove a player from the protection guest list
  - `!houseguest list` - List all protection guests
- **Guild Halls**: Leaders and Vice-Leaders can use protection commands
- **Normal Houses**: Only the owner can use protection commands
- Door messages show house ownership when clicking on house doors

### ⚡ Improved Decay System
- Enhanced decay system for better performance
- Optimized item decay processing
- Improved decay state management
- Better handling of decay timers and item removal

### 📺 Live Cast System
- Stream your gameplay for other players to watch
- Works with both **OTCv8** and **CIP 8.60** clients
- Spectators can chat in the Live Cast channel
- **Cast EXP Bonus**: Earn extra experience while streaming (configurable)
- Commands:
  - `!cast` - Start live casting
  - `!cast` - Stop live casting
  - `/commands` - View spectator commands (in cast channel)
  - `/spectators` - View current spectators
  - `/kick <name>` - Kick a spectator
  - `/mute <name>` - Mute a spectator
  - `/ban <name>` - Ban a spectator

**config.lua settings:**
```lua
-- Cast EXP Bonus
castExpBonus = true
castExpBonusPercent = 5
```

## Contributing

Pull requests are welcome.
Just make sure you are using english/spanish language.

## Bugs

If you find any bug and believe it should be fixed, submit an issue in [issues section](https://github.com/MillhioreBT/forgottenserver-downgrade/issues), just please follow the issue template.
