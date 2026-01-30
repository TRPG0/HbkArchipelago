# HbkArchipelago

A mod for connecting Hi-Fi RUSH to an Archipelago server.

Special thanks to @akmubi for their work on [hibiki-bootstrap](https://github.com/akmubi/hibiki-bootstrap) which makes this mod usable once again after Update 10!

## How to install

The Xbox Game Pass version is currently **not** supported.

1. Download the zip package from the releases.

2. Open the folder where Hi-Fi RUSH is installed. 
    - Steam: Right click Hi-Fi RUSH, click Manage, then click Browse local files.

3. Go to the folder where the game's main executable is located.
    - Steam: `...\Hi-Fi RUSH\Hibiki\Binaries\Win64`

4. Extract the files from the zip package into the folder.

## How to uninstall

To uninstall the mod, go to the same location used in step 3 from before, and remove all files *except* the following:

Steam (`...\Hi-Fi RUSH\Hibiki\Binaries\Win64`):
- `Hi-Fi RUSH.exe`
- `OpenImageDenoise.dll`
- `tbb12.dll`

## Connecting to a server

To connect to a server for the first time, start a new save file and skip the cutscenes until Track 1 is loaded. You can check is Track 1 is loaded by pausing the game.

Once you are in Track 1, open the console by pressing F10.

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
- Store locations are checked when the store menu is closed.
- If Special Attacks are randomized, after purchasing a special attack, it will appear in the equip menu, but if you try to equip a special attack that you don't have, it will equip Power Chord instead.
- Technically, there's nothing preventing you from selling things in the store after getting a location check from them.
- If you skip the Parry tutorial in Track 3, the Parry ability is never given to the player.
- If you don't want to wait until you would normally unlock Beat Hit, you can press `Ctrl + THREE` to unlock it at any time. 
- You can press `Ctrl + FOUR` to unlock all cosmetics.
- You can press `ZERO` to skip the current line of dialogue. This works fine in most conversations, but if you do this and get softlocked, it can usually be fixed by returning to the Hideout and continuing from the last checkpoint.