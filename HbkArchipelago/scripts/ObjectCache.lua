ObjectCache = {}

---@type UHbkPlayerCharacterManager | UObject
local HbkPlayerCharacterManager = nil
---@return boolean, UHbkPlayerCharacterManager | UObject
function ObjectCache.FindPlayerCharacterManager()
    if HbkPlayerCharacterManager == nil or not HbkPlayerCharacterManager:IsValid() then
        HbkPlayerCharacterManager = FindFirstOf("HbkPlayerCharacterManager")
        return HbkPlayerCharacterManager:IsValid(), HbkPlayerCharacterManager
    else
        return true, HbkPlayerCharacterManager
    end
end

---@type UHbkSaveGameManager | UObject
local HbkSaveGameManager = nil
---@return boolean, UHbkSaveGameManager | UObject
function ObjectCache.FindSaveGameManager()
    if HbkSaveGameManager == nil or not HbkSaveGameManager:IsValid() then
        HbkSaveGameManager = FindFirstOf("HbkSaveGameManager")
        return HbkSaveGameManager:IsValid(), HbkSaveGameManager
    else
        return true, HbkSaveGameManager
    end
end

---@type UHbkGameRuleManager | UObject
local HbkGameRuleManager = nil
---@return boolean, UHbkGameRuleManager | UObject
function ObjectCache.FindGameRuleManager()
    if HbkGameRuleManager == nil or not HbkGameRuleManager:IsValid() then
        HbkGameRuleManager = FindFirstOf("HbkGameRuleManager")
        return HbkGameRuleManager:IsValid(), HbkGameRuleManager
    else
        return true, HbkGameRuleManager
    end
end

---@type UHbkTalkManager | UObject
local HbkTalkManager = nil
---@return boolean, UHbkTalkManager | UObject
function ObjectCache.FindTalkManager()
    if HbkTalkManager == nil or not HbkTalkManager:IsValid() then
        HbkTalkManager = FindFirstOf("HbkTalkManager")
        return HbkTalkManager:IsValid(), HbkTalkManager
    else
        return true, HbkTalkManager
    end
end

---@type UHbkItemObj_LifeCore | UObject
local ItemObj_LifeCore = nil
---@return boolean, UHbkItemObj_LifeCore | UObject
function ObjectCache.FindItemObj_LifeCorePiece()
    if ItemObj_LifeCore == nil or not ItemObj_LifeCore:IsValid() then
        ItemObj_LifeCore = StaticFindObject("/Game/Hibiki/Blueprints/Item/Object/Placement/ItemObj_LifeCorePiece_PLC.Default__ItemObj_LifeCorePiece_PLC_C")
        return ItemObj_LifeCore:IsValid(), ItemObj_LifeCore
    else
        return true, ItemObj_LifeCore
    end
end

---@type UHbkItemObj_ReverbPiece | UObject
local ItemObj_ReverbPiece = nil
---@return boolean, UHbkItemObj_ReverbPiece | UObject
function ObjectCache.FindItemObj_ReverbPiece()
    if ItemObj_ReverbPiece == nil or not ItemObj_ReverbPiece:IsValid() then
        ItemObj_ReverbPiece = StaticFindObject("/Game/Hibiki/Blueprints/Item/Object/Placement/ItemObj_ReverbPiece_PLC.Default__ItemObj_ReverbPiece_PLC_C")
        return ItemObj_ReverbPiece:IsValid(), ItemObj_ReverbPiece
    else
        return true, ItemObj_ReverbPiece
    end
end

---@type UHbkItemObj_Circuit | UObject
local ItemObj_Circuit = nil
---@return boolean, UHbkItemObj_Circuit | UObject
function ObjectCache.FindItemObj_Circuit()
    if ItemObj_Circuit == nil or not ItemObj_Circuit:IsValid() then
        ItemObj_Circuit = StaticFindObject("/Game/Hibiki/Blueprints/Item/Object/Placement/ItemObj_Circuit_PLC.Default__ItemObj_Circuit_PLC_C")
        return ItemObj_Circuit:IsValid(), ItemObj_Circuit
    else
        return true, ItemObj_Circuit
    end
end

---@type UHbkItemObj_TankPiece | UObject
local ItemObj_TankPiece = nil
---@return boolean, UHbkItemObj_TankPiece | UObject
function ObjectCache.FindItemObj_TankPiece()
    if ItemObj_TankPiece == nil or not ItemObj_TankPiece:IsValid() then
        ItemObj_TankPiece = StaticFindObject("/Game/Hibiki/Blueprints/Item/Object/Placement/ItemObj_LifeTankPiece_PLC.Default__ItemObj_LifeTankPiece_PLC_C")
        return ItemObj_TankPiece:IsValid(), ItemObj_TankPiece
    else
        return true, ItemObj_TankPiece
    end
end

--these are life cores for some reason
---@type UHbkItemObj_LifeCore | UObject
local ItemObj_ComicA = nil
---@return boolean, UHbkItemObj_LifeCore | UObject
function ObjectCache.FindItemObj_ComicA()
    if ItemObj_ComicA == nil or not ItemObj_ComicA:IsValid() then
        ItemObj_ComicA = StaticFindObject("/Game/Hibiki/Blueprints/Item/Object/Placement/ItemObj_ComicA_PLC.Default__ItemObj_ComicA_PLC_C")
        return ItemObj_ComicA:IsValid(), ItemObj_ComicA
    else
        return true, ItemObj_ComicA
    end
end

---@type UHbkItemObj_LifeCore | UObject
local ItemObj_ComicB = nil
---@return boolean, UHbkItemObj_LifeCore | UObject
function ObjectCache.FindItemObj_ComicB()
    if ItemObj_ComicB == nil or not ItemObj_ComicB:IsValid() then
        ItemObj_ComicB = StaticFindObject("/Game/Hibiki/Blueprints/Item/Object/Placement/ItemObj_ComicB_PLC.Default__ItemObj_ComicB_PLC_C")
        return ItemObj_ComicB:IsValid(), ItemObj_ComicB
    else
        return true, ItemObj_ComicB
    end
end

---@type UHbkItemObj_LifeCore | UObject
local ItemObj_ComicC = nil
---@return boolean, UHbkItemObj_LifeCore | UObject
function ObjectCache.FindItemObj_ComicC()
    if ItemObj_ComicC == nil or not ItemObj_ComicC:IsValid() then
        ItemObj_ComicC = StaticFindObject("/Game/Hibiki/Blueprints/Item/Object/Placement/ItemObj_ComicC_PLC.Default__ItemObj_ComicC_PLC_C")
        return ItemObj_ComicC:IsValid(), ItemObj_ComicC
    else
        return true, ItemObj_ComicC
    end
end

---@type UHbkItemObj_LifeCore | UObject
local ItemObj_ComicD = nil
---@return boolean, UHbkItemObj_LifeCore | UObject
function ObjectCache.FindItemObj_ComicD()
    if ItemObj_ComicD == nil or not ItemObj_ComicD:IsValid() then
        ItemObj_ComicD = StaticFindObject("/Game/Hibiki/Blueprints/Item/Object/Placement/ItemObj_ComicD_PLC.Default__ItemObj_ComicD_PLC_C")
        return ItemObj_ComicD:IsValid(), ItemObj_ComicD
    else
        return true, ItemObj_ComicD
    end
end

return ObjectCache