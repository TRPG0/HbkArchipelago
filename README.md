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

- At the beginning, only Track 1 is playable. Other tracks must be unlocked by finding "Unlock Next Track" items, except for Track 12 which is unlocked by completing all of the previous tracks.
- The stage select menu will very quickly scroll past any tracks you do not have unlocked.
- Depending on how quickly you gain access to new tracks, it may be possible to play tracks out of their regular order. This has not been tested thoroughly so do it at your own risk.
- Sub-missions are not randomized yet.
- SPECTRA challenge rooms are accessible, but not randomized yet.
- Only the Attacks section of the store is randomized. Special attacks, items, and chips are not randomized yet.
- Store locations are checked when the store menu is closed.
- Technically, there's nothing preventing you from selling things in the store after getting a location check from them.
- The combo list in the pause menu will be inaccurate most of the time.
- If you skip the Beat Hit tutorial in Track 1, the floating 808 will never appear.
- If you skip the Parry tutorial in Track 3, the Parry ability is never given to the player.
- Purchasing Magnet Backstab, Air Parry, or Directional Parry in the store will both count as a location check and also give you the corresponding ability.