local SaveData = {}

---@type boolean
SaveData.IsCurrentFileRandomized = false


---@type string
SaveData.Seed = ""

---@type string
SaveData.Version = ""

---@type string
SaveData.ServerVersion = ""

---@type string
SaveData.Slot = ""

---@type string
SaveData.Address = ""

---@type string
SaveData.Password = ""

---@type string
SaveData.LastSequence = ""

---@type number
SaveData.Index = -1

---@type table<string>
SaveData.Checked = {}

---@type table<integer>
SaveData.CompletedLevels = {}

---@type table<integer>
SaveData.UnlockedLevels = { 1 }

---@type boolean
SaveData.TrackOrderNormal = true

---@type boolean
SaveData.StoreAttackChai = false

---@type boolean
SaveData.StoreAttackPeppermint = false

---@type boolean
SaveData.StoreAttackMacaron = false

---@type boolean
SaveData.StoreAttackKorsica = false

---@type boolean
SaveData.StoreSpecialAttack = false

---@type boolean
SaveData.StoreItem = false

---@type boolean
SaveData.StoreChip = false

---@type boolean
SaveData.AllowSell = true

---@type table<string, ScoutedItem>
SaveData.Scouts = {}


local SaveDataDefault = {}

---@type string
SaveDataDefault.Seed = ""

---@type string
SaveDataDefault.Version = HbkModVersion

---@type string
SaveDataDefault.ServerVersion = ""

---@type string
SaveDataDefault.Slot = ""

---@type string
SaveDataDefault.Address = ""

---@type string
SaveDataDefault.Password = ""

---@type string
SaveDataDefault.LastSequence = ""

---@type number
SaveDataDefault.Index = -1

---@type table<string>
SaveDataDefault.Checked = {}

---@type table<integer>
SaveDataDefault.CompletedLevels = {}

---@type table<integer>
SaveDataDefault.UnlockedLevels = { 1 }

---@type boolean
SaveDataDefault.TrackOrderNormal = true

---@type boolean
SaveDataDefault.StoreAttackChai = false

---@type boolean
SaveDataDefault.StoreAttackPeppermint = false

---@type boolean
SaveDataDefault.StoreAttackMacaron = false

---@type boolean
SaveDataDefault.StoreAttackKorsica = false

---@type boolean
SaveDataDefault.StoreSpecialAttack = false

---@type boolean
SaveDataDefault.StoreItem = false

---@type boolean
SaveDataDefault.StoreChip = false

---@type boolean
SaveDataDefault.AllowSell = true

---@type table<string, ScoutedItem>
SaveDataDefault.Scouts = {}


---@param Version string
function SaveData:SetModVersion(Version)
    SaveData.Version = Version
    SaveDataDefault.Version = Version
end

function SaveData:ResetToDefault()
    SaveData.Seed = SaveDataDefault.Seed
    SaveData.Version = SaveDataDefault.Version
    SaveData.ServerVersion = SaveDataDefault.ServerVersion
    SaveData.Slot = SaveDataDefault.Slot
    SaveData.Address = SaveDataDefault.Address
    SaveData.Password = SaveDataDefault.Password
    SaveData.LastSequence = SaveDataDefault.LastSequence
    SaveData.Index = SaveDataDefault.Index
    SaveData.Checked = SaveDataDefault.Checked
    SaveData.CompletedLevels = SaveDataDefault.CompletedLevels
    SaveData.UnlockedLevels = SaveDataDefault.UnlockedLevels
    SaveData.TrackOrderNormal = SaveDataDefault.TrackOrderNormal
    SaveData.StoreAttackChai = SaveDataDefault.StoreAttackChai
    SaveData.StoreAttackPeppermint = SaveDataDefault.StoreAttackPeppermint
    SaveData.StoreAttackMacaron = SaveDataDefault.StoreAttackMacaron
    SaveData.StoreAttackKorsica = SaveDataDefault.StoreAttackKorsica
    SaveData.StoreSpecialAttack = SaveDataDefault.StoreSpecialAttack
    SaveData.StoreItem = SaveDataDefault.StoreItem
    SaveData.StoreChip = SaveDataDefault.StoreChip
    SaveData.AllowSell = SaveDataDefault.AllowSell
    SaveData.Scouts = SaveDataDefault.Scouts
    print("Current save data reset to default\n")
    SaveData.IsCurrentFileRandomized = false
end

---@param FileName string
---@return string
function SaveData.GetFilePath(FileName)
    return HbkMainExecutableDirectory.Mods.HbkArchipelago.save.__absolute_path .. "\\" .. FileName .. ".json"
end

---@param FileName string?
function SaveData:Save(FileName)
    ExecuteAsync(function ()
        FileName = FileName or SaveData.GetCurrentSlotName()
        local path = SaveData.GetFilePath(FileName)
        local file = io.open(path, "w")
        if file then
            file:write(dkjson.encode({
                Seed = SaveData.Seed,
                Version = SaveData.Version,
                ServerVersion = SaveData.ServerVersion,
                Slot = SaveData.Slot,
                Address = SaveData.Address,
                Password = SaveData.Password,
                LastSequence = SaveData.LastSequence,
                Index = SaveData.Index,
                Checked = SaveData.Checked,
                CompletedLevels = SaveData.CompletedLevels,
                UnlockedLevels = SaveData.UnlockedLevels,
                TrackOrderNormal = SaveData.TrackOrderNormal,
                StoreAttackChai = SaveData.StoreAttackChai,
                StoreAttackPeppermint = SaveData.StoreAttackPeppermint,
                StoreAttackMacaron = SaveData.StoreAttackMacaron,
                StoreAttackKorsica = SaveData.StoreAttackKorsica,
                StoreSpecialAttack = SaveData.StoreSpecialAttack,
                StoreItem = SaveData.StoreItem,
                StoreChip = SaveData.StoreChip,
                AllowSell = SaveData.AllowSell,
                Scouts = SaveData.Scouts
            }, { indent = true }))
            io.close(file)
            print("Saved data at " .. path .. "\n")
        end
    end)
end

---@param FileName string?
---@return boolean
function SaveData:FileExists(FileName)
    FileName = FileName or SaveData.GetCurrentSlotName()
    local path = SaveData.GetFilePath(FileName)
    local file = io.open(path, "r")
    if file then
        io.close(file)
        return true
    else
        return false
    end
end

---@param FileName string?
function SaveData:Load(FileName)
    FileName = FileName or SaveData.GetCurrentSlotName()
    local path = SaveData.GetFilePath(FileName)
    local file = io.open(path, "r")
    if file then
        local decode, pos, err = dkjson.decode(file:read("a"), 1, nil)
        if err then
            print("Error while trying to load save data: " .. err)
        else
            SaveData.Seed = decode.Seed or SaveDataDefault.Seed
            SaveData.Version = decode.Version or SaveDataDefault.Version
            SaveData.ServerVersion = decode.ServerVersion or SaveDataDefault.ServerVersion
            SaveData.Slot = decode.Slot or SaveDataDefault.Slot
            SaveData.Address = decode.Address or SaveDataDefault.Address
            SaveData.Password = decode.Password or SaveDataDefault.Password
            SaveData.LastSequence = decode.LastSequence or SaveDataDefault.LastSequence
            SaveData.Index = decode.Index or SaveDataDefault.Index
            SaveData.Checked = decode.Checked or SaveDataDefault.Checked
            SaveData.CompletedLevels = decode.CompletedLevels or SaveDataDefault.CompletedLevels
            SaveData.UnlockedLevels = decode.UnlockedLevels or SaveDataDefault.UnlockedLevels
            SaveData.TrackOrderNormal = decode.TrackOrderNormal or SaveDataDefault.TrackOrderNormal
            SaveData.StoreAttackChai = decode.StoreAttackChai or SaveDataDefault.StoreAttackChai
            SaveData.StoreAttackPeppermint = decode.StoreAttackPeppermint or SaveDataDefault.StoreAttackPeppermint
            SaveData.StoreAttackMacaron = decode.StoreAttackMacaron or SaveDataDefault.StoreAttackMacaron
            SaveData.StoreAttackKorsica = decode.StoreAttackKorsica or SaveDataDefault.StoreAttackKorsica
            SaveData.StoreSpecialAttack = decode.StoreSpecialAttack or SaveDataDefault.StoreSpecialAttack
            SaveData.StoreItem = decode.StoreItem or SaveDataDefault.StoreItem
            SaveData.StoreChip = decode.StoreChip or SaveDataDefault.StoreChip
            SaveData.AllowSell = decode.AllowSell or SaveDataDefault.AllowSell
            SaveData.Scouts = decode.Scouts or SaveDataDefault.Scouts
            print("File loaded from " .. path .. "\n")
            SaveData.IsCurrentFileRandomized = true
            if SaveData.Version ~= HbkModVersion then
                print("Save data appears to have been created for a different version of the mod. (" .. HbkModVersion .. " ~= " .. SaveData.Version .. "\n")
            end
        end
        io.close(file)
    end
end

---@param FileName string?
function SaveData:Delete(FileName)
    FileName = FileName or SaveData.GetCurrentSlotName()
    if SaveData:FileExists(FileName) then
        local path = SaveData.GetFilePath(FileName)
        os.remove(path)
        print("File deleted at " .. path .. "\n")
    end
end

function SaveData:PrintAll()
    print("Printing save data\n")
    print("Seed: " .. SaveData.Seed .. "\n")
    print("Version: " .. SaveData.Version .. "\n")
    print("Server Version: " .. SaveData.ServerVersion .. "\n")
    print("Slot: " .. SaveData.Slot .. "\n")
    print("Address: " .. SaveData.Address .. "\n")
    print("Password: " .. SaveData.Password .. "\n")
    print("Index: " .. SaveData.Index .. "\n")
    print("Checked:\n")
    for _, str in ipairs(SaveData.Checked) do
        print(str .. "\n")
    end
    print("Completed Levels:\n")
    for _, num in ipairs(SaveData.CompletedLevels) do
        print(num .. "\n")
    end
    print("Unlocked Levels:\n")
    for _, num in ipairs(SaveData.UnlockedLevels) do
        print(num .. "\n")
    end
    print("StoreAttackChai: " .. tostring(SaveData.StoreAttackChai) .. "\n")
    print("StoreAttackPeppermint: " .. tostring(SaveData.StoreAttackPeppermint) .. "\n")
    print("StoreAttackMacaron: " .. tostring(SaveData.StoreAttackMacaron) .. "\n")
    print("StoreAttackKorsica: " .. tostring(SaveData.StoreAttackKorsica) .. "\n")
    print("StoreSpecialAttack: " .. tostring(SaveData.StoreSpecialAttack) .. "\n")
    print("StoreItem: " .. tostring(SaveData.StoreItem) .. "\n")
    print("StoreChip: " .. tostring(SaveData.StoreChip) .. "\n")
    print("AllowSell: " .. tostring(SaveData.AllowSell) .. "\n")
end

---@return string
function SaveData.GetCurrentSlotName()
    local Valid, SaveGameManager = ObjectCache.FindSaveGameManager()
    if Valid then
        return SaveGameManager:GetCurrentSlotName():ToString()
    end
    return ""
end

---@param Level integer
---@return boolean
function SaveData:IsLevelUnlocked(Level)
    return Util.TableContains(SaveData.UnlockedLevels, Level)
end

---@return boolean
function SaveData:IsAllLevelsCompleted()
    if Util.TableContains(SaveData.CompletedLevels, 1)
    and Util.TableContains(SaveData.CompletedLevels, 2)
    and Util.TableContains(SaveData.CompletedLevels, 3)
    and Util.TableContains(SaveData.CompletedLevels, 4)
    and Util.TableContains(SaveData.CompletedLevels, 5)
    and Util.TableContains(SaveData.CompletedLevels, 6)
    and Util.TableContains(SaveData.CompletedLevels, 7)
    and Util.TableContains(SaveData.CompletedLevels, 8)
    and Util.TableContains(SaveData.CompletedLevels, 9)
    and Util.TableContains(SaveData.CompletedLevels, 10)
    and Util.TableContains(SaveData.CompletedLevels, 11) then
        return true
    end
    return false
end

return SaveData