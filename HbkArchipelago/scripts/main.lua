---@type string
HbkModVersion = "0.2.0"
print("HbkArchipelago " .. HbkModVersion .. "\n")

dkjson = require "dkjson"
UEHelpers = require "UEHelpers"

Ability = require "Ability"
AbilityTags = require "AbilityTags"
Battle = require "Battle"
Config = require "Config"
Hooks = require "Hooks"
Inventory = require "Inventory"
InventoryItem = require "InventoryItem"
Item = require "Item"
Multiworld = require "Multiworld"
ObjectCache = require "ObjectCache"
SaveData = require "SaveData"
Sequence = require "Sequence"
SkillTags = require "SkillTags"
Stage = require "Stage"
Store = require "Store"
Talk = require "Talk"
TextColors = require "TextColors"
Util = require "Util"

print("Registering console commands\n")
require "Commands"
print("Registering keybinds\n")
require "Keybinds"

SaveData:SetModVersion(HbkModVersion)

---@type table<string, integer>
LocationIdTable = {}

HbkMainExecutableDirectory = nil
do
    local Directories = IterateGameDirectories()
    if Directories.Game.Binaries.Win64 then
        print("Game is Steam version\n")
        HbkMainExecutableDirectory = Directories.Game.Binaries.Win64
    else
        print("Game is Xbox version\n")
        HbkMainExecutableDirectory = Directories.Game.Binaries.WinGDK
    end
end

do
    local path = HbkMainExecutableDirectory.Mods.HbkArchipelago.data.__absolute_path .. "\\hbk_loc.json"
    local file = io.open(path, "r")
    if file then
        local decode, pos, err = dkjson.decode(file:read("a"), 1, nil)
        if err then
            print("Error while trying to read location ID table: " .. err .. "\n")
            print("Aborting!\n")
            return
        else
            LocationIdTable = decode
        end
    else
        print("Could not load location ID table! Aborting\n")
        return
    end
end

do
    local pattern = "%x%x%x%x%x%x"

    if string.len(TextColors.PlayerSelf) ~= 6 or not string.match(TextColors.PlayerSelf, pattern) then
        print("PlayerSelf does not appear to be a valid hex color. Using default instead\n")
        TextColors.PlayerSelf = "ee00ee"
    end

    if string.len(TextColors.PlayerOther) ~= 6 or not string.match(TextColors.PlayerOther, pattern) then
        print("PlayerOther does not appear to be a valid hex color. Using default instead\n")
        TextColors.PlayerOther = "fafad2"
    end

    if string.len(TextColors.ItemProgression) ~= 6 or not string.match(TextColors.ItemProgression, pattern) then
        print("ItemProgression does not appear to be a valid hex color. Using default instead\n")
        TextColors.ItemProgression = "fafad2"
    end

    if string.len(TextColors.ItemUseful) ~= 6 or not string.match(TextColors.ItemUseful, pattern) then
        print("ItemUseful does not appear to be a valid hex color. Using default instead\n")
        TextColors.ItemUseful = "6d8be8"
    end

    if string.len(TextColors.ItemTrap) ~= 6 or not string.match(TextColors.ItemTrap, pattern) then
        print("ItemTrap does not appear to be a valid hex color. Using default instead\n")
        TextColors.ItemTrap = "fa8072"
    end

    if string.len(TextColors.ItemFiller) ~= 6 or not string.match(TextColors.ItemFiller, pattern) then
        print("ItemFiller does not appear to be a valid hex color. Using default instead\n")
        TextColors.ItemFiller = "00eeee"
    end
end

Hooks:RegisterAllHooks()
Hooks:RegisterAllBPHooks()

NotifyOnNewObject("/Script/Hibiki.HbkVLogItem", function (NewObject)
    ---@cast NewObject AHbkVLogItem
    print("NewObject HbkVLogItem " .. NewObject:GetFName():ToString() .. "\n")
end)

---@type boolean
IsLoadingSaveSlot = false