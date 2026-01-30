Item = {}

---@type table<string, string>
local NameToInventoryTag = {
    --Variable Items
    ["Broken Armstrong Circuit"] = "Inventory.Variable.Circuit",
    ["Life Gauge Piece"] = "Inventory.Variable.LifeUpPiece",
    ["Life Gauge"] = "Inventory.Variable.LifeUp",
    ["Broken Piece of a Health Tank"] = "Inventory.Variable.LifeTankPiece",
    ["Health Tank"] = "Inventory.Variable.LifeTank",
    ["Electric Reverb Core Piece"] = "Inventory.Variable.GaugeUpPiece",
    ["Electric Reverb Core"] = "Inventory.Variable.GaugeUp",
    ["Additional Chip Slot"] = "Inventory.Variable.ChipSlot",
    ["Special Attack Slot Upgrade"] = "Inventory.Variable.SpAttackSlot",
    ["Rock Comic A"] = "Inventory.File.RockComic.010",
    ["Rock Comic B"] = "Inventory.File.RockComic.020",
    ["Rock Comic C"] = "Inventory.File.RockComic.030",
    ["Rock Comic D"] = "Inventory.File.RockComic.040",

    -- Chai Attacks
    ["Air Countdown"] = "Inventory.Combo.AirXXXX",
    ["Compressor Slam"] = "Inventory.Combo.AirXYXY",
    ["Harmonic Beam"] = "Inventory.Combo.AirXYYY",
    ["Hammer-On"] = "Inventory.Combo.AirY",
    ["Staccato Launch"] = "Inventory.Combo.C-X",
    ["Gain Tornado"] = "Inventory.Combo.C-Y",
    ["Dash Attack"] = "Inventory.Combo.D-X",
    ["Air Launch"] = "Inventory.Combo.D-Y",
    ["Quick Beat Hit"] = "Inventory.Combo.Q-X",
    ["Steal Counter"] = "Inventory.Combo.Q-Y",
    ["Rise Up"] = "Inventory.Combo.X-XX",
    ["Shred"] = "Inventory.Combo.XmY",
    ["Tune Up"] = "Inventory.Combo.XX-XXX",
    ["Humbucker"] = "Inventory.Combo.XXXX",
    ["Arpeggio Stab"] = "Inventory.Combo.XXYYY",
    ["Echo Splash"] = "Inventory.Combo.XYXXX",
    ["Breakdown"] = "Inventory.Combo.XYY",
    ["Tremolo"] = "Inventory.Combo.YXX",
    ["Stomp Box"] = "Inventory.Combo.YXY",
    ["Pickup Crash"] = "Inventory.Combo.YYX",
    ["Grandslam"] = "Inventory.Combo.YYY",
    ["Magnet Backstab"] = "Inventory.Ability.MagnetBackstab",
    ["Air Parry"] = "Inventory.Ability.AirParry",
    ["Directional Parry"] = "Inventory.Ability.DirectionalParry",

    --Peppermint Attacks
    ["Cannon Spike"] = "Inventory.Partner.Charge.P01",
    ["Kick Shot"] = "Inventory.Partner.Counter.P01",
    ["Switch Kicker"] = "Inventory.Partner.JamCombo.PG01",
    ["Master Blaster"] = "Inventory.Partner.JamCombo.PA01",

    --Macaron Attacks
    ["Gravity Well"] = "Inventory.Partner.Charge.M01",
    ["Love Tap"] = "Inventory.Partner.Counter.M01",
    ["Double Bass Drop"] = "Inventory.Partner.JamCombo.MG01",
    ["High Strung"] = "Inventory.Partner.JamCombo.MA01",

    --Korsica Attacks
    ["Korsica Typhoon"] = "Inventory.Partner.Charge.K01",
    ["High Alert"] = "Inventory.Partner.Counter.K01",
    ["High Security Risk"] = "Inventory.Partner.JamCombo.KG01",
    ["Tornado Lift"] = "Inventory.Partner.JamCombo.KA01",

    --Special Attacks
    ["Power Chord"] = "Inventory.SpecialAttack.010",
    ["Guitar Ride"] = "Inventory.SpecialAttack.020",
    ["Pick Me Up!"] = "Inventory.SpecialAttack.030",
    ["Pick Slide"] = "Inventory.SpecialAttack.040",
    ["High Pitch Punch"] = "Inventory.SpecialAttack.050",
    ["Air Guitar"] = "Inventory.SpecialAttack.060",
    ["Rip and Tear"] = "Inventory.SpecialAttack.080",
    ["Double Riff"] = "Inventory.SpecialAttack.310",
    ["Barrier Wall"] = "Inventory.SpecialAttack.330",
    ["Twin Assault"] = "Inventory.SpecialAttack.340",
    ["Steal the Show"] = "Inventory.SpecialAttack.350",
    ["Holo-Chai"] = "Inventory.SpecialAttack.360",
    ["Hibiki!"] = "Inventory.SpecialAttack.610",
    ["Overdrive Slash"] = "Inventory.SpecialAttack.620",
    ["808-Gigawatt Cat-attack"] = "Inventory.SpecialAttack.910",
    ["CNMANIAC"] = "Inventory.SpecialAttack.1010",
    ["My Hero!"] = "Inventory.SpecialAttack.1020",

    --Chips
    ["Peppermint Compatibility"] = "Inventory.Chip.CoolTimeP",
    ["Health Kick"] = "Inventory.Chip.RecoveryUp",
    ["Battery Magnet"] = "Inventory.Chip.BatteryUp",
    ["Rhythm Meter Rush"] = "Inventory.Chip.RhythmMeterUp",
    ["Parry Health"] = "Inventory.Chip.ParryHealth",
    ["Parry Charge"] = "Inventory.Chip.ParryBattery",
    ["Invincible D-Parry"] = "Inventory.Chip.DirectionalParryInvincible",
    ["Damage Rebound D-Parry"] = "Inventory.Chip.DirectionalParryDamage",
    ["Combo Holder"] = "Inventory.Chip.ComboDurationUp",
    ["Rhythm Dodge Pull Plus"] = "Inventory.Chip.ItemAbsorbUp",
    ["Rhythm Dodge Pull Cancel"] = "Inventory.Chip.ItemAbsorbCancelInBattle",
    ["Peppermint Shock Advantage"] = "Inventory.Chip.P_DownTimeUp",
    ["Peppermint Shock Jump"] = "Inventory.Chip.P_ElectricEnemy",
    ["Macaron Compatibility"] = "Inventory.Chip.CoolTimeM",
    ["Macaron's Lucky Punch"] = "Inventory.Chip.M_LuckyShieldDamage",
    ["Macaron's Aftershock"] = "Inventory.Chip.M_WaveRangeUp",
    ["Korsica Compatibility"] = "Inventory.Chip.CoolTimeK",
    ["Super High Alert"] = "Inventory.Chip.K_FloatingTimeUp",
    ["Korsica Stun Extend"] = "Inventory.Chip.K_DebuffTimeUp",
    ["Chip Sense"] = "Inventory.Chip.FindingCircuit",
    ["Instant Partner Recharge"] = "Inventory.Chip.ForceQuickCallPartner",
    ["Gear Increase"] = "Inventory.Chip.GearUp",
    ["Enemy Analyze"] = "Inventory.Chip.ShowEnemyHealth",
    ["High Risk, High Return"] = "Inventory.Chip.TakeAndGiveDamageUp"
}

---@type table<int32, string>
local VLogNumToInventoryTag = {
    [1] = "Inventory.File.VLog.0000",
    [2] = "Inventory.File.VLog.0010",
    [3] = "Inventory.File.VLog.0020",
    [4] = "Inventory.File.VLog.0030",
    [5] = "Inventory.File.VLog.0040",
    [6] = "Inventory.File.VLog.0050",
    [7] = "Inventory.File.VLog.0060",
    [8] = "Inventory.File.VLog.0070",
    [9] = "Inventory.File.VLog.0080",
    [10] = "Inventory.File.VLog.0090",
    [11] = "Inventory.File.VLog.0100",
    [12] = "Inventory.File.VLog.0110",
    [13] = "Inventory.File.VLog.0120",
    [14] = "Inventory.File.VLog.0130",
    [15] = "Inventory.File.VLog.0140",
    [16] = "Inventory.File.VLog.0150",
    [17] = "Inventory.File.VLog.0160",
    [18] = "Inventory.File.VLog.0170",
    [19] = "Inventory.File.VLog.0180",
    [20] = "Inventory.File.VLog.0190",
    [21] = "Inventory.File.VLog.0200",
    [22] = "Inventory.File.VLog.0210",
    [23] = "Inventory.File.VLog.0220",
    [24] = "Inventory.File.VLog.0230",
    [25] = "Inventory.File.VLog.0240",
    [26] = "Inventory.File.VLog.0250",
    [27] = "Inventory.File.VLog.0260",
    [28] = "Inventory.File.VLog.0270",
    [29] = "Inventory.File.VLog.0280",
    [30] = "Inventory.File.VLog.0290",
    [31] = "Inventory.File.VLog.0300",
    [32] = "Inventory.File.VLog.0310",
    [33] = "Inventory.File.VLog.0320",
    [34] = "Inventory.File.VLog.0330",
    [35] = "Inventory.File.VLog.0340",
    [36] = "Inventory.File.VLog.0350",
    [37] = "Inventory.File.VLog.0360",
    [38] = "Inventory.File.VLog.0370",
    [39] = "Inventory.File.VLog.0380",
    [40] = "Inventory.File.VLog.0390",
    [41] = "Inventory.File.VLog.0400",
    [42] = "Inventory.File.VLog.0410",
    [43] = "Inventory.File.VLog.0420",
    [44] = "Inventory.File.VLog.0430",
    [45] = "Inventory.File.VLog.0440",
    [46] = "Inventory.File.VLog.0450",
    [47] = "Inventory.File.VLog.0460",
    [48] = "Inventory.File.VLog.0470",
    [49] = "Inventory.File.VLog.0480",
    [50] = "Inventory.File.VLog.0490",
    [51] = "Inventory.File.VLog.0500",
    [52] = "Inventory.File.VLog.0510",
    [53] = "Inventory.File.VLog.0520",
    [54] = "Inventory.File.VLog.0530",
    [55] = "Inventory.File.VLog.0540",
    [56] = "Inventory.File.VLog.0550",
    [57] = "Inventory.File.VLog.0560",
    [58] = "Inventory.File.VLog.0570",
    [59] = "Inventory.File.VLog.0580",
    [60] = "Inventory.File.VLog.0590",
    [61] = "Inventory.File.VLog.0600",
    [62] = "Inventory.File.VLog.0610",
    [63] = "Inventory.File.VLog.0620",
    [64] = "Inventory.File.VLog.0630",
    [65] = "Inventory.File.VLog.0640",
    [66] = "Inventory.File.VLog.0650",
    [67] = "Inventory.File.VLog.0660",
    [68] = "Inventory.File.VLog.0670",
    [69] = "Inventory.File.VLog.0680",
    [70] = "Inventory.File.VLog.0690",
    [71] = "Inventory.File.VLog.0700",
    [72] = "Inventory.File.VLog.0710",
    [73] = "Inventory.File.VLog.0720",
    [74] = "Inventory.File.VLog.0730",
    [75] = "Inventory.File.VLog.0740",
    [76] = "Inventory.File.VLog.0750",
    [77] = "Inventory.File.VLog.0760"
}

---@type table<string, string>
local SkillTagToInventoryTag = {
    ["Player.Skill.Attack.X"] = "Inventory.Attack.X",
    ["Player.Skill.Attack.Y"] = "Inventory.Attack.Y",
    ["Player.Skill.Combo.AirXXXX"] = "Inventory.Combo.AirXXXX",
    ["Player.Skill.Combo.AirXYXY"] = "Inventory.Combo.AirXYXY",
    ["Player.Skill.Combo.AirXYYY"] = "Inventory.Combo.AirXYYY",
    ["Player.Skill.Combo.AirY"] = "Inventory.Combo.AirY",
    ["Player.Skill.Combo.C-X"] = "Inventory.Combo.C-X",
    ["Player.Skill.Combo.C-Y"] = "Inventory.Combo.C-Y",
    ["Player.Skill.Combo.D-X"] = "Inventory.Combo.D-X",
    ["Player.Skill.Combo.D-Y"] = "Inventory.Combo.D-Y",
    ["Player.Skill.Combo.Q-X"] = "Inventory.Combo.Q-X",
    ["Player.Skill.Combo.Q-Y"] = "Inventory.Combo.Q-Y",
    ["Player.Skill.Combo.X-XX"] = "Inventory.Combo.X-XX",
    ["Player.Skill.Combo.XmY"] = "Inventory.Combo.XmY",
    ["Player.Skill.Combo.XX-XXX"] = "Inventory.Combo.XX-XXX",
    ["Player.Skill.Combo.XXXX"] = "Inventory.Combo.XXXX",
    ["Player.Skill.Combo.XXYYY"] = "Inventory.Combo.XXYYY",
    ["Player.Skill.Combo.XYXXX"] = "Inventory.Combo.XYXXX",
    ["Player.Skill.Combo.XYY"] = "Inventory.Combo.XYY",
    ["Player.Skill.Combo.YXX"] = "Inventory.Combo.YXX",
    ["Player.Skill.Combo.YXY"] = "Inventory.Combo.YXY",
    ["Player.Skill.Combo.YYX"] = "Inventory.Combo.YYX",
    ["Player.Skill.Combo.YYY"] = "Inventory.Combo.YYY",
    ["Player.Partner.Attack.K01"] = "Inventory.Partner.Attack.K01",
    ["Player.Partner.Attack.M01"] = "Inventory.Partner.Attack.M01",
    ["Player.Partner.Attack.P01"] = "Inventory.Partner.Attack.P01",
    ["Player.Partner.Charge.K01"] = "Inventory.Partner.Charge.K01",
    ["Player.Partner.Charge.M01"] = "Inventory.Partner.Charge.M01",
    ["Player.Partner.Charge.P01"] = "Inventory.Partner.Charge.P01",
    ["Player.Partner.Counter.K01"] = "Inventory.Partner.Counter.K01",
    ["Player.Partner.Counter.M01"] = "Inventory.Partner.Counter.M01",
    ["Player.Partner.Counter.P01"] = "Inventory.Partner.Counter.P01",
    ["Player.Partner.JamCombo.KA01"] = "Inventory.Partner.JamCombo.KA01",
    ["Player.Partner.JamCombo.KG01"] = "Inventory.Partner.JamCombo.KG01",
    ["Player.Partner.JamCombo.MA01"] = "Inventory.Partner.JamCombo.MA01",
    ["Player.Partner.JamCombo.MG01"] = "Inventory.Partner.JamCombo.MG01",
    ["Player.Partner.JamCombo.PA01"] = "Inventory.Partner.JamCombo.PA01",
    ["Player.Partner.JamCombo.PG01"] = "Inventory.Partner.JamCombo.PG01",
    ["Player.Skill.SPA.020"] = "Inventory.SpecialAttack.020",
    ["Player.Skill.SPA.030"] = "Inventory.SpecialAttack.030",
    ["Player.Skill.SPA.040"] = "Inventory.SpecialAttack.040",
    ["Player.Skill.SPA.050"] = "Inventory.SpecialAttack.050",
    ["Player.Skill.SPA.060"] = "Inventory.SpecialAttack.060",
    ["Player.Skill.SPA.080"] = "Inventory.SpecialAttack.080",
    ["Player.Skill.SPA.310"] = "Inventory.SpecialAttack.310",
    ["Player.Skill.SPA.330"] = "Inventory.SpecialAttack.330",
    ["Player.Skill.SPA.340"] = "Inventory.SpecialAttack.340",
    ["Player.Skill.SPA.350"] = "Inventory.SpecialAttack.350",
    ["Player.Skill.SPA.360"] = "Inventory.SpecialAttack.360",
    ["Player.Skill.SPA.610"] = "Inventory.SpecialAttack.610",
    ["Player.Skill.SPA.620"] = "Inventory.SpecialAttack.620",
    ["Player.Skill.SPA.910"] = "Inventory.SpecialAttack.910",
    ["Player.Skill.SPA.1010"] = "Inventory.SpecialAttack.1010",
    ["Player.Skill.SPA.1020"] = "Inventory.SpecialAttack.1020"
}

function Item.AdjustPlayerStateInfo()
    local Valid, PlayerCharacterManager = ObjectCache.FindPlayerCharacterManager()
    if Valid then
        ---@type table<string>
        local InventoryTags = {}

        ---@type int32
        local InventoryCategory = 1

        ---@type TMap<EHbkInventoryCategory, FHbkPlayerInventoryItemList>
        local SaveMap = PlayerCharacterManager.PlayerStateInfo.PlayerInventory.InventoryCategoryData.Map

        SaveMap:ForEach(function (key, value)
            if key:get() == InventoryCategory then
                value:get().List:ForEach(function (key, value)
                    ---@type FHbkInventoryItem
                    local CurrentItem = value:get()
                    table.insert(InventoryTags, CurrentItem.InventoryId.TagName:ToString())
                end)
            end
        end)

        PlayerCharacterManager.PlayerStateInfo.EquipSpAttackIdList:ForEach(function (index, element)
            ---@type FGameplayTag
            local Tag = element:get()
            if not Util.TableContains(InventoryTags, Tag.TagName:ToString()) then
                Tag.TagName = FName("Inventory.SpecialAttack.010")
            end
            --[[if string.find(Tag.TagName:ToString(), "Product.SpecialAttacks") then
                for s in string.gmatch(Tag.TagName:ToString(), "Product.SpecialAttacks.(%d+)") do
                    Tag.TagName = FName("Inventory.SpecialAttack." .. s)
                end
            end]]
        end)

        ---@type table<string>
        local SkillTags = {}

        PlayerCharacterManager.PlayerStateInfo.SkillTags.GameplayTags:ForEach(function (index, element)
            ---@type FGameplayTag
            local CurrentTag = element:get()
            table.insert(SkillTags, CurrentTag.TagName:ToString())
        end)

        ---@type TArray<FGameplayTag>
        local NewGameplayTags = {}

        ---@type table<string>
        local NewParentStrings = {}

        ---@type TArray<FGameplayTag>
        local NewParentTags = {}

        for _, tag in ipairs(SkillTags) do
            local InvTag = SkillTagToInventoryTag[tag]
            if InvTag then
                if Util.TableContains(InventoryTags, InvTag) then
                    table.insert(NewGameplayTags, {TagName = FName(tag)})

                    for _, parent in ipairs(Util.GetParentTagsFromGameplayTag(tag)) do
                        Util.AddToTableIfNotHas(NewParentStrings, parent)
                    end
                end
            end
        end

        for _, parent in ipairs(NewParentStrings) do
            table.insert(NewParentTags, {TagName = FName(parent)})
        end

        PlayerCharacterManager.PlayerStateInfo.SkillTags.GameplayTags = NewGameplayTags
        PlayerCharacterManager.PlayerStateInfo.SkillTags.ParentTags = NewParentTags
    end
end

---@param ItemName string
function Item.GetItem(ItemName)
    if string.find(ItemName, "Track") then
        Item.GetTrackItem(ItemName)
        SaveData.Index = SaveData.Index + 1
        return
    end

    if string.find(ItemName, "VLog") then
        Item.GetVLogItem(ItemName)
    end

    if string.find(ItemName, "Gears") then
        Item.GetGearsItem(ItemName)
        SaveData.Index = SaveData.Index + 1
        return
    end

    if NameToInventoryTag[ItemName] then
        Item.GetInventoryItem(ItemName)
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
function Item.GetInventoryItem(ItemName)
    print("GetInventoryItem " .. ItemName .. "\n")

    ---@type string
    local InventoryId = NameToInventoryTag[ItemName]
    Inventory.PlayerTakeItem(InventoryId, 1)
end

---@param ItemName string
function Item.GetVLogItem(ItemName)
    print("GetVLogItem " .. ItemName .. "\n")

    local num = Util.GetVLogNumber(ItemName)
    
    ---@type string
    local InventoryId = VLogNumToInventoryTag[num]
    Inventory.PlayerTakeItem(InventoryId, 1)
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