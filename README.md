# HbkArchipelago

A mod for connecting Hi-Fi RUSH to an Archipelago server.

## How to install

1. Download the zip package from the releases.

2. Open the folder where Hi-Fi RUSH is installed. 
    - Steam: Right click Hi-Fi RUSH, click Manage, then click Browse local files.
    - Xbox: Right click Hi-Fi RUSH, click Manage, click Files, click Browse, then open the folder for Hi-Fi RUSH.

3. Go to the folder where the game's main executable is located.
    - Steam: `...\Hi-Fi RUSH\Hibiki\Binaries\Win64`
    - Xbox: `...\Hi-Fi RUSH\Content\Hibiki\Binaries\WinGDK`

4. Extract the files from the zip package into the folder.

## How to uninstall

To uninstall the mod and UE4SS, go to the same location used in step 3 from before, and remove all files *except* the following:

Steam (`...\Hi-Fi RUSH\Hibiki\Binaries\Win64`):
- `Hi-Fi RUSH.exe`
- `OpenImageDenoise.dll`
- `tbb12.dll`

Xbox (`...\Hi-Fi RUSH\Content\Hibiki\Binaries\WinGDK`):
- `Hi-Fi RUSH.exe`
- `GameChat2.dll`
- `XCurl.dll`

## Connecting to a server

To connect to a server for the first time, start a new save file and skip the cutscenes until Track 1 is loaded. You can check is Track 1 is loaded by pausing the game.

Once you are in Track 1, open the console by pressing tilde `~` or F10.

You can change either of these keys by modifying the `local KeysToAdd` in `...\ue4ss\Mods\ConsoleEnablerMod\main.lua`.

Type the command `connect [address:host] [player] [password]?` in the console, and wait until you see either `ConnectSlot success!` or `ConnectSlot refused` in the separate console window.

If the connection is successful, the game will load the Hideout, and you can begin playing!

After connecting to a server, the address, player name, and password will be saved, and you can just type `connect` into the console to connect with the saved info.

## Important info / Known issues

- The Xbox Game Pass version of Hi-Fi RUSH has not been tested very thoroughly. Hopefully everything works.
- At the beginning, only Track 1 is playable. Other tracks must be unlocked by finding "Unlock Next Track" items, except for Track 12 which is unlocked by completing all of the previous tracks.
- The stage select menu will very quickly scroll past any tracks you do not have unlocked.
- Depending on how quickly you gain access to new tracks, it may be possible to play tracks out of their regular order. This has not been tested thoroughly so do it at your own risk.
- Sub-missions are not randomized yet.
- SPECTRA challenge rooms are accessible, but not randomized yet.
- Only the Attacks section of the store is randomized. Special attacks, items, and chips are not randomized yet.
- Store locations are checked when the store menu is closed.
- Technically, there's nothing preventing you from selling things in the store after getting a location check from them.
- The combo list in the pause menu will be inaccurate most of the time.
- If you skip the Beat Hit tutorial in Track 1, the floating 808 next to Chai will never appear.
- If you skip the Parry tutorial in Track 3, the Parry ability is never given to the player.
- Purchasing Magnet Backstab, Air Parry, or Directional Parry in the store will both count as a location check and also give you the corresponding ability.
- If you don't want to wait until you would normally unlock Beat Hit, you can press `Ctrl + THREE` to unlock it at any time. 
- You can press `Ctrl + FOUR` to unlock all cosmetics.
- You can press `ZERO` to skip the current line of dialogue. This works fine in most conversations, but if you do this and get softlocked, it can usually be fixed by returning to the Hideout and continuing from the last checkpoint.

## Chai's Attacks

Since the in game combo list will not work properly while the game is randomized, here is a list of all of Chai's attacks and how to perform them:

- **Humbucker** (default): XXXX
- **Grandslam** (default): YYY
- **Breakdown** (default): XYY
- **Tremolo** (default): YXX
- **Air Countdown** (default): (In air) XXXX
- **Hammer-On** (default): (In air) Y
- **Dash Attack** (default): Dash -> X
- **Air Launch** (default): Dash -> Y
- **Rise Up** (default): X-XX
- **Echo Splash**: XYXXX
- **Tune Up**: XX-XXX
- **Stomp Box**: YXY
- **Arpeggio Stab**: XXYYY
- **Pickup Crash**: YYXX
- **Harmonic Beam**: (In air) XYYY
- **Compressor Slam**: (In air) XYXY
- **Shred**: X (mash) Y
- **Staccato Launch**: X (hold)
- **Gain Tornado**: Y (hold)
- **Quick Beat Hit**: A+X
- **Steal Counter**: Y+B
- **Magnet Backstab**: LB (when reaching enemy with magnet)
- **Air Parry**: B
- **Directional Parry**: LS+B
- **Switch Kicker**: Peppermint Ground Jam Combo
- **Master Blaster**: Peppermint Air Jam Combo
- **Cannon Spike**: Peppermint Charge
- **Kick Shot**: Peppermint Counter
- **Double Bass Drop**: Macaron Ground Jam Combo
- **High Strung**: Macaron Air Jam Combo
- **Gravity Well**: Macaron Charge
- **Love Tap**: Macaron Counter
- **High Security Risk**: Korsica Ground Jam Combo
- **Tornado Lift**: Korsica Air Jam Combo
- **Korsica Typhoon**: Korsica Charge
- **High Alert**: Korsica Counter