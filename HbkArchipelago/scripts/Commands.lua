RegisterConsoleCommandHandler("connect", function (Cmd, CommandParts, Ar)
    if Multiworld:IsConnected() then
        print("Already connected.\n")
    elseif #CommandParts == 2 then
        ExecuteAsync(function ()
            Multiworld:Connect(CommandParts[1], CommandParts[2], "")
        end)
    elseif #CommandParts == 3 then
        ExecuteAsync(function ()
            Multiworld:Connect(CommandParts[1], CommandParts[2], CommandParts[3])
        end)
    else
        if SaveData:FileExists() then
            ExecuteAsync(function ()
                Multiworld:Connect(SaveData.Address, SaveData.Slot, SaveData.Password)
            end)
        else
            print("Connect command should have either 2 or 3 arguments. (connect [address:host] [player] [password]?)\n")
        end
    end
    return true
end)

RegisterConsoleCommandHandler("disconnect", function (Cmd, CommandParts, Ar)
    if Multiworld:IsConnected() then
        Multiworld:Disconnect()
    else
        print("Not connected.\n")
    end
    return true
end)

--[[RegisterConsoleCommandHandler("dt", function (Cmd, CommandParts, Ar)
    ---@type UHbkInventoryDataAsset | UObject
    local DA = StaticFindObject("/Game/Hibiki/Blueprints/Inventory/HbkInventory_DA.HbkInventory_DA")

    DA.InventoryMap:Add({TagName = FName("Product.SpecialAttacks.030")}, StaticFindObject("/Game/Hibiki/Blueprints/Inventory/Skill/SpAttack/Inventory_SPA_030.Default__Inventory_SPA_030_C"))
    print("Added to DA\n")

    ---@type UDataTable | nil
    local DT = LoadAsset("/Game/Hibiki/Blueprints/Inventory/HbkProductInfo_DT.HbkProductInfo_DT")

    if DT then
        ---@type FHbkProductInfoRow | UScriptStruct?
        local PickMeUp = DT:FindRow("Product028")
        if PickMeUp then
            PickMeUp.InventoryId.TagName = FName("Inventory.SpecialAttack.010")
            PickMeUp.DisplayProductId.TagName = FName("Inventory.SpecialAttack.030")
            print("Set Product028 tags\n")
        end
    end

    return true
end)]]

