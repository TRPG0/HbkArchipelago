RegisterKeyBind(Key.ONE, { ModifierKey.CONTROL }, function ()
    SaveData:PrintAll()
end)
print("Ctrl + ONE: Print current SaveData\n")

RegisterKeyBind(Key.TWO, { ModifierKey.CONTROL }, function ()
    print(SaveData.GetCurrentSlotName())
    print(Util.GetCurrentLevelName())
    print(Util.GetCurrentLevelShortName())
end)
print("Ctrl + TWO: Print save slot name, level name, short name\n")

RegisterKeyBind(Key.THREE, { ModifierKey.CONTROL }, function ()
    Ability.BeatHit.Add()

    local Valid, PlayerCharacterManager = ObjectCache.FindPlayerCharacterManager()
    if Valid then
        --PlayerCharacterManager:JoinedNewPartner(UEHelpers.GetWorld(), 1)
        PlayerCharacterManager:Set808Visibility(true)
    end
    print("Added BeatHit\n")
end)
print("Ctrl + THREE: Add BeatHit\n")

RegisterKeyBind(Key.FOUR, { ModifierKey.CONTROL }, function ()
    ---@type UHbkInventoryManager | UObject
    local InventoryManager = FindFirstOf("HbkInventoryManager")

    if InventoryManager:IsValid() and SaveData.IsCurrentFileRandomized then
        InventoryManager:OpenCostumeAll()
        print("Unlocked all cosmetics!\n")
    end
end)
print("Ctrl + FOUR: Unlock all cosmetics\n")

RegisterKeyBind(Key.ZERO, function ()
    local Valid, TalkManager = ObjectCache.FindTalkManager()

    if Valid then
        TalkManager:RequestTalkLineSkip(UEHelpers.GetWorld())
    end
end)
print("ZERO: RequestTalkLineSkip\n")