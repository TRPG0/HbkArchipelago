Talk = {}

Talk.Test = {
    StringTable = "/Game/Hibiki/GameData/STR/Talk_ST01_STR_R2.Talk_ST01_STR_R2",
    Key = "SQ_ST01_0150_0010"
}

function Talk.GetNameAndTextLineFromStringTable(Macro)
    ExecuteInGameThread(function ()
        ---@type UDataTable | UObject
        local DT = LoadAsset(Macro.StringTable)
        if DT:IsValid() then
            print(DT:GetClass():GetFullName())

            for _, name in ipairs(DT:GetRowNames()) do
                print(name)
            end

            ---@type FHbkTalkDataRow | UScriptStruct
            local Row = DT:FindRow(string.sub(Macro.Key,4))
            if Row:IsValid() then
                print(Row.NameText:ToString(), Row.TalkText:ToString())
            end
        end
    end)
end

return Talk