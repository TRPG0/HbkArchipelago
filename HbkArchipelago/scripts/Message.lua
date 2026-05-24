Message = {}

---@return boolean
function Message.IsQueueEmpty()
    ---@type boolean
    local result = false

    ---@type UHbkNoticePopupControl | UObject
    local NoticePopupControl = FindFirstOf("HbkNoticePopupControl")
    if NoticePopupControl:IsValid() then
        NoticePopupControl.ChannelInfos:ForEach(function (index, element)
            if index == 1 then
                ---@type FHbkNoticePopupChannelInfo
                local ChannelInfo = element:get()

                if ChannelInfo.RequestQueue_Submission:GetArrayNum() == 0 then
                    result = true
                end
            end
        end)
    end

    return result
end

---@return boolean
function Message.IsNextMessageCustom()
    ---@type boolean
    local result = false

    ---@type UHbkNoticePopupControl | UObject
    local NoticePopupControl = FindFirstOf("HbkNoticePopupControl")
    if NoticePopupControl:IsValid() then
        NoticePopupControl.ChannelInfos:ForEach(function (index, element)
            if index == 1 then
                ---@type FHbkNoticePopupChannelInfo
                local ChannelInfo = element:get()
                
                if ChannelInfo.RequestQueue_Submission:GetArrayNum() > 0 then
                    if ChannelInfo.RequestQueue_Submission[1].MaxMissionNum == 0 then
                        result = true
                    end
                end
            end
        end)
    end

    return result
end

---@type FText
local OriginalTitle = nil

function Message.ChangeTitle()
    ---@type UTngRichTextBlock | UObject
    local Title = StaticFindObject("/Game/Hibiki/Blueprints/HUD/Popup/SubMisstionPopup_UI.SubMisstionPopup_UI_C:WidgetTree.SubMissionTitle")
    if Title:IsValid() then
        if OriginalTitle == nil then
            OriginalTitle = Title.Text
        end
        Title.Text = FText("Archipelago")
        --print("SubMissionTitle changed!\n")
    end

    ---@type UTngRichTextBlock | UObject
    local Text = StaticFindObject("/Game/Hibiki/Blueprints/HUD/Popup/SubMisstionPopup_UI.SubMisstionPopup_UI_C:WidgetTree.AllFoundText")
    if Text:IsValid() then
        Text.WrapTextAt = 1050
    end
end

function Message.ResetTitle()
    if OriginalTitle ~= nil then
        ---@type UTngRichTextBlock | UObject
        local Title = StaticFindObject("/Game/Hibiki/Blueprints/HUD/Popup/SubMisstionPopup_UI.SubMisstionPopup_UI_C:WidgetTree.SubMissionTitle")
        if Title:IsValid() then
            Title.Text = OriginalTitle
            --print("SubMissionTitle reset!\n")
        end
    end

    ---@type UTngRichTextBlock | UObject
    local Text = StaticFindObject("/Game/Hibiki/Blueprints/HUD/Popup/SubMisstionPopup_UI.SubMisstionPopup_UI_C:WidgetTree.AllFoundText")
    if Text:IsValid() then
        Text.WrapTextAt = 780
    end
end

---@param message string
function Message.EnqueueCustomMessage(message)
    if Message.IsQueueEmpty() then
        Message.ChangeTitle()
    end

    ---@type UHbkNoticePopupControlFunction | UObject
    local NoticePopupControl = StaticFindObject("/Script/Hibiki.Default__HbkNoticePopupControlFunction")
    if NoticePopupControl:IsValid() then
        print("Message enqueued: " .. message .. "\n")
        NoticePopupControl:ShowRequest_Submission(UEHelpers.GetWorld(), FText(message), 0, 0)
    end
end

---@param InventoryId string
function Message.EnqueueItemGet(InventoryId)
    ---@type UHbkNoticePopupControlFunction | UObject
    local NoticePopupControl = StaticFindObject("/Script/Hibiki.Default__HbkNoticePopupControlFunction")
    if NoticePopupControl:IsValid() then
        NoticePopupControl:ShowRequest_ItemGet(UEHelpers.GetWorld(), {TagName = FName(InventoryId)})
    end
end

return Message