Config = require "Config"
Item = require "Item"
SaveData = require "SaveData"
Util = require "Util"

local Multiworld = {}

---@type table<number>
local LocWaiting = {}

local AP = require "lua-apclientpp"
if AP == nil then
    error("lua-apclientpp not found!")
    return
end

---@type APClient | nil
local ap = nil

function Multiworld:Connect(host, slot, password)
    local uuid = ""
    ap = AP(uuid, Config.GameName, host)
    print("Attempting connection as " .. slot .. " (" .. SaveData.Version .. " | " .. Config.APTargetVersionString .. ")\n")

    ap:set_socket_connected_handler(function()
        print("Socket connected\n")
    end)

    ap:set_socket_error_handler(function(reason)
        print("Socket error: " .. reason .. "\n")
    end)

    ap:set_socket_disconnected_handler(function()
        print("Socket disconnected\n")
        Multiworld:Disconnect()
    end)

    --connect to slot after receiving room info
    ap:set_room_info_handler(function()
        print("On room info\n")
        ap:ConnectSlot(slot, password, Config.ItemsHandling, Config.ConnectTags, Config.APTargetVersion)
    end)

    --if ConnectSlot succeeds
    ap:set_slot_connected_handler(function(slot_data)
        ---@cast slot_data SlotData
        print("ConnectSlot success! (" .. slot_data.Version .. " | " .. slot_data.ServerVersion .. ")\n")
        if not SaveData:FileExists() then
            SaveData.IsCurrentFileRandomized = true
            SaveData.Seed = ap:get_seed()
            SaveData.Version = HbkModVersion
            SaveData.ServerVersion = slot_data.ServerVersion
            SaveData.Slot = slot
            SaveData.Address = host
            SaveData.Password = password
            Util.DoRandomizerFirstTimeSetup()
            SaveData:Save()
        else
            if SaveData.Version ~= slot_data.Version then
                print("Versions do not match! (" .. SaveData.Version " ~= " ..  slot_data.Version .. ")\n")
                print("Some things may not work as expected!\n")
            end
            if SaveData.Seed ~= ap:get_seed() then
                print("Seed does not match! (" .. SaveData.Seed " ~= " .. ap:get_seed() .. ")\n")
            end
        end
    end)

    --if ConnectSlot fails
    ap:set_slot_refused_handler(function(reasons)
        print("ConnectSlot refused: " .. table.concat(reasons, ", ") .. "\n")
    end)

    ap:set_items_received_handler(function (items)
        print("Items received! " .. #items .. " (" .. SaveData.Index .. ")\n")
        for _, item in ipairs(items) do
            if item.index and item.index > SaveData.Index then
                local ItemName = ap:get_item_name(item.item, nil)
                local FromPlayer = ap:get_player_alias(item.player)
                print("Item: " .. ItemName .. " (from " .. FromPlayer .. ")\n")
                --ExecuteInGameThread(function ()
                    Item.GetItem(ItemName)
                --end)
            end
        end
    end)

    --when a location is scouted
    ap:set_location_info_handler(function (items)
        print("Locations scouted\n")
    end)

    --unused as of right now:
    --set_location_checked_handler - when a location is checked by a different player connected to the same slot, or by collect
    --set_data_package_changed_handler - does this ever even happen?
    --set_print_json_handler - may or may not use for in game chat log
    --set_bounced_handler - will use for death link
    --set_retrieved_handler
    --set_set_reply_handler

    LoopAsync(1000, function ()
        if ap then
            ap:poll()
            if LocWaiting ~= {} then
                ap:LocationChecks(LocWaiting)
                LocWaiting = {}
            end
        end
        return ap == nil
    end)
end

function Multiworld:Disconnect()
    ap = nil
    collectgarbage("collect")
    print("Disconnected from Archipelago server.\n")
end

---@return boolean
function Multiworld:IsConnected()
    return ap ~= nil
end

---@param Location string
function Multiworld:CheckLocation(Location)
    if LocationIdTable[Location] then
        Util.AddToTableIfNotHas(LocWaiting, LocationIdTable[Location])
        Util.AddToTableIfNotHas(SaveData.Checked, Location)
        print("Checking location " .. Location .. " | " .. tostring(LocationIdTable[Location]) ..  "\n")
    else
        print("No ID found for location " .. Location .. "\n")
    end
end

function Multiworld:CheckLocationsAfterStoreClosed()
    ExecuteInGameThread(function ()
        local Valid, PlayerCharacterManager = ObjectCache.FindPlayerCharacterManager()
        if Valid then
            ---@type int32 PlayerItem
            local InventoryCategory = 1

            ---@type TMap<EHbkInventoryCategory, FHbkPlayerInventoryItemList>
            local SaveMap = PlayerCharacterManager.PlayerStateInfo.PlayerInventory.InventoryCategoryData.Map

            SaveMap:ForEach(function (key, value)
                if key:get() == InventoryCategory then
                    value:get().List:ForEach(function (index, element)
                        ---@type FHbkInventoryItem
                        local CurrentItem = element:get()

                        ---@type string
                        local LocationStr = "Store/" .. CurrentItem.InventoryId.TagName:ToString()

                        if LocationIdTable[LocationStr] and not Util.TableContains(SaveData.Checked, LocationStr) then
                            Multiworld:CheckLocation(LocationStr)
                        end
                    end)
                end
            end)
        end
    end)
end

---@param SequenceName string
---@param LevelNum int32
function Multiworld:LevelCompleted(SequenceName, LevelNum)
    Multiworld:CheckLocation(SequenceName)
    Util.AddToTableIfNotHas(SaveData.CompletedLevels, LevelNum)
    print("Track " .. tostring(LevelNum) .. " completed!\n")
    if SaveData:IsAllLevelsCompleted() then
        Util.AddToTableIfNotHas(SaveData.UnlockedLevels, 12)
        print("Track 12 unlocked!\n")
    end
end

function Multiworld:GoalCompleted()
    if ap then
        ExecuteAsync(function ()
            ap:StatusUpdate(30)
        end)
    end
end

return Multiworld