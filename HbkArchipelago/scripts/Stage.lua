Stage = {}

---@type table<string, integer>
Stage.ThumbNameToNum = {
    ["T_StageSelect_Img_1"] = 1,
    ["T_StageSelect_Img_2"] = 2,
    ["T_StageSelect_Img_3"] = 3,
    ["T_StageSelect_Img_4"] = 4,
    ["T_StageSelect_Img_5"] = 5,
    ["T_StageSelect_Img_6"] = 6,
    ["T_StageSelect_Img_7"] = 7,
    ["T_StageSelect_Img_8"] = 8,
    ["T_StageSelect_Img_9"] = 9,
    ["T_StageSelect_Img_10"] = 10,
    ["T_StageSelect_Img_11"] = 11,
    ["T_StageSelect_Img_12"] = 12
}

---@type integer | nil
local LoopHandle = nil

---@type integer
local CurrentStage, PreviousStage = 1, 1

---@type boolean
local IsMovingRight = true

RegisterHook("/Script/Hibiki.HbkShowStageSelect:DecidedStage", function()
    print("DecidedStage\n")
    if LoopHandle then
        CancelDelayedAction(LoopHandle)
        LoopHandle = nil
    end
end)

RegisterHook("/Script/Hibiki.HbkShowStageSelect:CancelSelect", function()
    print("CancelSelect\n")
    if LoopHandle then
        CancelDelayedAction(LoopHandle)
        LoopHandle = nil
    end
end)

NotifyOnNewObject("/Script/Hibiki.HbkStageSelectMenuWidget", function(NewObject) ---@param NewObject UHbkStageSelectMenuWidget
    print("New StageSelect_UI!\n")

    if SaveData.IsCurrentFileRandomized then
        Multiworld:SetCanGetItem(false)
        Util.TryForceSave()
        LoopHandle = LoopInGameThreadAfterFrames(1, function()
            NewObject.LeftArrowButton.HoldDownDuration = 0.001
            NewObject.RightArrowButton.HoldDownDuration = 0.001

            CurrentStage = Stage.ThumbNameToNum[NewObject.StageThumbnail.Brush.ResourceObject:GetFName():ToString()]
            --print(CurrentStage .. " (" .. PreviousStage .. " " .. tostring(IsMovingRight) .. ")\n")

            if CurrentStage == 12 and PreviousStage == 1 then
                IsMovingRight = false
            elseif CurrentStage > PreviousStage then
                IsMovingRight = true
            elseif CurrentStage < PreviousStage then
                IsMovingRight = false
            end

            if not SaveData:IsLevelUnlocked(CurrentStage) then
                if IsMovingRight then
                    NewObject.RightArrowButton:PressKey()
                else
                    NewObject.LeftArrowButton:PressKey()
                end
            end

            PreviousStage = CurrentStage
        end)
    end
end)

---@return boolean
function Stage.GotoHideOutIfLevelNotUnlocked()
    local Valid, GameRuleManager = ObjectCache.FindGameRuleManager()
    if not Valid then
        return false
    end

    local ShortName = Util.GetCurrentLevelShortName()
    if ShortName == "St01" then
        if not Util.TableContains(SaveData.UnlockedLevels, 1) then
            print("Stage 1 is not unlocked! Returning to hideout\n")
            GameRuleManager:GotoHideOut(UEHelpers.GetWorld())
            return true
        end
    elseif ShortName == "St02" then
        if not Util.TableContains(SaveData.UnlockedLevels, 2) then
            print("Stage 2 is not unlocked! Returning to hideout\n")
            GameRuleManager:GotoHideOut(UEHelpers.GetWorld())
            return true
        end
    elseif ShortName == "St03" then
        if not Util.TableContains(SaveData.UnlockedLevels, 3) then
            print("Stage 3 is not unlocked! Returning to hideout\n")
            GameRuleManager:GotoHideOut(UEHelpers.GetWorld())
            return true
        end
    elseif ShortName == "St04" then
        if not Util.TableContains(SaveData.UnlockedLevels, 4) then
            print("Stage 4 is not unlocked! Returning to hideout\n")
            GameRuleManager:GotoHideOut(UEHelpers.GetWorld())
            return true
        end
    elseif ShortName == "St05" then
        if not Util.TableContains(SaveData.UnlockedLevels, 5) then
            print("Stage 5 is not unlocked! Returning to hideout\n")
            GameRuleManager:GotoHideOut(UEHelpers.GetWorld())
            return true
        end
    elseif ShortName == "St05b" then
        if not Util.TableContains(SaveData.UnlockedLevels, 6) then
            print("Stage 6 is not unlocked! Returning to hideout\n")
            GameRuleManager:GotoHideOut(UEHelpers.GetWorld())
            return true
        end
    elseif ShortName == "St06" then
        if not Util.TableContains(SaveData.UnlockedLevels, 7) then
            print("Stage 7 is not unlocked! Returning to hideout\n")
            GameRuleManager:GotoHideOut(UEHelpers.GetWorld())
            return true
        end
    elseif ShortName == "St07" then
        if not Util.TableContains(SaveData.UnlockedLevels, 8) then
            print("Stage 8 is not unlocked! Returning to hideout\n")
            GameRuleManager:GotoHideOut(UEHelpers.GetWorld())
            return true
        end
    elseif ShortName == "St08" then
        if not Util.TableContains(SaveData.UnlockedLevels, 9) then
            print("Stage 9 is not unlocked! Returning to hideout\n")
            GameRuleManager:GotoHideOut(UEHelpers.GetWorld())
            return true
        end
    elseif ShortName == "St10" then
        if not Util.TableContains(SaveData.UnlockedLevels, 10) then
            print("Stage 10 is not unlocked! Returning to hideout\n")
            GameRuleManager:GotoHideOut(UEHelpers.GetWorld())
            return true
        end
    elseif ShortName == "St11" then
        if not Util.TableContains(SaveData.UnlockedLevels, 11) then
            print("Stage 11 is not unlocked! Returning to hideout\n")
            GameRuleManager:GotoHideOut(UEHelpers.GetWorld())
            return true
        end
    elseif ShortName == "St12" then
        if not Util.TableContains(SaveData.UnlockedLevels, 12) then
            print("Stage 12 is not unlocked! Returning to hideout\n")
            GameRuleManager:GotoHideOut(UEHelpers.GetWorld())
            return true
        end
    end
    return false
end

return Stage