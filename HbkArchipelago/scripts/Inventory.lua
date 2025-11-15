InventoryItem = require "InventoryItem"
ObjectCache = require "ObjectCache"
UEHelpers = require "UEHelpers"

Inventory = {}

---@type boolean
Inventory.ShouldCheckForItemObjects = false

Inventory.PieceCounts = {
    LifeUpPiece = 4,
    LifeTankPiece = 5,
    GaugeUpPiece = 4
}

---@param AddItem FHbkInventoryItem
---@param AddCount int32
function Inventory.AddItem(AddItem, AddCount)
    local Valid, PlayerCharacterManager = ObjectCache.FindPlayerCharacterManager()
    if not Valid then
        print("No HbkPlayerCharacterManager. Can't AddItem " .. AddItem.InventoryId.TagName:ToString() .. "\n")
        return
    end

    ---@type integer
    local InventoryCategory = InventoryItem.ItemCategories[AddItem]

    ---@type TMap<EHbkInventoryCategory, FHbkPlayerInventoryItemList>
    local SaveMap

    if InventoryCategory == 1 --PlayerItem
    or InventoryCategory == 2 then --VariableItem
        SaveMap = PlayerCharacterManager.PlayerStateInfo.PlayerInventory.InventoryCategoryData.Map
    elseif InventoryCategory == 3 --LatestVariableItem
    or InventoryCategory == 5 then --LatestFileItem
        SaveMap = PlayerCharacterManager.PlayerStateInfo.PlayerInventory.InventoryCategoryData_LatestSave.Map
    else
        print("This should never happen.\n")
        return
    end

    ---@type TArray<FHbkInventoryItem>
    local ItemList = {}

    --get FHbkPlayerInventoryItemList from save map
    SaveMap:ForEach(function(OuterIndex, OuterElem)
        if OuterIndex:get() == InventoryCategory then
            ItemList = OuterElem:get().List
        end
    end)

    ---@type boolean
    local HasItem = false

    --increase count if item already exists in save
    ItemList:ForEach(function(InnerIndex, InnerElem)
        ---@type FHbkInventoryItem
        local CurrentItem = InnerElem:get()

        if CurrentItem.InventoryId.TagName:ToString() == AddItem.InventoryId.TagName:ToString() then
            HasItem = true
            if (CurrentItem.Count + AddCount) > AddItem.Count then
                --if greater than max value, set to max instead
                CurrentItem.Count = AddItem.Count
            else
                local NewCount = CurrentItem.Count + AddCount
                CurrentItem.Count = NewCount

                if CurrentItem.InventoryId.TagName:ToString() == "Inventory.Variable.LifeUpPiece" and CurrentItem.Count >= Inventory.PieceCounts.LifeUpPiece then
                    print("Reached maximum for LifeUpPiece, adding LifeUp instead\n")
                    local NewCount = CurrentItem.Count - Inventory.PieceCounts.LifeUpPiece
                    CurrentItem.Count = NewCount
                    Inventory.AddItem(Inventory.LifeUp, 1)
                elseif CurrentItem.InventoryId.TagName:ToString() == "Inventory.Variable.LifeTankPiece" and CurrentItem.Count >= Inventory.PieceCounts.LifeTankPiece then
                    print("Reached maximum for LifeTankPiece, adding LifeTank instead\n")
                    local NewCount = CurrentItem.Count - Inventory.PieceCounts.LifeTankPiece
                    CurrentItem.Count = NewCount
                    Inventory.AddItem(Inventory.LifeTank, 1)
                elseif CurrentItem.InventoryId.TagName:ToString() == "Inventory.Variable.GaugeUpPiece" and CurrentItem.Count >= Inventory.PieceCounts.GaugeUpPiece then
                    print("Reached maximum for GaugeUpPiece, adding GaugeUp instead\n")
                    local NewCount = CurrentItem.Count - Inventory.PieceCounts.GaugeUpPiece
                    CurrentItem.Count = NewCount
                    Inventory.AddItem(Inventory.LifeUp, 1)
                end
            end
        end
    end)

    --item does not exist in save, add new entry
    if HasItem == false then
        ---@type FHbkInventoryItem
        local NewItem = {
            InventoryId = AddItem.InventoryId,
            Count = AddCount,
            InventoryObjectPtr = AddItem.InventoryObjectPtr
        }
        ItemList[#ItemList+1] = NewItem
    end
end

---@param InventoryId string
---@param Count int32
function Inventory.PlayerTakeItem(InventoryId, Count)
    local Valid, PlayerCharacterManager = ObjectCache.FindPlayerCharacterManager()
    if Valid then
        PlayerCharacterManager:PlayerTakeItem(UEHelpers.GetWorld(), {TagName = FName(InventoryId)}, Count)
    end
end

function Inventory.PrintVariableItemCounts()
    local Valid, PlayerCharacterManager = ObjectCache.FindPlayerCharacterManager()
    if not Valid then
        print("No HbkPlayerCharacterManager\n")
        return
    end
    
    ---@type TMap<EHbkInventoryCategory, FHbkPlayerInventoryItemList>
    local SaveMap = PlayerCharacterManager.PlayerStateInfo.PlayerInventory.InventoryCategoryData_LatestSave.Map

    SaveMap:ForEach(function(OuterIndex, OuterElem)
        if OuterIndex:get() == 3 then --EHbkInventoryCategory.LatestVariableItem == 3
            OuterElem:get().List:ForEach(function(InnerIndex, InnerElem)
                ---@type FHbkInventoryItem
                local CurrentItem = InnerElem:get()

                print(CurrentItem.InventoryId.TagName:ToString() .. " " .. CurrentItem.Count .. "\n")
            end)
        end
    end)
end

function Inventory.GetVariableItemCount(InventoryItem)
    local Valid, PlayerCharacterManager = ObjectCache.FindPlayerCharacterManager()
    if not Valid then
        print("No HbkPlayerCharacterManager\n")
        return
    end
    
    ---@type TMap<EHbkInventoryCategory, FHbkPlayerInventoryItemList>
    local SaveMap = PlayerCharacterManager.PlayerStateInfo.PlayerInventory.InventoryCategoryData_LatestSave.Map

    ---@type int32
    local ItemCount = 0

    SaveMap:ForEach(function(OuterIndex, OuterElem)
        if OuterIndex:get() == 3 then
            OuterElem:get().List:ForEach(function(InnerIndex, InnerElem)
                ---@type FHbkInventoryItem
                local CurrentItem = InnerElem:get()

                if CurrentItem.InventoryId.TagName:ToString() == InventoryItem.InventoryId.TagName:ToString() then
                    ItemCount = CurrentItem.Count
                end
            end)
        end
    end)

    return ItemCount
end

function Inventory.SetItemObjectAmounts()
    if not Inventory.ShouldCheckForItemObjects then
        return
    end

    print("Checking for placed items\n")

    ExecuteAsync(function ()
        local LifeCoreValid, LifeCore = ObjectCache.FindItemObj_LifeCorePiece()
        if LifeCoreValid and LifeCore.CoreAmount ~= 0 then
            LifeCore.CoreAmount = 0
            LifeCore.InventoryItemTag.TagName = FName("None")
            print("Set Default__ItemObj_LifeCorePiece_PLC_C CoreAmount to 0\n")
        end

        local ReverbPieceValid, ReverbPiece = ObjectCache.FindItemObj_ReverbPiece()
        if ReverbPieceValid and ReverbPiece.PieceAmount ~= 0 then
            ReverbPiece.PieceAmount = 0
            ReverbPiece.InventoryItemTag.TagName = FName("None")
            print("Set Default__ItemObj_ReverbPiece_PLC_C PieceAmount to 0\n")
        end

        local CircuitValid, Circuit = ObjectCache.FindItemObj_Circuit()
        if CircuitValid and Circuit.CircuitAmount ~= 0 then
            Circuit.CircuitAmount = 0
            Circuit.InventoryItemTag.TagName = FName("None")
            print("Set Default__ItemObj_Circuit_PLC_C CircuitAmount to 0\n")
        end

        local TankPieceValid, TankPiece = ObjectCache.FindItemObj_TankPiece()
        if TankPieceValid and TankPiece.PieceAmount ~= 0 then
            TankPiece.PieceAmount = 0
            TankPiece.InventoryItemTag.TagName = FName("None")
            print("Set Default__ItemObj_LifeTankPiece_PLC_C PieceAmount to 0\n")
        end

        --these are life cores for some reason
        if not Util.TableContains(SaveData.Checked, "St02/RockComic_A_BP_2") then
            if Util.GetCurrentLevelShortName() == "St02" then
                local ComicAValid, ComicA = ObjectCache.FindItemObj_ComicA()
                if ComicAValid and ComicA.InventoryItemTag.TagName ~= FName("None") then
                    ComicA.InventoryItemTag.TagName = FName("None")
                    print("Set Default__ItemObj_ComicA_PLC_C.InventoryItemTag.TagName to None")
                end
            end
        end

        if not Util.TableContains(SaveData.Checked, "St03/RockComic_B_BP_3") then
            if Util.GetCurrentLevelShortName() == "St03" then
                local ComicBValid, ComicB = ObjectCache.FindItemObj_ComicB()
                if ComicBValid and ComicB.InventoryItemTag.TagName ~= FName("None") then
                    ComicB.InventoryItemTag.TagName = FName("None")
                    print("Set Default__ItemObj_ComicB_PLC_C.InventoryItemTag.TagName to None")
                end
            end
        end

        if not Util.TableContains(SaveData.Checked, "St05/RockComic_C_BP_2") then
            if Util.GetCurrentLevelShortName() == "St05" then
                local ComicCValid, ComicC = ObjectCache.FindItemObj_ComicC()
                if ComicCValid and ComicC.InventoryItemTag.TagName ~= FName("None") then
                    ComicC.InventoryItemTag.TagName = FName("None")
                    print("Set Default__ItemObj_ComicC_PLC_C.InventoryItemTag.TagName to None")
                end
            end
        end

        if not Util.TableContains(SaveData.Checked, "St06/RockComic_D_BP_3") then
            if Util.GetCurrentLevelShortName() == "St06" then
                local ComicDValid, ComicD = ObjectCache.FindItemObj_ComicD()
                if ComicDValid and ComicD.InventoryItemTag.TagName ~= FName("None") then
                    ComicD.InventoryItemTag.TagName = FName("None")
                    print("Set Default__ItemObj_ComicD_PLC_C.InventoryItemTag.TagName to None")
                end
            end
        end
    end)
end

return Inventory