Battle = {}

---@type table<integer, OnSequence>
Battle.St05OnBattleEnded = {
    [5] = {
        Callback = function ()
            --Track 5 completed
            Multiworld:LevelCompleted("OnBattleEnded_St05_5", 5)
        end,
        OnlyIfRandomized = true
    }
}

---@type table<string, table>
Battle.TableByLevel = {
    ["St05"] = Battle.St05OnBattleEnded
}

---@type table<integer>
Battle.Completed = {}

---@type table<integer, OnSequence>
Battle.CurrentTable = nil

---@return boolean
function Battle.GetTableForCurrentLevel()
    Battle.Completed = {}
    local ShortName = Util.GetCurrentLevelShortName()
    if Battle.TableByLevel[ShortName] then
        print("Got Battle table for level " .. ShortName .. "\n")
        Battle.CurrentTable = Battle.TableByLevel[ShortName]
        return true
    else
        Battle.CurrentTable = nil
        return false
    end
end

return Battle