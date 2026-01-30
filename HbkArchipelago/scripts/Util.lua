Util = {}

---@type table<string, string>
Util.LevelNameToShortName = {
    ["Level /Game/Hibiki/Maps/Title/Title_All.Title_All:PersistentLevel"] = "Title",
    ["Level /Game/Hibiki/Maps/HideOut/HideOut_Main.HideOut_Main:PersistentLevel"] = "Hideout",
    ["Level /Game/Hibiki/Maps/St01/St01_All.St01_All:PersistentLevel"] = "St01",
    ["Level /Game/Hibiki/Maps/St02/ST02_All.ST02_All:PersistentLevel"] = "St02",
    ["Level /Game/Hibiki/Maps/St03/St03_All.St03_All:PersistentLevel"] = "St03",
    ["Level /Game/Hibiki/Maps/St04/St04_All.St04_All:PersistentLevel"] = "St04",
    ["Level /Game/Hibiki/Maps/St05/St05a_All.St05a_All:PersistentLevel"] = "St05",
    ["Level /Game/Hibiki/Maps/St05b/St05b_All.St05b_All:PersistentLevel"] = "St05b",
    ["Level /Game/Hibiki/Maps/St06/St06_All.St06_All:PersistentLevel"] = "St06",
    ["Level /Game/Hibiki/Maps/St07/St07_All.St07_All:PersistentLevel"] = "St07",
    ["Level /Game/Hibiki/Maps/St08/St08_All.St08_All:PersistentLevel"] = "St08",
    ["Level /Game/Hibiki/Maps/St10/St10_All.St10_All:PersistentLevel"] = "St10",
    ["Level /Game/Hibiki/Maps/St11/St11_All.St11_All:PersistentLevel"] = "St11",
    ["Level /Game/Hibiki/Maps/St12/St12_All.St12_All:PersistentLevel"] = "St12"
}

---@type string
local CurrentLevelName = ""
---@type string
local CurrentLevelShortName = ""

---@return string
function Util.GetCurrentLevelName()
    local FullName = UEHelpers.GetPersistentLevel():GetFullName()
    if CurrentLevelName == "" or CurrentLevelName ~= FullName then
        CurrentLevelName = FullName
        return CurrentLevelName
    else
        return CurrentLevelName
    end
end

---@return string
function Util.GetCurrentLevelShortName()
    local ShortName = Util.LevelNameToShortName[CurrentLevelName]
    if ShortName then
        CurrentLevelShortName = ShortName
        return CurrentLevelShortName
    end
    return CurrentLevelName
end

---@return boolean
function Util.LevelHasItemObjects()
    if Util.GetCurrentLevelShortName() == "St01"
    or Util.GetCurrentLevelShortName() == "St02"
    or Util.GetCurrentLevelShortName() == "St03"
    or Util.GetCurrentLevelShortName() == "St04"
    or Util.GetCurrentLevelShortName() == "St05"
    or Util.GetCurrentLevelShortName() == "St05b"
    or Util.GetCurrentLevelShortName() == "St06"
    or Util.GetCurrentLevelShortName() == "St07"
    or Util.GetCurrentLevelShortName() == "St08"
    or Util.GetCurrentLevelShortName() == "St10" then
        return true
    end
    return false
end

---@return boolean
function Util.IsSaveGameSlotLoaded()
    local Valid, SaveGameManager = ObjectCache.FindSaveGameManager()
    if Valid then
        return SaveGameManager:GetCurrentSlotName() ~= "" and Util.GetCurrentLevelName() ~= "Level /Game/Hibiki/Maps/Title/Title_All.Title_All:PersistentLevel"
    else
        return false
    end
end

function Util.OpenAllHideOutChallenges()
    ---@type UHbkHideOutChallengeFunction | UObject
    local HideOutChallengeFunction = StaticFindObject("/Script/Hibiki.Default__HbkHideOutChallengeFunction")

    if HideOutChallengeFunction and HideOutChallengeFunction:IsValid() then
       local World = UEHelpers.GetWorld()
        HideOutChallengeFunction:OpenHideOutChallenge(World, 0)
        HideOutChallengeFunction:OpenHideOutChallenge(World, 1)
        HideOutChallengeFunction:OpenHideOutChallenge(World, 2)
        HideOutChallengeFunction:OpenHideOutChallenge(World, 3)
        HideOutChallengeFunction:OpenHideOutChallenge(World, 4)
        HideOutChallengeFunction:OpenHideOutChallenge(World, 5)
        HideOutChallengeFunction:OpenHideOutChallenge(World, 6)
        HideOutChallengeFunction:OpenHideOutChallenge(World, 7)
        HideOutChallengeFunction:OpenHideOutChallenge(World, 8)
        HideOutChallengeFunction:OpenHideOutChallenge(World, 9)
        HideOutChallengeFunction:OpenHideOutChallenge(World, 10)
        HideOutChallengeFunction:OpenHideOutChallenge(World, 11)
        HideOutChallengeFunction:OpenHideOutChallenge(World, 12)
        HideOutChallengeFunction:OpenHideOutChallenge(World, 13)
        HideOutChallengeFunction:OpenHideOutChallenge(World, 14)
        HideOutChallengeFunction:OpenHideOutChallenge(World, 15)
        HideOutChallengeFunction:OpenHideOutChallenge(World, 16)
        HideOutChallengeFunction:OpenHideOutChallenge(World, 17)
        HideOutChallengeFunction:OpenHideOutChallenge(World, 18)
        HideOutChallengeFunction:OpenHideOutChallenge(World, 19)
        HideOutChallengeFunction:OpenHideOutChallenge(World, 20)
        HideOutChallengeFunction:OpenHideOutChallenge(World, 21)
        HideOutChallengeFunction:OpenHideOutChallenge(World, 22)
        HideOutChallengeFunction:OpenHideOutChallenge(World, 23)
        HideOutChallengeFunction:OpenHideOutChallenge(World, 24)
        HideOutChallengeFunction:OpenHideOutChallenge(World, 25)
        HideOutChallengeFunction:OpenHideOutChallenge(World, 26)
        HideOutChallengeFunction:OpenHideOutChallenge(World, 27)
        HideOutChallengeFunction:OpenHideOutChallenge(World, 28)
        HideOutChallengeFunction:OpenHideOutChallenge(World, 29)
    end
end

function Util.DoRandomizerFirstTimeSetup()
    Util.OpenAllHideOutChallenges()

    local Valid, PlayerCharacterManager = ObjectCache.FindPlayerCharacterManager()
    if Valid then
        PlayerCharacterManager.PlayerStateInfo.JoinedPartnerFlags = PlayerCharacterManager.PlayerStateInfo.JoinedPartnerFlags | 1
        PlayerCharacterManager:Set808Visibility(true)
    end

    local Valid2, GameRuleManager = ObjectCache.FindGameRuleManager()
    if Valid2 then
        GameRuleManager:GotoHideOutDebug(UEHelpers.GetWorld(), true, 100, true, false)
    end
end

---@param Table table
---@param Var any
---@return boolean
function Util.TableContains(Table, Var)
    for _, v in ipairs(Table) do
        if v == Var then
            return true
        end
    end
    return false
end

---@param Table table
---@param Var any
function Util.AddToTableIfNotHas(Table, Var)
    ---@type boolean
    local Has = false

    Has = Util.TableContains(Table, Var)

    if not Has then
        table.insert(Table, Var)
    end
end

---@param TagString string
---@return table<string>
function Util.GetParentTagsFromGameplayTag(TagString)
    ---@type table<string>
    local StringParts = {}

    for s in string.gmatch(TagString, "%a+[%-%a+]*") do
        table.insert(StringParts, s)
    end

    ---@type table<string>
    local FinalParts = {}

    for i=1,#StringParts-1 do
        local TempString = ""
        for j=1,i do
            if TempString == "" then
                TempString = StringParts[j]
            else
                TempString = TempString .. "." .. StringParts[j]
            end
            --print("TempString (" .. j .. ") " .. TempString)
        end
        table.insert(FinalParts, TempString)
    end

    return FinalParts
end

---@param VLogItem string
---@return number | nil
function Util.GetVLogNumber(VLogItem)
    local out = ""
    for s in string.gmatch(VLogItem, "VLog #(%d+)") do
        out = s
    end
    return tonumber(out)
end

---@param GearsItem string
---@return number | nil
function Util.GetGearsNumber(GearsItem)
    local out = ""
    for s in string.gmatch(GearsItem, "%d+") do
        out = out .. s
    end
    return tonumber(out)
end

return Util