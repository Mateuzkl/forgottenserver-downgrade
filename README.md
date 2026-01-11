# 🌺 𝓜𝓲𝓵𝓵𝓱𝓲𝓸𝓻𝓮 𝓣𝓕𝓢 𝓓𝓸𝔀𝓷𝓰𝓻𝓪𝓭𝓮 🌺

[![Build status](https://ci.appveyor.com/api/projects/status/github/Mateuzkl/forgottenserver-downgrade?branch=official&svg=true)](https://ci.appveyor.com/project/Mateuzkl/forgottenserver-downgrade)

### 🐱 [Based nekiro downgrade.](https://github.com/nekiro/TFS-1.5-Downgrades)

- This downgrade is not download and run distribution, monsters and spells are probably not 100% correct.
- You are welcome to submit a pull request though.

## 🛠 It is currently under development. ⚙

## How to compile

[Compiling on Ubuntu](https://github.com/MillhioreBT/forgottenserver-downgrade/wiki/Compiling-on-Ubuntu)

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
    g_game.enableFeature(GameSpritesU32) -- Extended sprites
    --g_game.enableFeature(GameSpritesAlphaChannel) -- Transparency
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

## 🧩 Client With DLL (Extensions & Mounts)

### 📥 Download Client
[Client v8.60 with DLL & Mounts](https://github.com/Mateuzkl/Client-cip-8.60-with-DLL-Mount)

### ⚠️ Important Configuration

If you are using the custom Client with DLL injection (for Mounts and other extensions), you **MUST** configure your server correctly to avoid player disconnections (kicks).

The DLL requires the server to send a periodic verification packet ("DLL Check"). If disabled, the client will disconnect.

### Required config.lua Settings

```lua
-- DLL Check Configuration
-- Sends the DLL verification packet. REQUIRED 'true' for the DLL Client to work.
dllCheckKick = true

-- Time in seconds between checks.
-- CRITICAL: Must be set to 5 seconds to match the DLL's internal heartbeat.
dllCheckKickTime = 5
```

### How It Works

1. The DLL client expects periodic verification packets from the server
2. If `dllCheckKick` is set to `true`, the server will send these packets
3. The interval between packets is controlled by `dllCheckKickTime` (in seconds)
4. **Default recommended value: 5 seconds** - this matches the DLL's internal heartbeat

### Troubleshooting

- **Players keep disconnecting?** Make sure `dllCheckKick = true` and `dllCheckKickTime = 5`
- **DLL not working?** Verify both settings are properly configured in your `config.lua`
- **Custom heartbeat?** You can adjust `dllCheckKickTime` if needed, but 5 seconds is the standard

## Contributing

Pull requests are welcome.
Just make sure you are using english/spanish language.

## Bugs

If you find any bug and believe it should be fixed, submit an issue in [issues section](https://github.com/MillhioreBT/forgottenserver-downgrade/issues), just please follow the issue template.
