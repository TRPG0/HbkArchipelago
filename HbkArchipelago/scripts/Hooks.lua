local Hooks = {}

---@type Hook
Hooks.Receive_StartSequenceHook = {
    Target = "/Script/Hibiki.HbkPlayerCharacterManager:Receive_StartSequence",
    PreCallback = function(self, Info)
        ---@type FHbkPlayingLevelSeqInfo
        local SeqInfo = Info:get()

        ---@type string
        local LevelSeqName = SeqInfo.LevelSeqName:ToString()
        print("Receive_StartSequence " .. LevelSeqName .. " | IsCutsceneSequence: " .. tostring(SeqInfo.IsCutsceneSequence) .. "\n")

        if SaveData.IsCurrentFileRandomized then
            SaveData.LastSequence = LevelSeqName
            if Util.TableContains(Sequence.BossFightSequences, LevelSeqName) then
                Inventory.ShouldCheckForItemObjects = false
            end
        end

        ---@type OnSequence
        local OnStartSeq = Sequence.OnStartSequence[LevelSeqName]
        if OnStartSeq then
            if (OnStartSeq.OnlyIfRandomized and SaveData.IsCurrentFileRandomized) or not OnStartSeq.OnlyIfRandomized then
                OnStartSeq.Callback()
            end
        end
    end
}

---@type Hook
Hooks.Receive_StartEventSceneHook = {
    Target = "/Script/Hibiki.HbkPlayerCharacterManager:Receive_StartEventScene",
    PreCallback = function(self, Info)
        ---@type FHbkPlayingTalkEventSceneInfo
        local EventInfo = Info:get()
        print("Receive_StartEventScene " .. EventInfo.Temp:ToString() .. "\n")
    end
}

---@type Hook
Hooks.Receive_OnPostStartPlayHook = {
    Target = "/Script/Hibiki.HbkPlayerCharacterManager:Receive_OnPostStartPlay",
    PreCallback = function()
        local LevelName = Util.GetCurrentLevelName()
        print("Receive_OnPostStartPlay " .. LevelName .. "\n")

        if LevelName == "Level /Game/Hibiki/Maps/Title/Title_All.Title_All:PersistentLevel" then
            SaveData:ResetToDefault()
            if Multiworld:IsConnected() then
                Multiworld:Disconnect()
            end
        end

        if IsLoadingSaveSlot then
            IsLoadingSaveSlot = false
            local CurrentSlotName = SaveData.GetCurrentSlotName()
            if SaveData:FileExists(CurrentSlotName) then
                SaveData:Load(CurrentSlotName)
            end
        end

        if SaveData.IsCurrentFileRandomized then
            if Stage.GotoHideOutIfLevelNotUnlocked() then
                return
            end

            Inventory.ShouldCheckForItemObjects = Util.LevelHasItemObjects()

            Inventory.SetItemObjectAmounts()
            Battle.GetTableForCurrentLevel()
        end
    end
}

---@type Hook
Hooks.Receive_EndSequenceHook = {
    Target = "/Script/Hibiki.HbkPlayerCharacterManager:Receive_EndSequence",
    PreCallback = function(self, Info)
        ---@type FHbkPlayingLevelSeqInfo
        local SeqInfo = Info:get()
        print("Receive_EndSequence " .. SeqInfo.LevelSeqName:ToString() .. "\n")

        ---@type OnSequence
        local OnEndSeq = Sequence.OnEndSequence[SeqInfo.LevelSeqName:ToString()]
        if OnEndSeq then
            if (OnEndSeq.OnlyIfRandomized and SaveData.IsCurrentFileRandomized) or not OnEndSeq.OnlyIfRandomized then
                OnEndSeq.Callback()
            end
        end
    end
}

---@type Hook
Hooks.Receive_EndEventSceneHook = {
    Target = "/Script/Hibiki.HbkPlayerCharacterManager:Receive_EndEventScene",
    PreCallback = function()
        print("Receive_EndEventScene\n")
    end
}

---@type Hook
Hooks.LearnPlayerAbilityHook = {
    Target = "/Script/Hibiki.HbkPlayerCharacterManager:LearnPlayerAbility",
    PreCallback = function(self, WorldContextObject, AbilityType)
        ---@type EHbkPlayerAppendAbilityType
        local ability = AbilityType:get()
        print("Learned ability: " .. ability .. "\n")
    end
}

---@type Hook
Hooks.Multicast_UseItemHook = {
    Target = "/Script/Hibiki.HbkItemBase:Multicast_UseItem",
    PreCallback = function(self, User, InventoryId, Count)
        ---@type string
        local itemName = self:get():GetFName():ToString()

        if string.find(itemName, "LifeCore")
        or string.find(itemName, "ReverbPiece")
        or string.find(itemName, "Circuit")
        or string.find(itemName, "TankPiece")
        or string.find(itemName, "Comic") then
            if not string.find(itemName, "BP_C_") then
                --print("Multicast_UseItem " .. item:GetFullName() .. "\n")
                if SaveData.IsCurrentFileRandomized then
                    --print("test\n")
                    --ExecuteWithDelay(500, function ()
                        Multiworld:CheckLocation(Util.GetCurrentLevelShortName() .. "/" .. itemName)
                    --end)
                end
            end
        end
    end
}

---@type Hook
Hooks.OnInteractionHook = {
    Target = "/Script/Hibiki.HbkInteractItemBase:OnInteraction",
    PreCallback = function(self, Interactor)
        ---@type AHbkInteractItemBase
        local InteractItem = self:get()
        if InteractItem:GetClass():GetSuperStruct():GetFName():ToString() == "HbkVLogItem" then
            print("OnInteraction " .. InteractItem:GetFName():ToString() .. "\n")
        end
    end
}

---@type Hook
Hooks.HOCMachineOnInteractionHook = {
    Target = "/Script/Hibiki.HbkGimmick_HOCMachine:OnInteraction",
    PreCallback = function(self, Interactor)
        --[[
        ---@type AHbkGimmick_HOCMachine
        local Machine = self:get()
        print("OnInteraction " .. Machine:GetFName():ToString() .. "\n")]]

        if SaveData.IsCurrentFileRandomized then
            Store.OnPreStoreOpened()
        end
    end
}

---@type Hook
Hooks.Receive_OnStoreClosedHook = {
    Target = "/Script/Hibiki.HbkPurchaseController:Receive_OnStoreClosed",
    PreCallback = function()
        print("Receive_OnStoreClosed\n")
        if SaveData.IsCurrentFileRandomized then
            Store.OnStoreClosed()
        end
    end
}

---@type Hook
Hooks.RequestDeleteGameHook = {
    Target = "/Script/Hibiki.HbkSaveGameBlueprintAsyncDeleteGame:RequestDeleteGame",
    PreCallback = function(self, WorldContextObject, SlotName)
        print("RequestDeleteGame " .. SlotName:get():ToString() .. "\n")
    end
}

---@type Hook
Hooks.RequestSaveGameHook = {
    Target = "/Script/Hibiki.HbkSaveGameBlueprintAsyncSaveGame:RequestSaveGame",
    PreCallback = function(self, WorldContextObject, SlotName, OverrideSpawnSpot)
        print("RequestSaveGame " .. SlotName:get():ToString() .. "\n")
    end
}

---@type Hook
Hooks.RequestAutoSaveGameHook = {
    Target = "/Script/Hibiki.HbkSaveGameBlueprintAsyncSaveGame:RequestAutoSaveGame",
    PreCallback = function(self, WorldContextObject, OverrideSpawnSpot)
        print("RequestAutoSaveGame\n")
        if SaveData.IsCurrentFileRandomized then
            Inventory.SetItemObjectAmounts()
            SaveData:Save()
        end
    end
}

---@type Hook
Hooks.SecretBoxGetItemHook = {
    Target = "/Script/Hibiki.HbkNp0600_SecretBox:GetItem",
    PreCallback = function(self, InventoryTagName)
        --print(self:get():GetFName():ToString() .. "\n")
        if SaveData.IsCurrentFileRandomized then
            Multiworld:CheckLocation(Util.GetCurrentLevelShortName() .. "/" .. self:get():GetFName():ToString())
        end
    end
}

---@type Hook
Hooks.LoadSaveSlotHook = {
    Target = "/Script/Hibiki.HbkTitleMenuFlowManagerActor:LoadSaveSlot",
    PreCallback = function ()
        print("LoadSaveSlot\n")
        IsLoadingSaveSlot = true
    end
}

---@type Hook
Hooks.BattleEndedHook = {
    Target = "/Script/Hibiki.HbkBattleScoreParentWidget:BattleEnded",
    PreCallback = function (self, ResultDetail, ScoreDetail, JustTimingDetail, TimeDetail)
        ---@type integer
        local BattleId = ResultDetail:get().BattleId

        if Util.TableContains(Battle.Completed, BattleId) then
            return
        end

        Util.AddToTableIfNotHas(Battle.Completed, BattleId)
        print("BattleEnded " .. tostring(BattleId) .. "\n")

        if Battle.CurrentTable then
            ---@type OnSequence
            local OnBattleEnded = Battle.CurrentTable[BattleId]
            if OnBattleEnded then
                if (OnBattleEnded.OnlyIfRandomized and SaveData.IsCurrentFileRandomized) or not SaveData.IsCurrentFileRandomized then
                    OnBattleEnded.Callback()
                end
            end
        end
    end
}

---@type Hook
Hooks.RecieveTalkCueHook = {
    Target = "/Script/Hibiki.HbkTalkEventSequence:RecieveTalkCue",
    PreCallback = function (self, TalkCueName)
        ---@type string
        local TalkCue = TalkCueName:get():ToString()
        print("RecieveTalkCue " .. TalkCue .. "\n")

        if SaveData.IsCurrentFileRandomized then
            if TalkCue == "ST14A_Mac_ShopStart" then
                Store.OnPreStoreOpened()
            end
        end
    end
}

---@type Hook
Hooks.OnClickedToPurchaseButtonHook = {
    Target = "/Script/Hibiki.HbkStoreMenuSpecialAttacksWidget:OnClickedToPurchaseButton",
    PreCallback = function (self, Sender)
        print("OnClickedToPurchaseButton\n")
    end
}

---@type Hook
Hooks.OnClickedToEquipmentButtonHook = {
    Target = "/Script/Hibiki.HbkStoreMenuSpecialAttacksWidget:OnClickedToEquipmentButton",
    PreCallback = function (self, Sender)
        print("OnClickedToEquipmentButton\n")
    end
}

---@param Hook Hook
local function RegisterSingleHook(Hook)
    if Hook.PreId ~= nil or Hook.PostId ~= nil then
        return
    end
    local preid, postid = RegisterHook(Hook.Target, Hook.PreCallback, Hook.PostCallback)
    Hook.PreId = preid
    Hook.PostId = postid
end

---@param Hook Hook
local function UnregisterSingleHook(Hook)
    if Hook.PreId == nil or Hook.PostId == nil then
        return
    end
    UnregisterHook(Hook.Target, Hook.PreId, Hook.PostId)
    Hook.PreId = nil
    Hook.PostId = nil
end

function Hooks:RegisterAllHooks()
    RegisterSingleHook(Hooks.Receive_StartSequenceHook)
    RegisterSingleHook(Hooks.Receive_StartEventSceneHook)
    RegisterSingleHook(Hooks.Receive_OnPostStartPlayHook)
    RegisterSingleHook(Hooks.Receive_EndSequenceHook)
    RegisterSingleHook(Hooks.Receive_EndEventSceneHook)
    --RegisterSingleHook(Hooks.LearnPlayerAbilityHook)
    RegisterSingleHook(Hooks.Multicast_UseItemHook)
    RegisterSingleHook(Hooks.OnInteractionHook)
    RegisterSingleHook(Hooks.HOCMachineOnInteractionHook)
    RegisterSingleHook(Hooks.Receive_OnStoreClosedHook)
    RegisterSingleHook(Hooks.RequestDeleteGameHook)
    RegisterSingleHook(Hooks.RequestSaveGameHook)
    RegisterSingleHook(Hooks.RequestAutoSaveGameHook)
    RegisterSingleHook(Hooks.SecretBoxGetItemHook)
    RegisterSingleHook(Hooks.LoadSaveSlotHook)
    RegisterSingleHook(Hooks.BattleEndedHook)
    RegisterSingleHook(Hooks.RecieveTalkCueHook)
end

function Hooks:UnregisterAllHooks()
    UnregisterSingleHook(Hooks.Receive_StartSequenceHook)
    UnregisterSingleHook(Hooks.Receive_StartEventSceneHook)
    UnregisterSingleHook(Hooks.Receive_OnPostStartPlayHook)
    UnregisterSingleHook(Hooks.Receive_EndSequenceHook)
    UnregisterSingleHook(Hooks.Receive_EndEventSceneHook)
    --UnregisterSingleHook(Hooks.LearnPlayerAbilityHook)
    UnregisterSingleHook(Hooks.Multicast_UseItemHook)
    UnregisterSingleHook(Hooks.OnInteractionHook)
    UnregisterSingleHook(Hooks.HOCMachineOnInteractionHook)
    UnregisterSingleHook(Hooks.Receive_OnStoreClosedHook)
    UnregisterSingleHook(Hooks.RequestDeleteGameHook)
    UnregisterSingleHook(Hooks.RequestSaveGameHook)
    UnregisterSingleHook(Hooks.RequestAutoSaveGameHook)
    UnregisterSingleHook(Hooks.SecretBoxGetItemHook)
    UnregisterSingleHook(Hooks.LoadSaveSlotHook)
    UnregisterSingleHook(Hooks.BattleEndedHook)
    UnregisterSingleHook(Hooks.RecieveTalkCueHook)
end

---@type BPHook
Hooks.BPPushTextNewLineHook = {
    ClassTarget = "/Script/Hibiki.HbkTalkBalloonWidget",
    ScriptTarget = "/Game/Hibiki/Widget/Talk/HbkTalkBalloonWidget_UI.HbkTalkBalloonWidget_UI_C:PushTextNewLine",
    Callback = function (self, Name, TextLine)
        print("PushTextNewLine " .. Name:get():ToString() .. " " .. TextLine:get():ToString() .. "\n")

        ---@type UKismetTextLibrary | UObject
        local KismetTextLibrary = StaticFindObject("/Script/Engine.Default__KismetTextLibrary")
        local OutTableId = {}
        local OutKey = {}

        local ret = KismetTextLibrary:StringTableIdAndKeyFromText(TextLine:get(), OutTableId, OutKey)

        print(ret)
        print(#OutTableId)
        print(#OutKey)

        for _, k in ipairs(OutTableId) do
            print(k)
        end

        for _, k in ipairs(OutKey) do
            print(k)
        end
    end
}

---@param BPHook BPHook
local function RegisterSingleBPHook(BPHook)
    if BPHook.PreID ~= nil or BPHook.PostId ~= nil then
        return
    end
    NotifyOnNewObject(BPHook.ClassTarget, function ()
        if BPHook.PreID ~= nil or BPHook.PostId ~= nil then
            return
        end
        local preid, postid = RegisterHook(BPHook.ScriptTarget, BPHook.Callback)
        BPHook.PreID = preid
        BPHook.PostId = postid
    end)
end

---@param BPHook BPHook
local function UnregisterSingleBPHook(BPHook)
    if BPHook.PreID == nil or BPHook.PostId == nil then
        return
    end
    UnregisterHook(BPHook.ScriptTarget, BPHook.PreID, BPHook.PostId)
    BPHook.PreID = nil
    BPHook.PostId = nil
end

function Hooks:RegisterAllBPHooks()
    --RegisterSingleBPHook(Hooks.BPPushTextNewLineHook)
end

function Hooks:UnregisterAllBPHooks()
    --UnregisterSingleBPHook(Hooks.BPPushTextNewLineHook)
end

return Hooks