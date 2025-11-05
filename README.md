# 🌺 𝓜𝓲𝓵𝓵𝓱𝓲𝓸𝓻𝓮 𝓣𝓕𝓢 𝓓𝓸𝔀𝓷𝓰𝓻𝓪𝓭𝓮 🌺
### 🐱 [Based nekiro downgrade.](https://github.com/nekiro/TFS-1.5-Downgrades)

- This downgrade is not download and run distribution, monsters and spells are probably not 100% correct.
- You are welcome to submit a pull request though.

## 🛠 It is currently under development. ⚙

## OTCv8 Client Configuration

To ensure proper compatibility with OTCv8 client and avoid errors such as black screen, crashes, or connection issues, you need to configure the client features in the OTCv8 client files.

### Required Configuration

Navigate to your OTCv8 client installation directory and edit the file:
```
data/modules/game_features/feature.lua
```

Add the following code inside the file to enable the required features for protocol version 860:

```lua
if(version >= 860) then
    g_game.enableFeature(GameAttackSeq)
    g_game.enableFeature(GameBot)
    g_game.enableFeature(GameExtendedOpcode)
    g_game.enableFeature(GameChangeMapAwareRange)
    g_game.enableFeature(GameMapDrawGroundFirst)        
    g_game.enableFeature(GameSkillsBase)
    g_game.enableFeature(GamePlayerMounts)
    g_game.enableFeature(GameMagicEffectU16)
    g_game.enableFeature(GameDistanceEffectU16)
    g_game.enableFeature(GameOfflineTrainingTime)
    g_game.enableFeature(GameDoubleSkills)
    g_game.enableFeature(GameBaseSkillU16)
    g_game.enableFeature(GameAdditionalSkills)
    g_game.enableFeature(GameWingsAndAura)
    g_game.enableFeature(GameOutfitShaders)
    --g_game.enableFeature(GameSpritesU32) -- Extended sprites
    --g_game.enableFeature(GameSpritesAlphaChannel) -- Transparency
end
```

**Important:** These features are essential for proper compatibility with the server. Without them, you may experience:
- Black screen when connecting
- Connection errors
- Missing game features
- Client crashes

Make sure to add this configuration before connecting to the server.

## How to compile

[Compiling on Ubuntu](https://github.com/MillhioreBT/forgottenserver-downgrade/wiki/Compiling-on-Ubuntu)

[Compiling on Windows](https://github.com/MillhioreBT/forgottenserver-downgrade/wiki/Compiling-on-Windows-(vcpkg))

## Contributing

Pull requests are welcome.
Just make sure you are using english/spanish language.

## Bugs

If you find any bug and believe it should be fixed, submit an issue in [issues section](https://github.com/MillhioreBT/forgottenserver-downgrade/issues), just please follow the issue template.
