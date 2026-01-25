# 🌺 𝓜𝓲𝓵𝓵𝓱𝓲𝓸𝓻𝓮 𝓣𝓕𝓢 𝓓𝓸𝔀𝓷𝓰𝓻𝓪𝓭𝓮 🌺

[![Build status](https://ci.appveyor.com/api/projects/status/github/Mateuzkl/forgottenserver-downgrade?branch=official&svg=true)](https://ci.appveyor.com/project/Mateuzkl/forgottenserver-downgrade)

### 🐱 [Based nekiro downgrade.](https://github.com/nekiro/TFS-1.5-Downgrades)

**Version: TFS 1.7 | Protocol: 8.60**  
_Developed by MillhioreBT & Mateuzkl_

---

## 🚀 Overview

This is a **custom modified version** of The Forgotten Server, downgraded to protocol 8.60 but running on the modern TFS 1.7 engine. It includes numerous exclusive systems and improvements.

---

## 🎮 New Systems & Features

This custom version includes several enhanced systems and fully integrated features:

### 🛡️ AutoLoot System
- **Fully Integrated**: Built directly into the source for maximum performance.
- **Commands**: 
  - `!autoloot` - Opens the GUI management window.
  - `!autoloot on/off` - Quickly toggle the system.
  - `!autoloot clear` - Clear your loot list.
- **Bank Integration**: Automatically deposits gold if "AutoMoney" mode is enabled.

### ⚔️ Tier & Classification System
- Items can have **Tier** and **Classification** attributes.
- **Upgrades**: Tier system allows for item upgrades and strong progression.
- **Classification**: System for categorizing items by rarity or power.
- Fully integrated with Lua scripting API for custom RPG systems.

### 🏆 Reward Boss System
- **Tibia-like Rewards**: Global Tibia style boss reward system.
- **Contribution Tracking**: Tracks damage done, damage taken, and healing done.
- **Fair Distribution**: Distributes loot based on contribution score.
- **Reward Chests**: Rewards are stored in reward containers (ID: 21518/21584).
- Configurable reward rates via config manager.

### 💤 Offline Training System
- Train skills while offline using beds (Premium required).
- **Skills**: Sword, Axe, Club, Distance, Shielding, and Magic Level.
- **Commands**:
  - `!train <skill>` - Select skill to train.
  - `!sleep` - Start offline training (must be near a bed).
- Automatically calculates gain based on logout duration (Max 12h).

### 🏰 Guild Halls System
- **Guild Leaders** can purchase special Guild Halls.
- Paid via Guild Bank balance.
- **Features**: Supports all house features (doors, beds, protection).
- **Commands**:
  - `!buyhouse` - Purchase a guild hall (Leader/Vice-Leader).
  - `!leavehouse` - Abandon the hall.

### 🛡️ House Protection System
- **Per-house control**: Owners can toggle protection state.
- **Secure**: When enabled, ONLY owner and guests can move items.
- **Commands**:
  - `!protecthouse on/off` - Toggle protection.
  - `!houseguest add/remove/list` - Manage safe list.
- Door messages show real ownership info.

### ⚡ Improved Decay System
- Enhanced decay system for better server performance.
- Optimized item decay processing and state management.

### 📺 Live Cast System
- Stream your gameplay (`!cast`) for others to watch.
- **Bonus**: Configurable EXP bonus for active casters.
- **Spectators**: Can chat in the Live Cast channel.
- **Commands**: `/spectators`, `/kick`, `/mute`, `/ban` (for broadcasters).

---

## 🛠️ Compilation

### 🐧 Ubuntu 22.04 / 24.04

```bash
# Install dependencies
sudo apt install git cmake build-essential libluajit-5.1-dev libmysqlclient-dev libboost-system-dev libboost-iostreams-dev libboost-filesystem-dev libboost-locale-dev libpugixml-dev libfmt-dev libssl-dev libspdlog-dev -y

# Clone and compile
git clone -b Revscrypt-full --single-branch https://github.com/Mateuzkl/forgottenserver-downgrade-1.7-8.60.git
cd forgottenserver-downgrade-1.7-8.60
mkdir build && cd build
cmake ..
make -j$(nproc)
```

### 🪟 Windows

Recommended usage with **vcpkg**. See [Wiki Guide](https://github.com/MillhioreBT/forgottenserver-downgrade/wiki/Compiling-on-Windows-(vcpkg)).

---

## 📦 Client Configuration (OTCv8)

To fully utilize features like extended sprites and mounts, updates are required:

**1. Update `modules/game_features/game_features.lua`:**

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

**2. Extended Sprites (GameSpritesU32)**
- Download the sprites: [860-otcv-revisado2.rar](https://www.mediafire.com/file/iyas69j0sanddyr/860-otcv-revisado2.rar/file)
- Extract `.spr` and `.dat` to your OTCv8 directory.

> **Client With DLL (Mounts)**: [Download Client 8.60 + DLL](https://github.com/Mateuzkl/Client-cip-8.60-with-DLL-Mount).*

---

## 🐛 Contributing & Issues

Found a bug? Please report it on our [Issues Page](https://github.com/MillhioreBT/forgottenserver-downgrade/issues).
Pull requests are welcome!

_Maintained by Mateuzkl._
