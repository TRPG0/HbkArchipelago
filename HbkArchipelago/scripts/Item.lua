Inventory = require "Inventory"
InventoryItem = require "InventoryItem"
ObjectCache = require "ObjectCache"
SaveData = require "SaveData"
SkillTags = require "SkillTags"
Util = require "Util"

Item = {}

---@type table<string, string>
local VariableItems = {
    ["Broken Armstrong Circuit"] = "Inventory.Variable.Circuit",
    ["Life Gauge Piece"] = "Inventory.Variable.LifeUpPiece",
    ["Life Gauge"] = "Inventory.Variable.LifeUp",
    ["Broken Piece of a Health Tank"] = "Inventory.Variable.LifeTankPiece",
    ["Health Tank"] = "Inventory.Variable.LifeTank",
    ["Electric Reverb Core Piece"] = "Inventory.Variable.GaugeUpPiece",
    ["Electric Reverb Core"] = "Inventory.Variable.GaugeUp"
}

---@type table<string, FHbkInventoryItem>
local CollectibleItems = {
    ["Rock Comic A"] = InventoryItem.RockComicA,
    ["Rock Comic B"] = InventoryItem.RockComicB,
    ["Rock Comic C"] = InventoryItem.RockComicC,
    ["Rock Comic D"] = InventoryItem.RockComicD
}

---@type table<string, HbkPlayerStateInfoTags>
local AttackItems = {
    ["Air Countdown"] = SkillTags.Combo_AirXXXX,
    ["Compressor Slam"] = SkillTags.Combo_AirXYXY,
    ["Harmonic Beam"] = SkillTags.Combo_AirXYYY,
    ["Hammer-On"] = SkillTags.Combo_AirY,
    ["Staccato Launch"] = SkillTags.Combo_ChargeX,
    ["Gain Tornado"] = SkillTags.Combo_ChargeY,
    ["Dash Attack"] = SkillTags.Combo_D_X,
    ["Air Launch"] = SkillTags.Combo_D_Y,
    ["Quick Beat Hit"] = SkillTags.Combo_QuickX,
    ["Steal Counter"] = SkillTags.Combo_QuickY,
    ["Rise Up"] = SkillTags.Combo_X_XX,
    ["Shred"] = SkillTags.Combo_XmY,
    ["Tune Up"] = SkillTags.Combo_XX_XXX,
    ["Humbucker"] = SkillTags.Combo_XXXX,
    ["Arpeggio Stab"] = SkillTags.Combo_XXYYY,
    ["Echo Splash"] = SkillTags.Combo_XYXXX,
    ["Breakdown"] = SkillTags.Combo_XYY,
    ["Tremolo"] = SkillTags.Combo_YXX,
    ["Stomp Box"] = SkillTags.Combo_YXY,
    ["Pickup Crash"] = SkillTags.Combo_YYX,
    ["Grandslam"] = SkillTags.Combo_YYY,
    ["Cannon Spike"] = SkillTags.PartnerChargeP01,
    ["Kick Shot"] = SkillTags.PartnerCounterP01,
    ["Switch Kicker"] = SkillTags.PartnerJamPG01,
    ["Master Blaster"] = SkillTags.PartnerJamPA01,
    ["Gravity Well"] = SkillTags.PartnerChargeM01,
    ["Love Tap"] = SkillTags.PartnerCounterM01,
    ["Double Bass Drop"] = SkillTags.PartnerJamMG01,
    ["High Strung"] = SkillTags.PartnerJamMA01,
    ["Korsica Typhoon"] = SkillTags.PartnerChargeK01,
    ["High Alert"] = SkillTags.PartnerCounterK01,
    ["High Security Risk"] = SkillTags.PartnerJamKG01,
    ["Tornado Lift"] = SkillTags.PartnerJamKA01,
    ["Guitar Ride"] = SkillTags.SpecialAttack020,
    ["Pick Me Up!"] = SkillTags.SpecialAttack030,
    ["Pick Slide"] = SkillTags.SpecialAttack040,
    ["High Pitch Punch"] = SkillTags.SpecialAttack050,
    ["Air Guitar"] = SkillTags.SpecialAttack060,
    ["Rip and Tear"] = SkillTags.SpecialAttack080,
    ["Double Riff"] = SkillTags.SpecialAttack310,
    ["Barrier Wall"] = SkillTags.SpecialAttack330,
    ["Twin Assault"] = SkillTags.SpecialAttack340,
    ["Steal the Show"] = SkillTags.SpecialAttack350,
    ["Holo-Chai"] = SkillTags.SpecialAttack360,
    ["Hibiki!"] = SkillTags.SpecialAttack610,
    ["Overdrive Slash"] = SkillTags.SpecialAttack620,
    ["808-Gigawatt Cat-attack"] = SkillTags.SpecialAttack910,
    ["CNMANIAC"] = SkillTags.SpecialAttack1010,
    ["My Hero!"] = SkillTags.SpecialAttack1020
}

---@param ItemName string
function Item.GetItem(ItemName)
    if string.find(ItemName, "Track") then
        Item.GetTrackItem(ItemName)
        SaveData.Index = SaveData.Index + 1
        return
    end

    if string.find(ItemName, "Gears") then
        Item.GetGearsItem(ItemName)
        SaveData.Index = SaveData.Index + 1
        return
    end

    if VariableItems[ItemName] then
        Item.GetVariableItem(ItemName)
        SaveData.Index = SaveData.Index + 1
        return
    end

    if CollectibleItems[ItemName] then
        Item.GetCollectibleItem(ItemName)
        SaveData.Index = SaveData.Index + 1
        return
    end

    if AttackItems[ItemName] then
        Item.GetAttackItem(ItemName)
        SaveData.Index = SaveData.Index + 1
        return
    end

    print("No function for item: " .. ItemName .. "\n")
end

---@param ItemName string
function Item.GetTrackItem(ItemName)
    print("GetTrackItem " .. ItemName .. "\n")
    if ItemName == "Unlock Next Track" then
        if SaveData.TrackOrderNormal then
            if #SaveData.UnlockedLevels < 12 then
                table.insert(SaveData.UnlockedLevels, SaveData.UnlockedLevels[#SaveData.UnlockedLevels]+1)
            end
        end
    else
        if not SaveData.TrackOrderNormal then
            local TrackNum = tonumber(string.sub(ItemName, 7))
            table.insert(SaveData.UnlockedLevels, TrackNum)
        end
    end
end

---@param ItemName string
function Item.GetVariableItem(ItemName)
    print("GetVariableItem " .. ItemName .. "\n")

    ---@type string
    local InventoryId = VariableItems[ItemName]
    Inventory.PlayerTakeItem(InventoryId, 1)
end

---@param ItemName string
function Item.GetCollectibleItem(ItemName)
    print("GetCollectibleItem " .. ItemName .. "\n")

    ---@type FHbkInventoryItem
    local AddItem = CollectibleItems[ItemName]
    Inventory.AddItem(AddItem, 1)
end

---@param ItemName string
function Item.GetAttackItem(ItemName)
    print("GetAttackItem " .. ItemName .. "\n")

    ---@type HbkPlayerStateInfoTags
    local AddSkill = AttackItems[ItemName]
    SkillTags.Add(AddSkill)
end

---@param ItemName string
function Item.GetGearsItem(ItemName)
    print("GetGearsItem " .. ItemName .. "\n")

    local Amount = Util.GetGearsNumber(ItemName)

    local Valid, PlayerCharacterManager = ObjectCache.FindPlayerCharacterManager()
    if Valid then
        PlayerCharacterManager:AddMoney(Amount, false)
    end
end

return Item