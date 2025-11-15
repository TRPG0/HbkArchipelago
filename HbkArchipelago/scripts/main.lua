---@type string
HbkModVersion = "0.1.0"
print("HbkArchipelago " .. HbkModVersion .. "\n")

print("Registering console commands\n")
require("Commands")
print("Registering keybinds\n")
require("Keybinds")

Hooks = require "Hooks"
SaveData = require "SaveData"
Stage = require "Stage"
dkjson = require "dkjson"

SaveData:SetModVersion(HbkModVersion)

---@type table<string, integer>
LocationIdTable = {}

do
    local path = IterateGameDirectories().Game.Binaries.Win64.ue4ss.Mods.HbkArchipelago.data.__absolute_path .. "\\hbk_loc.json"
    local file = io.open(path, "r")
    if file then
        local decode, pos, err = dkjson.decode(file:read("a"), 1, nil)
        if err then
            print("Error while trying to read location ID table: " .. err)
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

Hooks:RegisterAllHooks()
Hooks:RegisterAllBPHooks()

---@type boolean
IsLoadingSaveSlot = false