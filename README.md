# HbkArchipelago

A mod for connecting Hi-Fi RUSH to an Archipelago server.

Special thanks to @akmubi for their work on [hibiki-bootstrap](https://github.com/akmubi/hibiki-bootstrap) which makes this mod usable once again after Update 10!

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

To uninstall the mod, go to the same location used in step 3 from before, and remove all files *except* the following:

Steam (`...\Hi-Fi RUSH\Hibiki\Binaries\Win64`):
- `Hi-Fi RUSH.exe`
- `OpenImageDenoise.dll`
- `tbb12.dll`

Xbox (`...\Hi-Fi RUSH\Content\Hibiki\Binaries\WinGDK`):
- `Hi-Fi RUSH.exe`
- `GameChat2.dll`
- `XCurl.dll`

## Setup

After the mod has been installed, there are some additional steps that must be followed before you can start playing:

### Creating a `.yaml` file

To play an Archipelago game, you will need a `.yaml` file for the game you would like to play.

1. Download and install [Archipelago](https://github.com/ArchipelagoMW/Archipelago/releases).

2. Download `hi_fi_rush.apworld` from the [releases](https://github.com/TRPG0/HbkArchipelago/releases) and install it, either by double clicking the `.apworld` file, opening the Archipelago Launcher and selecting "Install APWorld", or by selecting "Browse Files" and adding it to the `custom_worlds` folder.

3. To create a `.yaml` file, open the Archipelago Launcher and search for "Options Creator". You can then customize all of the options for Hi-Fi RUSH, and then save the `.yaml` file.

	- Alternatively, if you would prefer to manually edit the `.yaml` file in a text editor, you can click "Generate Template Options" in the Archipelago Launcher instead.

### Generating a multiworld

When you have collected all `.yaml` files for each player in the multiworld, move them all into the `Players` folder. You can easily find the Players folder by opening the Archipelago Launcher and clicking "Browse Files".

Note that only one player in the multiworld will need to generate. If the player who is hosting is not yourself, they will also need to install the apworld for Hi-Fi RUSH.

Once all `.yaml` files are ready, click "Generate" in the launcher. A command prompt window will open, and if successful it will close itself. Your generated multiworld will appear in the `output` folder.

You can host the game by [uploading](https://archipelago.gg/uploads) it to the Archipelago website and clicking Create New Room. The address you will need to connect to the server will be displayed at the top of the room page.

- You can also host the game yourself by clicking "Host" in the launcher. You will need to know how to port forward if you want other players to be able to connect to a manually hosted server.
	
### Connecting to a server

To connect to a server for the first time, start a new save file and skip the cutscenes until Track 1 is loaded. You can check if Track 1 is loaded by trying to pause the game.

Once you are in Track 1, open the console by pressing F10. If wanted, you can change this key by modifying the `local KeysToAdd` in `...\ue4ss\Mods\ConsoleEnablerMod\main.lua`.

Type the command `connect [address:host] [player] [password]` in the console. If the server does not have a password, do not enter one.

- For example: `connect archipelago.gg:38281 Chai`

- If your player name has a space in it, put it in quotes like this: `connect archipelago.gg "Rhythm Master"`

If the connection is successful, the game will load the Hideout, and you can begin playing!

After connecting to a server for the first time, the address, player name, and password will be saved, and you can type `connect` into the console to try reconnecting with the saved info after loading into a save slot.

If any locations were accidentally checked while offline, or did not send properly for some other reason, you can type `resend` into the console to try sending all locations to the server again. **This cannot be undone.**

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
- You can press `ZERO` to skip the current line of dialogue. This works fine in most conversations, but there are a few spots where skipping dialogue too fast can cause a softlock or other unusual effects. This can be fixed by returning to the Hideout and continuing from the last checkpoint.