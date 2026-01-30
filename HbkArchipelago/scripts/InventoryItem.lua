InventoryItem = {}

---@param path string
---@return TSoftClassPtr
local function SoftClassPtr(path)
    local KismetSystem = UEHelpers.GetKismetSystemLibrary()
    local SoftObjectPathStruct = KismetSystem:MakeSoftObjectPath(path)
    local SoftObjectRef = KismetSystem:Conv_SoftObjPathToSoftObjRef(SoftObjectPathStruct)
    return SoftObjectRef
end

--Battery Magnet
---@type FHbkInventoryItem
InventoryItem.Chip_BatteryUp = {
    InventoryId = {TagName = FName("Inventory.Chip.BatteryUp")},
    Count = 3,
    InventoryObjectPtr = SoftClassPtr("/Game/Hibiki/Blueprints/Inventory/Chip/Inventory_Chip_BatteryUp.Inventory_Chip_BatteryUp_C")
}

--Combo Holder
---@type FHbkInventoryItem
InventoryItem.Chip_ComboDurationUp = {
    InventoryId = {TagName = FName("Inventory.Chip.ComboDurationUp")},
    Count = 3,
    InventoryObjectPtr = SoftClassPtr("/Game/Hibiki/Blueprints/Inventory/Chip/Inventory_Chip_ComboDurationUp.Inventory_Chip_ComboDurationUp_C")
}

--Korsica Compatibility
---@type FHbkInventoryItem
InventoryItem.Chip_CoolTimeK = {
    InventoryId = {TagName = FName("Inventory.Chip.CoolTimeK")},
    Count = 3,
    InventoryObjectPtr = SoftClassPtr("/Game/Hibiki/Blueprints/Inventory/Chip/Inventory_Chip_CoolTimeK.Inventory_Chip_CoolTimeK_C")
}

--Macaron Compatibility
---@type FHbkInventoryItem
InventoryItem.Chip_CoolTimeM = {
    InventoryId = {TagName = FName("Inventory.Chip.CoolTimeM")},
    Count = 3,
    InventoryObjectPtr = SoftClassPtr("/Game/Hibiki/Blueprints/Inventory/Chip/Inventory_Chip_CoolTimeM.Inventory_Chip_CoolTimeM_C")
}

--Peppermint Compatibility
---@type FHbkInventoryItem
InventoryItem.Chip_CoolTimeP = {
    InventoryId = {TagName = FName("Inventory.Chip.CoolTimeP")},
    Count = 3,
    InventoryObjectPtr = SoftClassPtr("/Game/Hibiki/Blueprints/Inventory/Chip/Inventory_Chip_CoolTimeP.Inventory_Chip_CoolTimeP_C")
}

--Damage Rebound D-Parry
---@type FHbkInventoryItem
InventoryItem.Chip_DParryDamage = {
    InventoryId = {TagName = FName("Inventory.Chip.DirectionalParryDamage")},
    Count = 3,
    InventoryObjectPtr = SoftClassPtr("/Game/Hibiki/Blueprints/Inventory/Chip/Inventory_Chip_DParryDamage.Inventory_Chip_DParryDamage_C")
}

--Invincible D-Parry
---@type FHbkInventoryItem
InventoryItem.Chip_DParryInvincible = {
    InventoryId = {TagName = FName("Inventory.Chip.DirectionalParryInvincible")},
    Count = 3,
    InventoryObjectPtr = SoftClassPtr("/Game/Hibiki/Blueprints/Inventory/Chip/Inventory_Chip_DParryInvincible.Inventory_Chip_DParryInvincible_C")
}

--Chip Sense
---@type FHbkInventoryItem
InventoryItem.Chip_FindingCircuit = {
    InventoryId = {TagName = FName("Inventory.Chip.FindingCircuit")},
    Count = 1,
    InventoryObjectPtr = SoftClassPtr("/Game/Hibiki/Blueprints/Inventory/Chip/Inventory_Chip_FindingCircuit.Inventory_Chip_FindingCircuit_C")
}

--Instant Partner Recharge
---@type FHbkInventoryItem
InventoryItem.Chip_ForceQuickCallPartner = {
    InventoryId = {TagName = FName("Inventory.Chip.ForceQuickCallPartner")},
    Count = 1,
    InventoryObjectPtr = SoftClassPtr("/Game/Hibiki/Blueprints/Inventory/Chip/Inventory_Chip_ForceQuickCallPartner.Inventory_Chip_ForceQuickCallPartner_C")
}

--Gear Increase
---@type FHbkInventoryItem
InventoryItem.Chip_GearUp = {
    InventoryId = {TagName = FName("Inventory.Chip.GearUp")},
    Count = 3,
    InventoryObjectPtr = SoftClassPtr("/Game/Hibiki/Blueprints/Inventory/Chip/Inventory_Chip_GearUp.Inventory_Chip_GearUp_C")
}

--Rhythm Dodge Pull Cancel
---@type FHbkInventoryItem
InventoryItem.Chip_ItemAbsorbCancel = {
    InventoryId = {TagName = FName("Inventory.Chip.ItemAbsorbCancelInBattle")},
    Count = 1,
    InventoryObjectPtr = SoftClassPtr("/Game/Hibiki/Blueprints/Inventory/Chip/Inventory_Chip_ItemAbsorbCancel.Inventory_Chip_ItemAbsorbCancel_C")
}

--Rhythm Dodge Pull Plus
---@type FHbkInventoryItem
InventoryItem.Chip_ItemAbsorbUp = {
    InventoryId = {TagName = FName("Inventory.Chip.ItemAbsorbUp")},
    Count = 3,
    InventoryObjectPtr = SoftClassPtr("/Game/Hibiki/Blueprints/Inventory/Chip/Inventory_Chip_ItemAbsorbUp.Inventory_Chip_ItemAbsorbUp_C")
}

--Korsica Stun Extend
---@type FHbkInventoryItem
InventoryItem.Chip_K_DebuffTimeUp = {
    InventoryId = {TagName = FName("Inventory.Chip.K_DebuffTimeUp")},
    Count = 3,
    InventoryObjectPtr = SoftClassPtr("/Game/Hibiki/Blueprints/Inventory/Chip/Inventory_Chip_K_DebuffTimeUp.Inventory_Chip_K_DebuffTimeUp_C")
}

--Super High Alert
---@type FHbkInventoryItem
InventoryItem.Chip_K_FloatingTimeUp = {
    InventoryId = {TagName = FName("Inventory.Chip.K_FloatingTimeUp")},
    Count = 3,
    InventoryObjectPtr = SoftClassPtr("/Game/Hibiki/Blueprints/Inventory/Chip/Inventory_Chip_K_FloatingTimeUp.Inventory_Chip_K_FloatingTimeUp_C")
}

--Macaron's Lucky Punch
---@type FHbkInventoryItem
InventoryItem.Chip_M_LuckyShieldDamage = {
    InventoryId = {TagName = FName("Inventory.Chip.M_LuckyShieldDamage")},
    Count = 3,
    InventoryObjectPtr = SoftClassPtr("/Game/Hibiki/Blueprints/Inventory/Chip/Inventory_Chip_M_LuckyShieldDamage.Inventory_Chip_M_LuckyShieldDamage_C")
}

--Macaron's Aftershock
---@type FHbkInventoryItem
InventoryItem.Chip_M_WaveRangeUp = {
    InventoryId = {TagName = FName("Inventory.Chip.M_WaveRangeUp")},
    Count = 3,
    InventoryObjectPtr = SoftClassPtr("/Game/Hibiki/Blueprints/Inventory/Chip/Inventory_Chip_M_WaveRangeUp.Inventory_Chip_M_WaveRangeUp_C")
}

--Peppermint Shock Advantage
---@type FHbkInventoryItem
InventoryItem.Chip_P_DownTimeUp = {
    InventoryId = {TagName = FName("Inventory.Chip.P_DownTimeUp")},
    Count = 3,
    InventoryObjectPtr = SoftClassPtr("/Game/Hibiki/Blueprints/Inventory/Chip/Inventory_Chip_P_DownTimeUp.Inventory_Chip_P_DownTimeUp_C")
}

--Peppermint Shock Jump
---@type FHbkInventoryItem
InventoryItem.Chip_P_ElectricEnemy = {
    InventoryId = {TagName = FName("Inventory.Chip.P_ElectricEnemy")},
    Count = 3,
    InventoryObjectPtr = SoftClassPtr("/Game/Hibiki/Blueprints/Inventory/Chip/Inventory_Chip_P_ElectricEnemy.Inventory_Chip_P_ElectricEnemy_C")
}

--Parry Charge
---@type FHbkInventoryItem
InventoryItem.Chip_ParryBattery = {
    InventoryId = {TagName = FName("Inventory.Chip.ParryBattery")},
    Count = 3,
    InventoryObjectPtr = SoftClassPtr("/Game/Hibiki/Blueprints/Inventory/Chip/Inventory_Chip_ParryBattery.Inventory_Chip_ParryBattery_C")
}

--Parry Health
---@type FHbkInventoryItem
InventoryItem.Chip_ParryHealth = {
    InventoryId = {TagName = FName("Inventory.Chip.ParryHealth")},
    Count = 3,
    InventoryObjectPtr = SoftClassPtr("/Game/Hibiki/Blueprints/Inventory/Chip/Inventory_Chip_ParryHealth.Inventory_Chip_ParryHealth_C")
}

--Health Kick
---@type FHbkInventoryItem
InventoryItem.Chip_RecoveryUp = {
    InventoryId = {TagName = FName("Inventory.Chip.RecoveryUp")},
    Count = 3,
    InventoryObjectPtr = SoftClassPtr("/Game/Hibiki/Blueprints/Inventory/Chip/Inventory_Chip_RecoveryUp.Inventory_Chip_RecoveryUp_C")
}

--Rhythm Meter Rush
---@type FHbkInventoryItem
InventoryItem.Chip_RhythmMeterUp = {
    InventoryId = {TagName = FName("Inventory.Chip.RhythmMeterUp")},
    Count = 3,
    InventoryObjectPtr = SoftClassPtr("/Game/Hibiki/Blueprints/Inventory/Chip/Inventory_Chip_RhythmMeterUp.Inventory_Chip_RhythmMeterUp_C")
}

--Enemy Analyze
---@type FHbkInventoryItem
InventoryItem.Chip_ShowEnemyHealth = {
    InventoryId = {TagName = FName("Inventory.Chip.ShowEnemyHealth")},
    Count = 1,
    InventoryObjectPtr = SoftClassPtr("/Game/Hibiki/Blueprints/Inventory/Chip/Inventory_Chip_ShowEnemyHealth.Inventory_Chip_ShowEnemyHealth_C")
}

--High Risk, High Return
---@type FHbkInventoryItem
InventoryItem.Chip_TakeAndGiveDamageUp = {
    InventoryId = {TagName = FName("Inventory.Chip.TakeAndGiveDamageUp")},
    Count = 3,
    InventoryObjectPtr = SoftClassPtr("/Game/Hibiki/Blueprints/Inventory/Chip/Inventory_Chip_TakeAndGiveDamageUp.Inventory_Chip_TakeAndGiveDamageUp_C")
}

--Rock Comic (Guitar Ride - SpecialAttack.020)
---@type FHbkInventoryItem
InventoryItem.RockComicA = {
    InventoryId = {TagName = FName("Inventory.File.RockComic.010")},
    Count = 1,
    InventoryObjectPtr = SoftClassPtr("/Game/Hibiki/Blueprints/Inventory/File/RockComic/Inventory_RockComic_010.Inventory_RockComic_010_C")
}

--Rock Comic (Air Guitar - SpecialAttack.060)
---@type FHbkInventoryItem
InventoryItem.RockComicB = {
    InventoryId = {TagName = FName("Inventory.File.RockComic.020")},
    Count = 1,
    InventoryObjectPtr = SoftClassPtr("/Game/Hibiki/Blueprints/Inventory/File/RockComic/Inventory_RockComic_020.Inventory_RockComic_020_C")
}

--Rock Comic (Staccato Launch - Combo.C-X)
---@type FHbkInventoryItem
InventoryItem.RockComicC = {
    InventoryId = {TagName = FName("Inventory.File.RockComic.030")},
    Count = 1,
    InventoryObjectPtr = SoftClassPtr("/Game/Hibiki/Blueprints/Inventory/File/RockComic/Inventory_RockComic_030.Inventory_RockComic_030_C")
}

--Rock Comic (Rip and Tear - SpecialAttack.080)
---@type FHbkInventoryItem
InventoryItem.RockComicD = {
    InventoryId = {TagName = FName("Inventory.File.RockComic.040")},
    Count = 1,
    InventoryObjectPtr = SoftClassPtr("/Game/Hibiki/Blueprints/Inventory/File/RockComic/Inventory_RockComic_040.Inventory_RockComic_040_C")
}

--VLog #1: "TO ALL EMPLOYEES!"
---@type FHbkInventoryItem
InventoryItem.VLog0000 = {
    InventoryId = {TagName = FName("Inventory.File.VLog.0000")},
    Count = 1,
    InventoryObjectPtr = SoftClassPtr("/Game/Hibiki/Blueprints/Inventory/File/Inventory_File_VLog_0000.Inventory_File_VLog_0000_C")
}

--VLog #2: "Battery Pack Production"
---@type FHbkInventoryItem
InventoryItem.VLog0010 = {
    InventoryId = {TagName = FName("Inventory.File.VLog.0010")},
    Count = 1,
    InventoryObjectPtr = SoftClassPtr("/Game/Hibiki/Blueprints/Inventory/File/Inventory_File_VLog_0010.Inventory_File_VLog_0010_C")
}

--VLog #3: "Old-gen EOL Reminder"
---@type FHbkInventoryItem
InventoryItem.VLog0020 = {
    InventoryId = {TagName = FName("Inventory.File.VLog.0020")},
    Count = 1,
    InventoryObjectPtr = SoftClassPtr("/Game/Hibiki/Blueprints/Inventory/File/Inventory_File_VLog_0020.Inventory_File_VLog_0020_C")
}

--VLog #4: "RE:RE:RE:RE:RE:RE:RE: Get on this!"
---@type FHbkInventoryItem
InventoryItem.VLog0030 = {
    InventoryId = {TagName = FName("Inventory.File.VLog.0030")},
    Count = 1,
    InventoryObjectPtr = SoftClassPtr("/Game/Hibiki/Blueprints/Inventory/File/Inventory_File_VLog_0030.Inventory_File_VLog_0030_C")
}

--VLog #5: "O5-KAR Unit Musings"
---@type FHbkInventoryItem
InventoryItem.VLog0040 = {
    InventoryId = {TagName = FName("Inventory.File.VLog.0040")},
    Count = 1,
    InventoryObjectPtr = SoftClassPtr("/Game/Hibiki/Blueprints/Inventory/File/Inventory_File_VLog_0040.Inventory_File_VLog_0040_C")
}

--VLog #6: "Unsent Complaint"
---@type FHbkInventoryItem
InventoryItem.VLog0050 = {
    InventoryId = {TagName = FName("Inventory.File.VLog.0050")},
    Count = 1,
    InventoryObjectPtr = SoftClassPtr("/Game/Hibiki/Blueprints/Inventory/File/Inventory_File_VLog_0050.Inventory_File_VLog_0050_C")
}

--VLog #7: "HR Auto-Surveillance Recording"
---@type FHbkInventoryItem
InventoryItem.VLog0060 = {
    InventoryId = {TagName = FName("Inventory.File.VLog.0060")},
    Count = 1,
    InventoryObjectPtr = SoftClassPtr("/Game/Hibiki/Blueprints/Inventory/File/Inventory_File_VLog_0060.Inventory_File_VLog_0060_C")
}

--VLog #8: "HR Claim #324839028555180850195"
---@type FHbkInventoryItem
InventoryItem.VLog0070 = {
    InventoryId = {TagName = FName("Inventory.File.VLog.0070")},
    Count = 1,
    InventoryObjectPtr = SoftClassPtr("/Game/Hibiki/Blueprints/Inventory/File/Inventory_File_VLog_0070.Inventory_File_VLog_0070_C")
}

--VLog #9: "Tram Line Issues"
---@type FHbkInventoryItem
InventoryItem.VLog0080 = {
    InventoryId = {TagName = FName("Inventory.File.VLog.0080")},
    Count = 1,
    InventoryObjectPtr = SoftClassPtr("/Game/Hibiki/Blueprints/Inventory/File/Inventory_File_VLog_0080.Inventory_File_VLog_0080_C")
}

--VLog #10: "Introducing \"The Arrow!\""
---@type FHbkInventoryItem
InventoryItem.VLog0090 = {
    InventoryId = {TagName = FName("Inventory.File.VLog.0090")},
    Count = 1,
    InventoryObjectPtr = SoftClassPtr("/Game/Hibiki/Blueprints/Inventory/File/Inventory_File_VLog_0090.Inventory_File_VLog_0090_C")
}

--VLog #11: "Behind The Showmanship: Sitdown With Rekka"
---@type FHbkInventoryItem
InventoryItem.VLog0100 = {
    InventoryId = {TagName = FName("Inventory.File.VLog.0100")},
    Count = 1,
    InventoryObjectPtr = SoftClassPtr("/Game/Hibiki/Blueprints/Inventory/File/Inventory_File_VLog_0100.Inventory_File_VLog_0100_C")
}

--VLog #12: "R&D Service Log: Part 1"
---@type FHbkInventoryItem
InventoryItem.VLog0110 = {
    InventoryId = {TagName = FName("Inventory.File.VLog.0110")},
    Count = 1,
    InventoryObjectPtr = SoftClassPtr("/Game/Hibiki/Blueprints/Inventory/File/Inventory_File_VLog_0110.Inventory_File_VLog_0110_C")
}

--VLog #13: "R&D Service Log: Part 2"
---@type FHbkInventoryItem
InventoryItem.VLog0120 = {
    InventoryId = {TagName = FName("Inventory.File.VLog.0120")},
    Count = 1,
    InventoryObjectPtr = SoftClassPtr("/Game/Hibiki/Blueprints/Inventory/File/Inventory_File_VLog_0120.Inventory_File_VLog_0120_C")
}

--VLog #14: "R&D Service Log: Part 3"
---@type FHbkInventoryItem
InventoryItem.VLog0130 = {
    InventoryId = {TagName = FName("Inventory.File.VLog.0130")},
    Count = 1,
    InventoryObjectPtr = SoftClassPtr("/Game/Hibiki/Blueprints/Inventory/File/Inventory_File_VLog_0130.Inventory_File_VLog_0130_C")
}

--VLog #15: "R&D Service Log: Part 4"
---@type FHbkInventoryItem
InventoryItem.VLog0140 = {
    InventoryId = {TagName = FName("Inventory.File.VLog.0140")},
    Count = 1,
    InventoryObjectPtr = SoftClassPtr("/Game/Hibiki/Blueprints/Inventory/File/Inventory_File_VLog_0140.Inventory_File_VLog_0140_C")
}

--VLog #16: "Zanzo's Order Request"
---@type FHbkInventoryItem
InventoryItem.VLog0150 = {
    InventoryId = {TagName = FName("Inventory.File.VLog.0150")},
    Count = 1,
    InventoryObjectPtr = SoftClassPtr("/Game/Hibiki/Blueprints/Inventory/File/Inventory_File_VLog_0150.Inventory_File_VLog_0150_C")
}

--VLog #17: "LU-C1LLE Self-Therapy Journal"
---@type FHbkInventoryItem
InventoryItem.VLog0160 = {
    InventoryId = {TagName = FName("Inventory.File.VLog.0160")},
    Count = 1,
    InventoryObjectPtr = SoftClassPtr("/Game/Hibiki/Blueprints/Inventory/File/Inventory_File_VLog_0160.Inventory_File_VLog_0160_C")
}

--VLog #18: "Barrier Technology Test Results"
---@type FHbkInventoryItem
InventoryItem.VLog0170 = {
    InventoryId = {TagName = FName("Inventory.File.VLog.0170")},
    Count = 1,
    InventoryObjectPtr = SoftClassPtr("/Game/Hibiki/Blueprints/Inventory/File/Inventory_File_VLog_0170.Inventory_File_VLog_0170_C")
}

--VLog #19: "Punch-to-face Test Results"
---@type FHbkInventoryItem
InventoryItem.VLog0180 = {
    InventoryId = {TagName = FName("Inventory.File.VLog.0180")},
    Count = 1,
    InventoryObjectPtr = SoftClassPtr("/Game/Hibiki/Blueprints/Inventory/File/Inventory_File_VLog_0180.Inventory_File_VLog_0180_C")
}

--VLog #20: "Offensive Capabilities Test"
---@type FHbkInventoryItem
InventoryItem.VLog0190 = {
    InventoryId = {TagName = FName("Inventory.File.VLog.0190")},
    Count = 1,
    InventoryObjectPtr = SoftClassPtr("/Game/Hibiki/Blueprints/Inventory/File/Inventory_File_VLog_0190.Inventory_File_VLog_0190_C")
}

--VLog #21: "Barrier Umbrella Test"
---@type FHbkInventoryItem
InventoryItem.VLog0200 = {
    InventoryId = {TagName = FName("Inventory.File.VLog.0200")},
    Count = 1,
    InventoryObjectPtr = SoftClassPtr("/Game/Hibiki/Blueprints/Inventory/File/Inventory_File_VLog_0200.Inventory_File_VLog_0200_C")
}

--VLog #22: "Test Lab Assistance Mail"
---@type FHbkInventoryItem
InventoryItem.VLog0210 = {
    InventoryId = {TagName = FName("Inventory.File.VLog.0210")},
    Count = 1,
    InventoryObjectPtr = SoftClassPtr("/Game/Hibiki/Blueprints/Inventory/File/Inventory_File_VLog_0210.Inventory_File_VLog_0210_C")
}

--VLog #23: "Staffing Allocation Complaint"
---@type FHbkInventoryItem
InventoryItem.VLog0220 = {
    InventoryId = {TagName = FName("Inventory.File.VLog.0220")},
    Count = 1,
    InventoryObjectPtr = SoftClassPtr("/Game/Hibiki/Blueprints/Inventory/File/Inventory_File_VLog_0220.Inventory_File_VLog_0220_C")
}

--VLog #24: "Auto-Saved Private Message"
---@type FHbkInventoryItem
InventoryItem.VLog0230 = {
    InventoryId = {TagName = FName("Inventory.File.VLog.0230")},
    Count = 1,
    InventoryObjectPtr = SoftClassPtr("/Game/Hibiki/Blueprints/Inventory/File/Inventory_File_VLog_0230.Inventory_File_VLog_0230_C")
}

--VLog #25: "Disgruntled Decaf Revenge"
---@type FHbkInventoryItem
InventoryItem.VLog0240 = {
    InventoryId = {TagName = FName("Inventory.File.VLog.0240")},
    Count = 1,
    InventoryObjectPtr = SoftClassPtr("/Game/Hibiki/Blueprints/Inventory/File/Inventory_File_VLog_0240.Inventory_File_VLog_0240_C")
}

--VLog #26: "Development Mindfulness Checklist"
---@type FHbkInventoryItem
InventoryItem.VLog0250 = {
    InventoryId = {TagName = FName("Inventory.File.VLog.0250")},
    Count = 1,
    InventoryObjectPtr = SoftClassPtr("/Game/Hibiki/Blueprints/Inventory/File/Inventory_File_VLog_0250.Inventory_File_VLog_0250_C")
}

--VLog #27: "Defect Captured Email"
---@type FHbkInventoryItem
InventoryItem.VLog0260 = {
    InventoryId = {TagName = FName("Inventory.File.VLog.0260")},
    Count = 1,
    InventoryObjectPtr = SoftClassPtr("/Game/Hibiki/Blueprints/Inventory/File/Inventory_File_VLog_0260.Inventory_File_VLog_0260_C")
}

--VLog #28: "Annoyed by Korsica FWD"
---@type FHbkInventoryItem
InventoryItem.VLog0270 = {
    InventoryId = {TagName = FName("Inventory.File.VLog.0270")},
    Count = 1,
    InventoryObjectPtr = SoftClassPtr("/Game/Hibiki/Blueprints/Inventory/File/Inventory_File_VLog_0270.Inventory_File_VLog_0270_C")
}

--VLog #29: "Musings About Data Node"
---@type FHbkInventoryItem
InventoryItem.VLog0280 = {
    InventoryId = {TagName = FName("Inventory.File.VLog.0280")},
    Count = 1,
    InventoryObjectPtr = SoftClassPtr("/Game/Hibiki/Blueprints/Inventory/File/Inventory_File_VLog_0280.Inventory_File_VLog_0280_C")
}

--VLog #30: "Poem by SCR-UB"
---@type FHbkInventoryItem
InventoryItem.VLog0290 = {
    InventoryId = {TagName = FName("Inventory.File.VLog.0290")},
    Count = 1,
    InventoryObjectPtr = SoftClassPtr("/Game/Hibiki/Blueprints/Inventory/File/Inventory_File_VLog_0290.Inventory_File_VLog_0290_C")
}

--VLog #31: "Vandelay Game Studios?"
---@type FHbkInventoryItem
InventoryItem.VLog0300 = {
    InventoryId = {TagName = FName("Inventory.File.VLog.0300")},
    Count = 1,
    InventoryObjectPtr = SoftClassPtr("/Game/Hibiki/Blueprints/Inventory/File/Inventory_File_VLog_0300.Inventory_File_VLog_0300_C")
}

--VLog #32: "Regarding Wing 1 Layout Complaints"
---@type FHbkInventoryItem
InventoryItem.VLog0310 = {
    InventoryId = {TagName = FName("Inventory.File.VLog.0310")},
    Count = 1,
    InventoryObjectPtr = SoftClassPtr("/Game/Hibiki/Blueprints/Inventory/File/Inventory_File_VLog_0310.Inventory_File_VLog_0310_C")
}

--VLog #33: "FWD: Data Node Advice"
---@type FHbkInventoryItem
InventoryItem.VLog0320 = {
    InventoryId = {TagName = FName("Inventory.File.VLog.0320")},
    Count = 1,
    InventoryObjectPtr = SoftClassPtr("/Game/Hibiki/Blueprints/Inventory/File/Inventory_File_VLog_0320.Inventory_File_VLog_0320_C")
}

--VLog #34: "Korsica Complaints"
---@type FHbkInventoryItem
InventoryItem.VLog0330 = {
    InventoryId = {TagName = FName("Inventory.File.VLog.0330")},
    Count = 1,
    InventoryObjectPtr = SoftClassPtr("/Game/Hibiki/Blueprints/Inventory/File/Inventory_File_VLog_0330.Inventory_File_VLog_0330_C")
}

--VLog #35: "L.I.F.T. Construction Heads-up"
---@type FHbkInventoryItem
InventoryItem.VLog0340 = {
    InventoryId = {TagName = FName("Inventory.File.VLog.0340")},
    Count = 1,
    InventoryObjectPtr = SoftClassPtr("/Game/Hibiki/Blueprints/Inventory/File/Inventory_File_VLog_0340.Inventory_File_VLog_0340_C")
}

--VLog #36: "Platform Construction Note"
---@type FHbkInventoryItem
InventoryItem.VLog0350 = {
    InventoryId = {TagName = FName("Inventory.File.VLog.0350")},
    Count = 1,
    InventoryObjectPtr = SoftClassPtr("/Game/Hibiki/Blueprints/Inventory/File/Inventory_File_VLog_0350.Inventory_File_VLog_0350_C")
}

--VLog #37: "Too Many Rooms"
---@type FHbkInventoryItem
InventoryItem.VLog0360 = {
    InventoryId = {TagName = FName("Inventory.File.VLog.0360")},
    Count = 1,
    InventoryObjectPtr = SoftClassPtr("/Game/Hibiki/Blueprints/Inventory/File/Inventory_File_VLog_0360.Inventory_File_VLog_0360_C")
}

--VLog #38: "Suspicious Doors?"
---@type FHbkInventoryItem
InventoryItem.VLog0370 = {
    InventoryId = {TagName = FName("Inventory.File.VLog.0370")},
    Count = 1,
    InventoryObjectPtr = SoftClassPtr("/Game/Hibiki/Blueprints/Inventory/File/Inventory_File_VLog_0370.Inventory_File_VLog_0370_C")
}

--VLog #39: "Data Node Dissatisfaction Mail"
---@type FHbkInventoryItem
InventoryItem.VLog0380 = {
    InventoryId = {TagName = FName("Inventory.File.VLog.0380")},
    Count = 1,
    InventoryObjectPtr = SoftClassPtr("/Game/Hibiki/Blueprints/Inventory/File/Inventory_File_VLog_0380.Inventory_File_VLog_0380_C")
}

--VLog #40: "Pmidge Press Announcement"
---@type FHbkInventoryItem
InventoryItem.VLog0390 = {
    InventoryId = {TagName = FName("Inventory.File.VLog.0390")},
    Count = 1,
    InventoryObjectPtr = SoftClassPtr("/Game/Hibiki/Blueprints/Inventory/File/Inventory_File_VLog_0390.Inventory_File_VLog_0390_C")
}

--VLog #41: "Depressed Buttons"
---@type FHbkInventoryItem
InventoryItem.VLog0400 = {
    InventoryId = {TagName = FName("Inventory.File.VLog.0400")},
    Count = 1,
    InventoryObjectPtr = SoftClassPtr("/Game/Hibiki/Blueprints/Inventory/File/Inventory_File_VLog_0400.Inventory_File_VLog_0400_C")
}

--VLog #42: "Food Delivery Warning"
---@type FHbkInventoryItem
InventoryItem.VLog0410 = {
    InventoryId = {TagName = FName("Inventory.File.VLog.0410")},
    Count = 1,
    InventoryObjectPtr = SoftClassPtr("/Game/Hibiki/Blueprints/Inventory/File/Inventory_File_VLog_0410.Inventory_File_VLog_0410_C")
}

--VLog #43: "Project Armstrong Raffle Results"
---@type FHbkInventoryItem
InventoryItem.VLog0420 = {
    InventoryId = {TagName = FName("Inventory.File.VLog.0420")},
    Count = 1,
    InventoryObjectPtr = SoftClassPtr("/Game/Hibiki/Blueprints/Inventory/File/Inventory_File_VLog_0420.Inventory_File_VLog_0420_C")
}

--VLog #44: "Armstrong Festival Marketing?"
---@type FHbkInventoryItem
InventoryItem.VLog0430 = {
    InventoryId = {TagName = FName("Inventory.File.VLog.0430")},
    Count = 1,
    InventoryObjectPtr = SoftClassPtr("/Game/Hibiki/Blueprints/Inventory/File/Inventory_File_VLog_0430.Inventory_File_VLog_0430_C")
}

--VLog #45: "Charging"
---@type FHbkInventoryItem
InventoryItem.VLog0440 = {
    InventoryId = {TagName = FName("Inventory.File.VLog.0440")},
    Count = 1,
    InventoryObjectPtr = SoftClassPtr("/Game/Hibiki/Blueprints/Inventory/File/Inventory_File_VLog_0440.Inventory_File_VLog_0440_C")
}

--VLog #46: "Taking A Break In The Park"
---@type FHbkInventoryItem
InventoryItem.VLog0450 = {
    InventoryId = {TagName = FName("Inventory.File.VLog.0450")},
    Count = 1,
    InventoryObjectPtr = SoftClassPtr("/Game/Hibiki/Blueprints/Inventory/File/Inventory_File_VLog_0450.Inventory_File_VLog_0450_C")
}

--VLog #47: "GNR-020 Display"
---@type FHbkInventoryItem
InventoryItem.VLog0460 = {
    InventoryId = {TagName = FName("Inventory.File.VLog.0460")},
    Count = 1,
    InventoryObjectPtr = SoftClassPtr("/Game/Hibiki/Blueprints/Inventory/File/Inventory_File_VLog_0460.Inventory_File_VLog_0460_C")
}

--VLog #48: "BES-102 Display"
---@type FHbkInventoryItem
InventoryItem.VLog0470 = {
    InventoryId = {TagName = FName("Inventory.File.VLog.0470")},
    Count = 1,
    InventoryObjectPtr = SoftClassPtr("/Game/Hibiki/Blueprints/Inventory/File/Inventory_File_VLog_0470.Inventory_File_VLog_0470_C")
}

--VLog #49: "BL-1Z5 Display"
---@type FHbkInventoryItem
InventoryItem.VLog0480 = {
    InventoryId = {TagName = FName("Inventory.File.VLog.0480")},
    Count = 1,
    InventoryObjectPtr = SoftClassPtr("/Game/Hibiki/Blueprints/Inventory/File/Inventory_File_VLog_0480.Inventory_File_VLog_0480_C")
}

--VLog #50: "SBR-001 Display"
---@type FHbkInventoryItem
InventoryItem.VLog0490 = {
    InventoryId = {TagName = FName("Inventory.File.VLog.0490")},
    Count = 1,
    InventoryObjectPtr = SoftClassPtr("/Game/Hibiki/Blueprints/Inventory/File/Inventory_File_VLog_0490.Inventory_File_VLog_0490_C")
}

--VLog #51: "ES-101 Display"
---@type FHbkInventoryItem
InventoryItem.VLog0500 = {
    InventoryId = {TagName = FName("Inventory.File.VLog.0500")},
    Count = 1,
    InventoryObjectPtr = SoftClassPtr("/Game/Hibiki/Blueprints/Inventory/File/Inventory_File_VLog_0500.Inventory_File_VLog_0500_C")
}

--VLog #52: "BA-B00 Display"
---@type FHbkInventoryItem
InventoryItem.VLog0510 = {
    InventoryId = {TagName = FName("Inventory.File.VLog.0510")},
    Count = 1,
    InventoryObjectPtr = SoftClassPtr("/Game/Hibiki/Blueprints/Inventory/File/Inventory_File_VLog_0510.Inventory_File_VLog_0510_C")
}

--VLog #53: "Reminder to Reception"
---@type FHbkInventoryItem
InventoryItem.VLog0520 = {
    InventoryId = {TagName = FName("Inventory.File.VLog.0520")},
    Count = 1,
    InventoryObjectPtr = SoftClassPtr("/Game/Hibiki/Blueprints/Inventory/File/Inventory_File_VLog_0520.Inventory_File_VLog_0520_C")
}

--VLog #54: "BRUT-1L Display"
---@type FHbkInventoryItem
InventoryItem.VLog0530 = {
    InventoryId = {TagName = FName("Inventory.File.VLog.0530")},
    Count = 1,
    InventoryObjectPtr = SoftClassPtr("/Game/Hibiki/Blueprints/Inventory/File/Inventory_File_VLog_0530.Inventory_File_VLog_0530_C")
}

--VLog #55: "Our Community Helper: BA-B00"
---@type FHbkInventoryItem
InventoryItem.VLog0540 = {
    InventoryId = {TagName = FName("Inventory.File.VLog.0540")},
    Count = 1,
    InventoryObjectPtr = SoftClassPtr("/Game/Hibiki/Blueprints/Inventory/File/Inventory_File_VLog_0540.Inventory_File_VLog_0540_C")
}

--VLog #56: "SEN-C0 Display"
---@type FHbkInventoryItem
InventoryItem.VLog0550 = {
    InventoryId = {TagName = FName("Inventory.File.VLog.0550")},
    Count = 1,
    InventoryObjectPtr = SoftClassPtr("/Game/Hibiki/Blueprints/Inventory/File/Inventory_File_VLog_0550.Inventory_File_VLog_0550_C")
}

--VLog #57: "Disappointed O5-KAR"
---@type FHbkInventoryItem
InventoryItem.VLog0560 = {
    InventoryId = {TagName = FName("Inventory.File.VLog.0560")},
    Count = 1,
    InventoryObjectPtr = SoftClassPtr("/Game/Hibiki/Blueprints/Inventory/File/Inventory_File_VLog_0560.Inventory_File_VLog_0560_C")
}

--VLog #58: "Water Generator Complaint"
---@type FHbkInventoryItem
InventoryItem.VLog0570 = {
    InventoryId = {TagName = FName("Inventory.File.VLog.0570")},
    Count = 1,
    InventoryObjectPtr = SoftClassPtr("/Game/Hibiki/Blueprints/Inventory/File/Inventory_File_VLog_0570.Inventory_File_VLog_0570_C")
}

--VLog #59: "Display Complaints"
---@type FHbkInventoryItem
InventoryItem.VLog0580 = {
    InventoryId = {TagName = FName("Inventory.File.VLog.0580")},
    Count = 1,
    InventoryObjectPtr = SoftClassPtr("/Game/Hibiki/Blueprints/Inventory/File/Inventory_File_VLog_0580.Inventory_File_VLog_0580_C")
}

--VLog #60: "KEM-0N0 Display"
---@type FHbkInventoryItem
InventoryItem.VLog0590 = {
    InventoryId = {TagName = FName("Inventory.File.VLog.0590")},
    Count = 1,
    InventoryObjectPtr = SoftClassPtr("/Game/Hibiki/Blueprints/Inventory/File/Inventory_File_VLog_0590.Inventory_File_VLog_0590_C")
}

--VLog #61: "SBR Development Display"
---@type FHbkInventoryItem
InventoryItem.VLog0600 = {
    InventoryId = {TagName = FName("Inventory.File.VLog.0600")},
    Count = 1,
    InventoryObjectPtr = SoftClassPtr("/Game/Hibiki/Blueprints/Inventory/File/Inventory_File_VLog_0600.Inventory_File_VLog_0600_C")
}

--VLog #62: "Door Musings From SCR-UB"
---@type FHbkInventoryItem
InventoryItem.VLog0610 = {
    InventoryId = {TagName = FName("Inventory.File.VLog.0610")},
    Count = 1,
    InventoryObjectPtr = SoftClassPtr("/Game/Hibiki/Blueprints/Inventory/File/Inventory_File_VLog_0610.Inventory_File_VLog_0610_C")
}

--VLog #63: "Armstrong Festival Briefing Notes"
---@type FHbkInventoryItem
InventoryItem.VLog0620 = {
    InventoryId = {TagName = FName("Inventory.File.VLog.0620")},
    Count = 1,
    InventoryObjectPtr = SoftClassPtr("/Game/Hibiki/Blueprints/Inventory/File/Inventory_File_VLog_0620.Inventory_File_VLog_0620_C")
}

--VLog #64: "Mimosa's Rider"
---@type FHbkInventoryItem
InventoryItem.VLog0630 = {
    InventoryId = {TagName = FName("Inventory.File.VLog.0630")},
    Count = 1,
    InventoryObjectPtr = SoftClassPtr("/Game/Hibiki/Blueprints/Inventory/File/Inventory_File_VLog_0630.Inventory_File_VLog_0630_C")
}

--VLog #65: "Cafeteria Menu"
---@type FHbkInventoryItem
InventoryItem.VLog0640 = {
    InventoryId = {TagName = FName("Inventory.File.VLog.0640")},
    Count = 1,
    InventoryObjectPtr = SoftClassPtr("/Game/Hibiki/Blueprints/Inventory/File/Inventory_File_VLog_0640.Inventory_File_VLog_0640_C")
}

--VLog #66: "Vandelay Grammar Check"
---@type FHbkInventoryItem
InventoryItem.VLog0650 = {
    InventoryId = {TagName = FName("Inventory.File.VLog.0650")},
    Count = 1,
    InventoryObjectPtr = SoftClassPtr("/Game/Hibiki/Blueprints/Inventory/File/Inventory_File_VLog_0650.Inventory_File_VLog_0650_C")
}

--VLog #67: "Atrium Statue Mail"
---@type FHbkInventoryItem
InventoryItem.VLog0660 = {
    InventoryId = {TagName = FName("Inventory.File.VLog.0660")},
    Count = 1,
    InventoryObjectPtr = SoftClassPtr("/Game/Hibiki/Blueprints/Inventory/File/Inventory_File_VLog_0660.Inventory_File_VLog_0660_C")
}

--VLog #68: "Budget Challenge Mail"
---@type FHbkInventoryItem
InventoryItem.VLog0670 = {
    InventoryId = {TagName = FName("Inventory.File.VLog.0670")},
    Count = 1,
    InventoryObjectPtr = SoftClassPtr("/Game/Hibiki/Blueprints/Inventory/File/Inventory_File_VLog_0670.Inventory_File_VLog_0670_C")
}

--VLog #69: "Hoodie Preorder Mail"
---@type FHbkInventoryItem
InventoryItem.VLog0680 = {
    InventoryId = {TagName = FName("Inventory.File.VLog.0680")},
    Count = 1,
    InventoryObjectPtr = SoftClassPtr("/Game/Hibiki/Blueprints/Inventory/File/Inventory_File_VLog_0680.Inventory_File_VLog_0680_C")
}

--VLog #70: "Vandelay Handbook Note"
---@type FHbkInventoryItem
InventoryItem.VLog0690 = {
    InventoryId = {TagName = FName("Inventory.File.VLog.0690")},
    Count = 1,
    InventoryObjectPtr = SoftClassPtr("/Game/Hibiki/Blueprints/Inventory/File/Inventory_File_VLog_0690.Inventory_File_VLog_0690_C")
}

--VLog #71: "Roquefort Meeting Prep"
---@type FHbkInventoryItem
InventoryItem.VLog0700 = {
    InventoryId = {TagName = FName("Inventory.File.VLog.0700")},
    Count = 1,
    InventoryObjectPtr = SoftClassPtr("/Game/Hibiki/Blueprints/Inventory/File/Inventory_File_VLog_0700.Inventory_File_VLog_0700_C")
}

--VLog #72: "My Super Secret Plan"
---@type FHbkInventoryItem
InventoryItem.VLog0710 = {
    InventoryId = {TagName = FName("Inventory.File.VLog.0710")},
    Count = 1,
    InventoryObjectPtr = SoftClassPtr("/Game/Hibiki/Blueprints/Inventory/File/Inventory_File_VLog_0710.Inventory_File_VLog_0710_C")
}

--VLog #73: "Preorder Bonuses?"
---@type FHbkInventoryItem
InventoryItem.VLog0720 = {
    InventoryId = {TagName = FName("Inventory.File.VLog.0720")},
    Count = 1,
    InventoryObjectPtr = SoftClassPtr("/Game/Hibiki/Blueprints/Inventory/File/Inventory_File_VLog_0720.Inventory_File_VLog_0720_C")
}

--VLog #74: "Potential Project Musings"
---@type FHbkInventoryItem
InventoryItem.VLog0730 = {
    InventoryId = {TagName = FName("Inventory.File.VLog.0730")},
    Count = 1,
    InventoryObjectPtr = SoftClassPtr("/Game/Hibiki/Blueprints/Inventory/File/Inventory_File_VLog_0730.Inventory_File_VLog_0730_C")
}

--VLog #75: "Shot in the Eye"
---@type FHbkInventoryItem
InventoryItem.VLog0740 = {
    InventoryId = {TagName = FName("Inventory.File.VLog.0740")},
    Count = 1,
    InventoryObjectPtr = SoftClassPtr("/Game/Hibiki/Blueprints/Inventory/File/Inventory_File_VLog_0740.Inventory_File_VLog_0740_C")
}

--VLog #76: "Out Of My Mind"
---@type FHbkInventoryItem
InventoryItem.VLog0750 = {
    InventoryId = {TagName = FName("Inventory.File.VLog.0750")},
    Count = 1,
    InventoryObjectPtr = SoftClassPtr("/Game/Hibiki/Blueprints/Inventory/File/Inventory_File_VLog_0750.Inventory_File_VLog_0750_C")
}

--VLog #77: "Never Ask For Ideas"
---@type FHbkInventoryItem
InventoryItem.VLog0760 = {
    InventoryId = {TagName = FName("Inventory.File.VLog.0760")},
    Count = 1,
    InventoryObjectPtr = SoftClassPtr("/Game/Hibiki/Blueprints/Inventory/File/Inventory_File_VLog_0760.Inventory_File_VLog_0760_C")
}

--Vandelay Gameworks VLog #1: "WELCOME TO VANDELAY GAMEWORKS!"
---@type FHbkInventoryItem
InventoryItem.VLog5010 = {
    InventoryId = {TagName = FName("Inventory.File.VLog.5010")},
    Count = 1,
    InventoryObjectPtr = SoftClassPtr("/Game/Hibiki/Blueprints/Inventory/File/VandelayGW/Inventory_File_VLog_5010.Inventory_File_VLog_5010_C")
}

--Vandelay Gameworks VLog #2: "INFINITY GUITARS"
---@type FHbkInventoryItem
InventoryItem.VLog5020 = {
    InventoryId = {TagName = FName("Inventory.File.VLog.5020")},
    Count = 1,
    InventoryObjectPtr = SoftClassPtr("/Game/Hibiki/Blueprints/Inventory/File/VandelayGW/Inventory_File_VLog_5020.Inventory_File_VLog_5020_C")
}

--Vandelay Gameworks VLog #3: "FROM THE SOUND TEAM"
---@type FHbkInventoryItem
InventoryItem.VLog5030 = {
    InventoryId = {TagName = FName("Inventory.File.VLog.5030")},
    Count = 1,
    InventoryObjectPtr = SoftClassPtr("/Game/Hibiki/Blueprints/Inventory/File/VandelayGW/Inventory_File_VLog_5030.Inventory_File_VLog_5030_C")
}

--Vandelay Gameworks VLog #4: "ART DIRECTION"
---@type FHbkInventoryItem
InventoryItem.VLog5040 = {
    InventoryId = {TagName = FName("Inventory.File.VLog.5040")},
    Count = 1,
    InventoryObjectPtr = SoftClassPtr("/Game/Hibiki/Blueprints/Inventory/File/VandelayGW/Inventory_File_VLog_5040.Inventory_File_VLog_5040_C")
}

--Vandelay Gameworks VLog #5: "FROM THE ART TEAM"
---@type FHbkInventoryItem
InventoryItem.VLog5050 = {
    InventoryId = {TagName = FName("Inventory.File.VLog.5050")},
    Count = 1,
    InventoryObjectPtr = SoftClassPtr("/Game/Hibiki/Blueprints/Inventory/File/VandelayGW/Inventory_File_VLog_5050.Inventory_File_VLog_5050_C")
}

--Vandelay Gameworks VLog #6: "INTERNAL PERFECTION"
---@type FHbkInventoryItem
InventoryItem.VLog5060 = {
    InventoryId = {TagName = FName("Inventory.File.VLog.5060")},
    Count = 1,
    InventoryObjectPtr = SoftClassPtr("/Game/Hibiki/Blueprints/Inventory/File/VandelayGW/Inventory_File_VLog_5060.Inventory_File_VLog_5060_C")
}

--Vandelay Gameworks VLog #7: "FROM THE MODELING TEAM"
---@type FHbkInventoryItem
InventoryItem.VLog5070 = {
    InventoryId = {TagName = FName("Inventory.File.VLog.5070")},
    Count = 1,
    InventoryObjectPtr = SoftClassPtr("/Game/Hibiki/Blueprints/Inventory/File/VandelayGW/Inventory_File_VLog_5070.Inventory_File_VLog_5070_C")
}

--Vandelay Gameworks VLog #8: "SCALE UP"
---@type FHbkInventoryItem
InventoryItem.VLog5080 = {
    InventoryId = {TagName = FName("Inventory.File.VLog.5080")},
    Count = 1,
    InventoryObjectPtr = SoftClassPtr("/Game/Hibiki/Blueprints/Inventory/File/VandelayGW/Inventory_File_VLog_5080.Inventory_File_VLog_5080_C")
}

--Vandelay Gameworks VLog #9: "FROM THE ENVIRONMENT TEAM"
---@type FHbkInventoryItem
InventoryItem.VLog5090 = {
    InventoryId = {TagName = FName("Inventory.File.VLog.5090")},
    Count = 1,
    InventoryObjectPtr = SoftClassPtr("/Game/Hibiki/Blueprints/Inventory/File/VandelayGW/Inventory_File_VLog_5090.Inventory_File_VLog_5090_C")
}

--Vandelay Gameworks VLog #10: "AFFECT EFFECT"
---@type FHbkInventoryItem
InventoryItem.VLog5100 = {
    InventoryId = {TagName = FName("Inventory.File.VLog.5100")},
    Count = 1,
    InventoryObjectPtr = SoftClassPtr("/Game/Hibiki/Blueprints/Inventory/File/VandelayGW/Inventory_File_VLog_5100.Inventory_File_VLog_5100_C")
}

--Vandelay Gameworks VLog #11: "FROM THE VFX TEAM"
---@type FHbkInventoryItem
InventoryItem.VLog5110 = {
    InventoryId = {TagName = FName("Inventory.File.VLog.5110")},
    Count = 1,
    InventoryObjectPtr = SoftClassPtr("/Game/Hibiki/Blueprints/Inventory/File/VandelayGW/Inventory_File_VLog_5110.Inventory_File_VLog_5110_C")
}

--Vandelay Gameworks VLog #12: "DOWN TO THE T"
---@type FHbkInventoryItem
InventoryItem.VLog5120 = {
    InventoryId = {TagName = FName("Inventory.File.VLog.5120")},
    Count = 1,
    InventoryObjectPtr = SoftClassPtr("/Game/Hibiki/Blueprints/Inventory/File/VandelayGW/Inventory_File_VLog_5120.Inventory_File_VLog_5120_C")
}

--Vandelay Gameworks VLog #13: "FROM THE ANIMATION TEAM"
---@type FHbkInventoryItem
InventoryItem.VLog5130 = {
    InventoryId = {TagName = FName("Inventory.File.VLog.5130")},
    Count = 1,
    InventoryObjectPtr = SoftClassPtr("/Game/Hibiki/Blueprints/Inventory/File/VandelayGW/Inventory_File_VLog_5130.Inventory_File_VLog_5130_C")
}

--Vandelay Gameworks VLog #14: "LIFE OF ITS OWN"
---@type FHbkInventoryItem
InventoryItem.VLog5140 = {
    InventoryId = {TagName = FName("Inventory.File.VLog.5140")},
    Count = 1,
    InventoryObjectPtr = SoftClassPtr("/Game/Hibiki/Blueprints/Inventory/File/VandelayGW/Inventory_File_VLog_5140.Inventory_File_VLog_5140_C")
}

--Vandelay Gameworks VLog #15: "FROM THE UI TEAM"
---@type FHbkInventoryItem
InventoryItem.VLog5150 = {
    InventoryId = {TagName = FName("Inventory.File.VLog.5150")},
    Count = 1,
    InventoryObjectPtr = SoftClassPtr("/Game/Hibiki/Blueprints/Inventory/File/VandelayGW/Inventory_File_VLog_5150.Inventory_File_VLog_5150_C")
}

--Vandelay Gameworks VLog #16: "HOLDING IT ALL TOGETHER"
---@type FHbkInventoryItem
InventoryItem.VLog5160 = {
    InventoryId = {TagName = FName("Inventory.File.VLog.5160")},
    Count = 1,
    InventoryObjectPtr = SoftClassPtr("/Game/Hibiki/Blueprints/Inventory/File/VandelayGW/Inventory_File_VLog_5160.Inventory_File_VLog_5160_C")
}

--Vandelay Gameworks VLog #17: "FROM THE PROGRAMMERS"
---@type FHbkInventoryItem
InventoryItem.VLog5170 = {
    InventoryId = {TagName = FName("Inventory.File.VLog.5170")},
    Count = 1,
    InventoryObjectPtr = SoftClassPtr("/Game/Hibiki/Blueprints/Inventory/File/VandelayGW/Inventory_File_VLog_5170.Inventory_File_VLog_5170_C")
}

--Vandelay Gameworks VLog #18: "I THINK OF IDEAS"
---@type FHbkInventoryItem
InventoryItem.VLog5180 = {
    InventoryId = {TagName = FName("Inventory.File.VLog.5180")},
    Count = 1,
    InventoryObjectPtr = SoftClassPtr("/Game/Hibiki/Blueprints/Inventory/File/VandelayGW/Inventory_File_VLog_5180.Inventory_File_VLog_5180_C")
}

--Vandelay Gameworks VLog #19: "FROM THE GAME DESIGN TEAM"
---@type FHbkInventoryItem
InventoryItem.VLog5190 = {
    InventoryId = {TagName = FName("Inventory.File.VLog.5190")},
    Count = 1,
    InventoryObjectPtr = SoftClassPtr("/Game/Hibiki/Blueprints/Inventory/File/VandelayGW/Inventory_File_VLog_5190.Inventory_File_VLog_5190_C")
}

--Vandelay Gameworks VLog #20: "BY DESIGN"
---@type FHbkInventoryItem
InventoryItem.VLog5200 = {
    InventoryId = {TagName = FName("Inventory.File.VLog.5200")},
    Count = 1,
    InventoryObjectPtr = SoftClassPtr("/Game/Hibiki/Blueprints/Inventory/File/VandelayGW/Inventory_File_VLog_5200.Inventory_File_VLog_5200_C")
}

--Vandelay Gameworks VLog #21: "GLOBAL READINESS"
---@type FHbkInventoryItem
InventoryItem.VLog5210 = {
    InventoryId = {TagName = FName("Inventory.File.VLog.5210")},
    Count = 1,
    InventoryObjectPtr = SoftClassPtr("/Game/Hibiki/Blueprints/Inventory/File/VandelayGW/Inventory_File_VLog_5210.Inventory_File_VLog_5210_C")
}

--Vandelay Gameworks VLog #22: "FROM THE LOCALIZATION TEAM"
---@type FHbkInventoryItem
InventoryItem.VLog5220 = {
    InventoryId = {TagName = FName("Inventory.File.VLog.5220")},
    Count = 1,
    InventoryObjectPtr = SoftClassPtr("/Game/Hibiki/Blueprints/Inventory/File/VandelayGW/Inventory_File_VLog_5220.Inventory_File_VLog_5220_C")
}

--Vandelay Gameworks VLog #23: "OFFICE SPACE"
---@type FHbkInventoryItem
InventoryItem.VLog5230 = {
    InventoryId = {TagName = FName("Inventory.File.VLog.5230")},
    Count = 1,
    InventoryObjectPtr = SoftClassPtr("/Game/Hibiki/Blueprints/Inventory/File/VandelayGW/Inventory_File_VLog_5230.Inventory_File_VLog_5230_C")
}

--Vandelay Gameworks VLog #24: "PRODUCING PRODUCT"
---@type FHbkInventoryItem
InventoryItem.VLog5240 = {
    InventoryId = {TagName = FName("Inventory.File.VLog.5240")},
    Count = 1,
    InventoryObjectPtr = SoftClassPtr("/Game/Hibiki/Blueprints/Inventory/File/VandelayGW/Inventory_File_VLog_5240.Inventory_File_VLog_5240_C")
}

--Vandelay Gameworks VLog #25: "FROM PRODUCTION"
---@type FHbkInventoryItem
InventoryItem.VLog5250 = {
    InventoryId = {TagName = FName("Inventory.File.VLog.5250")},
    Count = 1,
    InventoryObjectPtr = SoftClassPtr("/Game/Hibiki/Blueprints/Inventory/File/VandelayGW/Inventory_File_VLog_5250.Inventory_File_VLog_5250_C")
}

--Vandelay Gameworks VLog #26: "UNDER PRESSURE"
---@type FHbkInventoryItem
InventoryItem.VLog5260 = {
    InventoryId = {TagName = FName("Inventory.File.VLog.5260")},
    Count = 1,
    InventoryObjectPtr = SoftClassPtr("/Game/Hibiki/Blueprints/Inventory/File/VandelayGW/Inventory_File_VLog_5260.Inventory_File_VLog_5260_C")
}

--Vandelay Gameworks VLog #27: "FROM THE DIRECTOR"
---@type FHbkInventoryItem
InventoryItem.VLog5270 = {
    InventoryId = {TagName = FName("Inventory.File.VLog.5270")},
    Count = 1,
    InventoryObjectPtr = SoftClassPtr("/Game/Hibiki/Blueprints/Inventory/File/VandelayGW/Inventory_File_VLog_5270.Inventory_File_VLog_5270_C")
}

--Vandelay Gameworks VLog #28: "DM-ET1L DISPLAY"
---@type FHbkInventoryItem
InventoryItem.VLog5280 = {
    InventoryId = {TagName = FName("Inventory.File.VLog.5280")},
    Count = 1,
    InventoryObjectPtr = SoftClassPtr("/Game/Hibiki/Blueprints/Inventory/File/VandelayGW/Inventory_File_VLog_5280.Inventory_File_VLog_5280_C")
}

--Vandelay Gameworks VLog #29: "FRUIT SERVICE"
---@type FHbkInventoryItem
InventoryItem.VLog5290 = {
    InventoryId = {TagName = FName("Inventory.File.VLog.5290")},
    Count = 1,
    InventoryObjectPtr = SoftClassPtr("/Game/Hibiki/Blueprints/Inventory/File/VandelayGW/Inventory_File_VLog_5290.Inventory_File_VLog_5290_C")
}

--Vandelay Gameworks VLog #30: "QUIET ON SET"
---@type FHbkInventoryItem
InventoryItem.VLog5300 = {
    InventoryId = {TagName = FName("Inventory.File.VLog.5300")},
    Count = 1,
    InventoryObjectPtr = SoftClassPtr("/Game/Hibiki/Blueprints/Inventory/File/VandelayGW/Inventory_File_VLog_5300.Inventory_File_VLog_5300_C")
}

--Air Parry
---@type FHbkInventoryItem
InventoryItem.Ability_AirParry = {
    InventoryId = {TagName = FName("Inventory.Ability.AirParry")},
    Count = 1,
    InventoryObjectPtr = SoftClassPtr("/Game/Hibiki/Blueprints/Inventory/Skill/Ability/Inventory_Ability_AirParry.Inventory_Ability_AirParry_C")
}

--Directional Parry
---@type FHbkInventoryItem
InventoryItem.Ability_DirectionalParry = {
    InventoryId = {TagName = FName("Inventory.Ability.DirectionalParry")},
    Count = 1,
    InventoryObjectPtr = SoftClassPtr("/Game/Hibiki/Blueprints/Inventory/Skill/Ability/Inventory_Ability_DirectionalParry.Inventory_Ability_DirectionalParry_C")
}

--Dash
---@type FHbkInventoryItem
InventoryItem.Ability_Dodge = {
    InventoryId = {TagName = FName("Inventory.Ability.Dodge")},
    Count = 1,
    InventoryObjectPtr = SoftClassPtr("/Game/Hibiki/Blueprints/Inventory/Skill/Ability/Inventory_Ability_Dodge.Inventory_Ability_Dodge_C")
}

--Magnet Grab
---@type FHbkInventoryItem
InventoryItem.Ability_Magnet = {
    InventoryId = {TagName = FName("Inventory.Ability.Magnet")},
    Count = 1,
    InventoryObjectPtr = SoftClassPtr("/Game/Hibiki/Blueprints/Inventory/Skill/Ability/Inventory_Ability_Magnet.Inventory_Ability_Magnet_C")
}

--Magnet Backstab
---@type FHbkInventoryItem
InventoryItem.Ability_MagnetBackstab = {
    InventoryId = {TagName = FName("Inventory.Ability.MagnetBackstab")},
    Count = 1,
    InventoryObjectPtr = SoftClassPtr("/Game/Hibiki/Blueprints/Inventory/Skill/Ability/Inventory_Ability_MagnetBackstab.Inventory_Ability_MagnetBackstab_C")
}

--Parry
---@type FHbkInventoryItem
InventoryItem.Ability_Parry = {
    InventoryId = {TagName = FName("Inventory.Ability.Parry")},
    Count = 1,
    InventoryObjectPtr = SoftClassPtr("/Game/Hibiki/Blueprints/Inventory/Skill/Ability/Inventory_Ability_Parry.Inventory_Ability_Parry_C")
}

--Rhythm Dodge
---@type FHbkInventoryItem
InventoryItem.Ability_RhythmDodge = {
    InventoryId = {TagName = FName("Inventory.Ability.RhythmDodge")},
    Count = 1,
    InventoryObjectPtr = SoftClassPtr("/Game/Hibiki/Blueprints/Inventory/Skill/Ability/Inventory_Ability_RhythmDodge.Inventory_Ability_RhythmDodge_C")
}

--Light Attack
---@type FHbkInventoryItem
InventoryItem.AttackX = {
    InventoryId = {TagName = FName("Inventory.Attack.X")},
    Count = 1,
    InventoryObjectPtr = SoftClassPtr("/Game/Hibiki/Blueprints/Inventory/Skill/Attack/Inventory_Attack_X.Inventory_Attack_X_C")
}

--Heavy Attack
---@type FHbkInventoryItem
InventoryItem.AttackY = {
    InventoryId = {TagName = FName("Inventory.Attack.Y")},
    Count = 1,
    InventoryObjectPtr = SoftClassPtr("/Game/Hibiki/Blueprints/Inventory/Skill/Attack/Inventory_Attack_Y.Inventory_Attack_Y_C")
}

--Air Countdown
---@type FHbkInventoryItem
InventoryItem.Combo_AirXXXX = {
    InventoryId = {TagName = FName("Inventory.Combo.AirXXXX")},
    Count = 1,
    InventoryObjectPtr = SoftClassPtr("/Game/Hibiki/Blueprints/Inventory/Skill/Combo/Inventory_Combo_AirXXXX.Inventory_Combo_AirXXXX_C")
}

--Compressor Slam
---@type FHbkInventoryItem
InventoryItem.Combo_AirXYXY = {
    InventoryId = {TagName = FName("Inventory.Combo.AirXYXY")},
    Count = 1,
    InventoryObjectPtr = SoftClassPtr("/Game/Hibiki/Blueprints/Inventory/Skill/Combo/Inventory_Combo_AirXYXY.Inventory_Combo_AirXYXY_C")
}

--Harmonic Beam
---@type FHbkInventoryItem
InventoryItem.Combo_AirXYYY = {
    InventoryId = {TagName = FName("Inventory.Combo.AirXYYY")},
    Count = 1,
    InventoryObjectPtr = SoftClassPtr("/Game/Hibiki/Blueprints/Inventory/Skill/Combo/Inventory_Combo_AirXYYY.Inventory_Combo_AirXYYY_C")
}

--Hammer-On
---@type FHbkInventoryItem
InventoryItem.Combo_AirY = {
    InventoryId = {TagName = FName("Inventory.Combo.AirY")},
    Count = 1,
    InventoryObjectPtr = SoftClassPtr("/Game/Hibiki/Blueprints/Inventory/Skill/Combo/Inventory_Combo_AirY.Inventory_Combo_AirY_C")
}

--Staccato Launch
---@type FHbkInventoryItem
InventoryItem.Combo_ChargeX = {
    InventoryId = {TagName = FName("Inventory.Combo.C-X")},
    Count = 1,
    InventoryObjectPtr = SoftClassPtr("/Game/Hibiki/Blueprints/Inventory/Skill/Combo/Inventory_Combo_ChargeX.Inventory_Combo_ChargeX_C")
}

--Gain Tornado
---@type FHbkInventoryItem
InventoryItem.Combo_ChargeY = {
    InventoryId = {TagName = FName("Inventory.Combo.C-Y")},
    Count = 1,
    InventoryObjectPtr = SoftClassPtr("/Game/Hibiki/Blueprints/Inventory/Skill/Combo/Inventory_Combo_ChargeY.Inventory_Combo_ChargeY_C")
}

--Dash Attack
---@type FHbkInventoryItem
InventoryItem.Combo_D_X = {
    InventoryId = {TagName = FName("Inventory.Combo.D-X")},
    Count = 1,
    InventoryObjectPtr = SoftClassPtr("/Game/Hibiki/Blueprints/Inventory/Skill/Combo/Inventory_Combo_D-X.Inventory_Combo_D-X_C")
}

--Air Launch
---@type FHbkInventoryItem
InventoryItem.Combo_D_Y = {
    InventoryId = {TagName = FName("Inventory.Combo.D-Y")},
    Count = 1,
    InventoryObjectPtr = SoftClassPtr("/Game/Hibiki/Blueprints/Inventory/Skill/Combo/Inventory_Combo_D-Y.Inventory_Combo_D-Y_C")
}

--Quick Beat Hit
---@type FHbkInventoryItem
InventoryItem.Combo_QuickX = {
    InventoryId = {TagName = FName("Inventory.Combo.Q-X")},
    Count = 1,
    InventoryObjectPtr = SoftClassPtr("/Game/Hibiki/Blueprints/Inventory/Skill/Combo/Inventory_Combo_QuickX.Inventory_Combo_QuickX_C")
}

--Steal Counter
---@type FHbkInventoryItem
InventoryItem.Combo_QuickY = {
    InventoryId = {TagName = FName("Inventory.Combo.Q-Y")},
    Count = 1,
    InventoryObjectPtr = SoftClassPtr("/Game/Hibiki/Blueprints/Inventory/Skill/Combo/Inventory_Combo_QuickY.Inventory_Combo_QuickY_C")
}

--Rise Up
---@type FHbkInventoryItem
InventoryItem.Combo_X_XX = {
    InventoryId = {TagName = FName("Inventory.Combo.X-XX")},
    Count = 1,
    InventoryObjectPtr = SoftClassPtr("/Game/Hibiki/Blueprints/Inventory/Skill/Combo/Inventory_Combo_X-XX.Inventory_Combo_X-XX_C")
}

--Shred
---@type FHbkInventoryItem
InventoryItem.Combo_XmY = {
    InventoryId = {TagName = FName("Inventory.Combo.XmY")},
    Count = 1,
    InventoryObjectPtr = SoftClassPtr("/Game/Hibiki/Blueprints/Inventory/Skill/Combo/Inventory_Combo_XmY.Inventory_Combo_XmY_C")
}

--Tune Up
---@type FHbkInventoryItem
InventoryItem.Combo_XX_XXX = {
    InventoryId = {TagName = FName("Inventory.Combo.XX-XXX")},
    Count = 1,
    InventoryObjectPtr = SoftClassPtr("/Game/Hibiki/Blueprints/Inventory/Skill/Combo/Inventory_Combo_XX-XXX.Inventory_Combo_XX-XXX_C")
}

--Humbucker
---@type FHbkInventoryItem
InventoryItem.Combo_XXXX = {
    InventoryId = {TagName = FName("Inventory.Combo.XXXX")},
    Count = 1,
    InventoryObjectPtr = SoftClassPtr("/Game/Hibiki/Blueprints/Inventory/Skill/Combo/Inventory_Combo_XXXX.Inventory_Combo_XXXX_C")
}

--Arpeggio Stab
---@type FHbkInventoryItem
InventoryItem.Combo_XXYYY = {
    InventoryId = {TagName = FName("Inventory.Combo.XXYYY")},
    Count = 1,
    InventoryObjectPtr = SoftClassPtr("/Game/Hibiki/Blueprints/Inventory/Skill/Combo/Inventory_Combo_XXYYY.Inventory_Combo_XXYYY_C")
}

--Echo Splash
---@type FHbkInventoryItem
InventoryItem.Combo_XYXXX = {
    InventoryId = {TagName = FName("Inventory.Combo.XYXXX")},
    Count = 1,
    InventoryObjectPtr = SoftClassPtr("/Game/Hibiki/Blueprints/Inventory/Skill/Combo/Inventory_Combo_XYXXX.Inventory_Combo_XYXXX_C")
}

--Breakdown
---@type FHbkInventoryItem
InventoryItem.Combo_XYY = {
    InventoryId = {TagName = FName("Inventory.Combo.XYY")},
    Count = 1,
    InventoryObjectPtr = SoftClassPtr("/Game/Hibiki/Blueprints/Inventory/Skill/Combo/Inventory_Combo_XYY.Inventory_Combo_XYY_C")
}

--Tremolo
---@type FHbkInventoryItem
InventoryItem.Combo_YXX = {
    InventoryId = {TagName = FName("Inventory.Combo.YXX")},
    Count = 1,
    InventoryObjectPtr = SoftClassPtr("/Game/Hibiki/Blueprints/Inventory/Skill/Combo/Inventory_Combo_YXX.Inventory_Combo_YXX_C")
}

--Stomp Box
---@type FHbkInventoryItem
InventoryItem.Combo_YXY = {
    InventoryId = {TagName = FName("Inventory.Combo.YXY")},
    Count = 1,
    InventoryObjectPtr = SoftClassPtr("/Game/Hibiki/Blueprints/Inventory/Skill/Combo/Inventory_Combo_YXY.Inventory_Combo_YXY_C")
}

--Pickup Crash
---@type FHbkInventoryItem
InventoryItem.Combo_YYX = {
    InventoryId = {TagName = FName("Inventory.Combo.YYX")},
    Count = 1,
    InventoryObjectPtr = SoftClassPtr("/Game/Hibiki/Blueprints/Inventory/Skill/Combo/Inventory_Combo_YYX.Inventory_Combo_YYX_C")
}

--Grandslam
---@type FHbkInventoryItem
InventoryItem.Combo_YYY = {
    InventoryId = {TagName = FName("Inventory.Combo.YYY")},
    Count = 1,
    InventoryObjectPtr = SoftClassPtr("/Game/Hibiki/Blueprints/Inventory/Skill/Combo/Inventory_Combo_YYY.Inventory_Combo_YYY_C")
}

--Korsica Windstick
---@type FHbkInventoryItem
InventoryItem.PartnerAttackK01 = {
    InventoryId = {TagName = FName("Inventory.Partner.Attack.K01")},
    Count = 1,
    InventoryObjectPtr = SoftClassPtr("/Game/Hibiki/Blueprints/Inventory/Skill/Partner/Inventory_Partner_Attack_K01.Inventory_Partner_Attack_K01_C")
}

--Macaron Punch
---@type FHbkInventoryItem
InventoryItem.PartnerAttackM01 = {
    InventoryId = {TagName = FName("Inventory.Partner.Attack.M01")},
    Count = 1,
    InventoryObjectPtr = SoftClassPtr("/Game/Hibiki/Blueprints/Inventory/Skill/Partner/Inventory_Partner_Attack_M01.Inventory_Partner_Attack_M01_C")
}

--Peppermint Blaster
---@type FHbkInventoryItem
InventoryItem.PartnerAttackP01 = {
    InventoryId = {TagName = FName("Inventory.Partner.Attack.P01")},
    Count = 1,
    InventoryObjectPtr = SoftClassPtr("/Game/Hibiki/Blueprints/Inventory/Skill/Partner/Inventory_Partner_Attack_P01.Inventory_Partner_Attack_P01_C")
}

--Korsica Typhoon
---@type FHbkInventoryItem
InventoryItem.PartnerChargeK01 = {
    InventoryId = {TagName = FName("Inventory.Partner.Charge.K01")},
    Count = 1,
    InventoryObjectPtr = SoftClassPtr("/Game/Hibiki/Blueprints/Inventory/Skill/Partner/Inventory_Partner_Charge_K01.Inventory_Partner_Charge_K01_C")
}

--Gravity Well
---@type FHbkInventoryItem
InventoryItem.PartnerChargeM01 = {
    InventoryId = {TagName = FName("Inventory.Partner.Charge.M01")},
    Count = 1,
    InventoryObjectPtr = SoftClassPtr("/Game/Hibiki/Blueprints/Inventory/Skill/Partner/Inventory_Partner_Charge_M01.Inventory_Partner_Charge_M01_C")
}

--Cannon Spike
---@type FHbkInventoryItem
InventoryItem.PartnerChargeP01 = {
    InventoryId = {TagName = FName("Inventory.Partner.Charge.P01")},
    Count = 1,
    InventoryObjectPtr = SoftClassPtr("/Game/Hibiki/Blueprints/Inventory/Skill/Partner/Inventory_Partner_Charge_P01.Inventory_Partner_Charge_P01_C")
}

--High Alert
---@type FHbkInventoryItem
InventoryItem.PartnerCounterK01 = {
    InventoryId = {TagName = FName("Inventory.Partner.Counter.K01")},
    Count = 1,
    InventoryObjectPtr = SoftClassPtr("/Game/Hibiki/Blueprints/Inventory/Skill/Partner/Inventory_Partner_Counter_K01.Inventory_Partner_Counter_K01_C")
}

--Love Tap
---@type FHbkInventoryItem
InventoryItem.PartnerCounterM01 = {
    InventoryId = {TagName = FName("Inventory.Partner.Counter.M01")},
    Count = 1,
    InventoryObjectPtr = SoftClassPtr("/Game/Hibiki/Blueprints/Inventory/Skill/Partner/Inventory_Partner_Counter_M01.Inventory_Partner_Counter_M01_C")
}

--Kick Shot
---@type FHbkInventoryItem
InventoryItem.PartnerCounterP01 = {
    InventoryId = {TagName = FName("Inventory.Partner.Counter.P01")},
    Count = 1,
    InventoryObjectPtr = SoftClassPtr("/Game/Hibiki/Blueprints/Inventory/Skill/Partner/Inventory_Partner_Counter_P01.Inventory_Partner_Counter_P01_C")
}

--Tornado Lift
---@type FHbkInventoryItem
InventoryItem.PartnerJamKA01 = {
    InventoryId = {TagName = FName("Inventory.Partner.JamCombo.KA01")},
    Count = 1,
    InventoryObjectPtr = SoftClassPtr("/Game/Hibiki/Blueprints/Inventory/Skill/Partner/Inventory_Partner_Jam_KA01.Inventory_Partner_Jam_KA01_C")
}

--High Security Risk
---@type FHbkInventoryItem
InventoryItem.PartnerJamKG01 = {
    InventoryId = {TagName = FName("Inventory.Partner.JamCombo.KG01")},
    Count = 1,
    InventoryObjectPtr = SoftClassPtr("/Game/Hibiki/Blueprints/Inventory/Skill/Partner/Inventory_Partner_Jam_KG01.Inventory_Partner_Jam_KG01_C")
}

--High Strung
---@type FHbkInventoryItem
InventoryItem.PartnerJamMA01 = {
    InventoryId = {TagName = FName("Inventory.Partner.JamCombo.MA01")},
    Count = 1,
    InventoryObjectPtr = SoftClassPtr("/Game/Hibiki/Blueprints/Inventory/Skill/Partner/Inventory_Partner_Jam_MA01.Inventory_Partner_Jam_MA01_C")
}

--Double Bass Drop
---@type FHbkInventoryItem
InventoryItem.PartnerJamMG01 = {
    InventoryId = {TagName = FName("Inventory.Partner.JamCombo.MG01")},
    Count = 1,
    InventoryObjectPtr = SoftClassPtr("/Game/Hibiki/Blueprints/Inventory/Skill/Partner/Inventory_Partner_Jam_MG01.Inventory_Partner_Jam_MG01_C")
}

--Master Blaster
---@type FHbkInventoryItem
InventoryItem.PartnerJamPA01 = {
    InventoryId = {TagName = FName("Inventory.Partner.JamCombo.PA01")},
    Count = 1,
    InventoryObjectPtr = SoftClassPtr("/Game/Hibiki/Blueprints/Inventory/Skill/Partner/Inventory_Partner_Jam_PA01.Inventory_Partner_Jam_PA01_C")
}

--Switch Kicker
---@type FHbkInventoryItem
InventoryItem.PartnerJamPG01 = {
    InventoryId = {TagName = FName("Inventory.Partner.JamCombo.PG01")},
    Count = 1,
    InventoryObjectPtr = SoftClassPtr("/Game/Hibiki/Blueprints/Inventory/Skill/Partner/Inventory_Partner_Jam_PG01.Inventory_Partner_Jam_PG01_C")
}

--Power Chord
---@type FHbkInventoryItem
InventoryItem.SpecialAttack010 = {
    InventoryId = {TagName = FName("Inventory.SpecialAttack.010")},
    Count = 1,
    InventoryObjectPtr = SoftClassPtr("/Game/Hibiki/Blueprints/Inventory/Skill/SpAttack/Inventory_SPA_010.Inventory_SPA_010_C")
}

--Guitar Ride
---@type FHbkInventoryItem
InventoryItem.SpecialAttack020 = {
    InventoryId = {TagName = FName("Inventory.SpecialAttack.020")},
    Count = 1,
    InventoryObjectPtr = SoftClassPtr("/Game/Hibiki/Blueprints/Inventory/Skill/SpAttack/Inventory_SPA_020.Inventory_SPA_020_C")
}

--Pick Me Up!
---@type FHbkInventoryItem
InventoryItem.SpecialAttack030 = {
    InventoryId = {TagName = FName("Inventory.SpecialAttack.030")},
    Count = 1,
    InventoryObjectPtr = SoftClassPtr("/Game/Hibiki/Blueprints/Inventory/Skill/SpAttack/Inventory_SPA_030.Inventory_SPA_030_C")
}

--Pick Slide
---@type FHbkInventoryItem
InventoryItem.SpecialAttack040 = {
    InventoryId = {TagName = FName("Inventory.SpecialAttack.040")},
    Count = 1,
    InventoryObjectPtr = SoftClassPtr("/Game/Hibiki/Blueprints/Inventory/Skill/SpAttack/Inventory_SPA_040.Inventory_SPA_040_C")
}

--High Pitch Punch
---@type FHbkInventoryItem
InventoryItem.SpecialAttack050 = {
    InventoryId = {TagName = FName("Inventory.SpecialAttack.050")},
    Count = 1,
    InventoryObjectPtr = SoftClassPtr("/Game/Hibiki/Blueprints/Inventory/Skill/SpAttack/Inventory_SPA_050.Inventory_SPA_050_C")
}

--Air Guitar
---@type FHbkInventoryItem
InventoryItem.SpecialAttack060 = {
    InventoryId = {TagName = FName("Inventory.SpecialAttack.060")},
    Count = 1,
    InventoryObjectPtr = SoftClassPtr("/Game/Hibiki/Blueprints/Inventory/Skill/SpAttack/Inventory_SPA_060.Inventory_SPA_060_C")
}

--Rip and Tear
---@type FHbkInventoryItem
InventoryItem.SpecialAttack080 = {
    InventoryId = {TagName = FName("Inventory.SpecialAttack.080")},
    Count = 1,
    InventoryObjectPtr = SoftClassPtr("/Game/Hibiki/Blueprints/Inventory/Skill/SpAttack/Inventory_SPA_080.Inventory_SPA_080_C")
}

--Double Riff
---@type FHbkInventoryItem
InventoryItem.SpecialAttack310 = {
    InventoryId = {TagName = FName("Inventory.SpecialAttack.310")},
    Count = 1,
    InventoryObjectPtr = SoftClassPtr("/Game/Hibiki/Blueprints/Inventory/Skill/SpAttack/Inventory_SPA_310.Inventory_SPA_310_C")
}

--Barrier Wall
---@type FHbkInventoryItem
InventoryItem.SpecialAttack330 = {
    InventoryId = {TagName = FName("Inventory.SpecialAttack.330")},
    Count = 1,
    InventoryObjectPtr = SoftClassPtr("/Game/Hibiki/Blueprints/Inventory/Skill/SpAttack/Inventory_SPA_330.Inventory_SPA_330_C")
}

--Twin Assault
---@type FHbkInventoryItem
InventoryItem.SpecialAttack340 = {
    InventoryId = {TagName = FName("Inventory.SpecialAttack.340")},
    Count = 1,
    InventoryObjectPtr = SoftClassPtr("/Game/Hibiki/Blueprints/Inventory/Skill/SpAttack/Inventory_SPA_340.Inventory_SPA_340_C")
}

--Steal the Show
---@type FHbkInventoryItem
InventoryItem.SpecialAttack350 = {
    InventoryId = {TagName = FName("Inventory.SpecialAttack.350")},
    Count = 1,
    InventoryObjectPtr = SoftClassPtr("/Game/Hibiki/Blueprints/Inventory/Skill/SpAttack/Inventory_SPA_350.Inventory_SPA_350_C")
}

--Holo-Chai
---@type FHbkInventoryItem
InventoryItem.SpecialAttack360 = {
    InventoryId = {TagName = FName("Inventory.SpecialAttack.360")},
    Count = 1,
    InventoryObjectPtr = SoftClassPtr("/Game/Hibiki/Blueprints/Inventory/Skill/SpAttack/Inventory_SPA_360.Inventory_SPA_360_C")
}

--Hibiki!
---@type FHbkInventoryItem
InventoryItem.SpecialAttack610 = {
    InventoryId = {TagName = FName("Inventory.SpecialAttack.610")},
    Count = 1,
    InventoryObjectPtr = SoftClassPtr("/Game/Hibiki/Blueprints/Inventory/Skill/SpAttack/Inventory_SPA_610.Inventory_SPA_610_C")
}

--Overdrive Slash
---@type FHbkInventoryItem
InventoryItem.SpecialAttack620 = {
    InventoryId = {TagName = FName("Inventory.SpecialAttack.620")},
    Count = 1,
    InventoryObjectPtr = SoftClassPtr("/Game/Hibiki/Blueprints/Inventory/Skill/SpAttack/Inventory_SPA_620.Inventory_SPA_620_C")
}

--808-Gigawatt Cat-attack
---@type FHbkInventoryItem
InventoryItem.SpecialAttack910 = {
    InventoryId = {TagName = FName("Inventory.SpecialAttack.910")},
    Count = 1,
    InventoryObjectPtr = SoftClassPtr("/Game/Hibiki/Blueprints/Inventory/Skill/SpAttack/Inventory_SPA_910.Inventory_SPA_910_C")
}

--CNMANIAC
---@type FHbkInventoryItem
InventoryItem.SpecialAttack1010 = {
    InventoryId = {TagName = FName("Inventory.SpecialAttack.1010")},
    Count = 1,
    InventoryObjectPtr = SoftClassPtr("/Game/Hibiki/Blueprints/Inventory/Skill/SpAttack/Inventory_SPA_1010.Inventory_SPA_1010_C")
}

--My Hero!
---@type FHbkInventoryItem
InventoryItem.SpecialAttack1020 = {
    InventoryId = {TagName = FName("Inventory.SpecialAttack.1020")},
    Count = 1,
    InventoryObjectPtr = SoftClassPtr("/Game/Hibiki/Blueprints/Inventory/Skill/SpAttack/Inventory_SPA_1020.Inventory_SPA_1020_C")
}

---@type FHbkInventoryItem
InventoryItem.ChipSlot = {
    InventoryId = {TagName = FName("Inventory.Variable.ChipSlot")},
    Count = 4,
    InventoryObjectPtr = SoftClassPtr("/Game/Hibiki/Blueprints/Inventory/Variable/Inventory_Variable_ChipSlot.Inventory_Variable_ChipSlot_C")
}

---@type FHbkInventoryItem
InventoryItem.SpAttackSlot = {
    InventoryId = {TagName = FName("Inventory.Variable.SpAttackSlot")},
    Count = 1,
    InventoryObjectPtr = SoftClassPtr("/Game/Hibiki/Blueprints/Inventory/Variable/Inventory_Variable_SpAttackSlot.Inventory_Variable_SpAttackSlot_C")
}

---@type FHbkInventoryItem
InventoryItem.Ticket = {
    InventoryId = {TagName = FName("Inventory.Variable.Ticket")},
    Count = 185, --?
    InventoryObjectPtr = SoftClassPtr("/Game/Hibiki/Blueprints/Inventory/Variable/Inventory_Variable_Ticket.Inventory_Variable_Ticket_C")
}

--Broken Armstrong Circuit
---@type FHbkInventoryItem
InventoryItem.Circuit = {
    InventoryId = {TagName = FName("Inventory.Variable.Circuit")},
    Count = 56,
    InventoryObjectPtr = SoftClassPtr("/Game/Hibiki/Blueprints/Inventory/Variable/Inventory_Variable_Circuit.Inventory_Variable_Circuit_C")
}

--Life Gauge Piece
---@type FHbkInventoryItem
InventoryItem.LifeUpPiece = {
    InventoryId = {TagName = FName("Inventory.Variable.LifeUpPiece")},
    Count = 28,
    InventoryObjectPtr = SoftClassPtr("/Game/Hibiki/Blueprints/Inventory/Variable/Inventory_Variable_LifeUpPiece.Inventory_Variable_LifeUpPiece_C")
}

--Life Gauge
---@type FHbkInventoryItem
InventoryItem.LifeUp = {
    InventoryId = {TagName = FName("Inventory.Variable.LifeUp")},
    Count = 6,
    InventoryObjectPtr = SoftClassPtr("/Game/Hibiki/Blueprints/Inventory/Variable/Inventory_Variable_LifeUp.Inventory_Variable_LifeUp_C")
}

--Broken Piece of a Health Tank
---@type FHbkInventoryItem
InventoryItem.LifeTankPiece = {
    InventoryId = {TagName = FName("Inventory.Variable.LifeTankPiece")},
    Count = 10,
    InventoryObjectPtr = SoftClassPtr("/Game/Hibiki/Blueprints/Inventory/Variable/Inventory_Variable_LifeTankPiece.Inventory_Variable_LifeTankPiece_C")
}

--Health Tank
---@type FHbkInventoryItem
InventoryItem.LifeTank = {
    InventoryId = {TagName = FName("Inventory.Variable.LifeTank")},
    Count = 1,
    InventoryObjectPtr = SoftClassPtr("/Game/Hibiki/Blueprints/Inventory/Variable/Inventory_Variable_LifeTank.Inventory_Variable_LifeTank_C")
}

--Electric Reverb Core Piece
---@type FHbkInventoryItem
InventoryItem.GaugeUpPiece = {
    InventoryId = {TagName = FName("Inventory.Variable.GaugeUpPiece")},
    Count = 12,
    InventoryObjectPtr = SoftClassPtr("/Game/Hibiki/Blueprints/Inventory/Variable/Inventory_Variable_GaugeUpPiece.Inventory_Variable_GaugeUpPiece_C")
}

--Electric Reverb Core
---@type FHbkInventoryItem
InventoryItem.GaugeUp = {
    InventoryId = {TagName = FName("Inventory.Variable.GaugeUp")},
    Count = 3,
    InventoryObjectPtr = SoftClassPtr("/Game/Hibiki/Blueprints/Inventory/Variable/Inventory_Variable_GaugeUp.Inventory_Variable_GaugeUp_C")
}

InventoryItem.PlayerItemDefault = {
    InventoryItem.SpecialAttack010,
    InventoryItem.AttackX,
    InventoryItem.AttackY,
    InventoryItem.ComboXXXX,
    InventoryItem.ComboYYY,
    InventoryItem.ComboXYY,
    InventoryItem.ComboYXX,
    InventoryItem.ComboD_X,
    InventoryItem.ComboD_Y,
    InventoryItem.ComboX_XX,
    InventoryItem.ComboAirY,
    InventoryItem.ComboAirXXXX,
    InventoryItem.AbilityDodge,
    InventoryItem.AbilityRhythmDodge
}

InventoryItem.ItemCategories = {
    [InventoryItem.Chip_BatteryUp] = 1,
    [InventoryItem.Chip_ComboDurationUp] = 1,
    [InventoryItem.Chip_CoolTimeK] = 1,
    [InventoryItem.Chip_CoolTimeM] = 1,
    [InventoryItem.Chip_CoolTimeP] = 1,
    [InventoryItem.Chip_DParryDamage] = 1,
    [InventoryItem.Chip_DParryInvincible] = 1,
    [InventoryItem.Chip_FindingCircuit] = 1,
    [InventoryItem.Chip_ForceQuickCallPartner] = 1,
    [InventoryItem.Chip_GearUp] = 1,
    [InventoryItem.Chip_ItemAbsorbCancel] = 1,
    [InventoryItem.Chip_ItemAbsorbUp] = 1,
    [InventoryItem.Chip_K_DebuffTimeUp] = 1,
    [InventoryItem.Chip_K_FloatingTimeUp] = 1,
    [InventoryItem.Chip_M_LuckyShieldDamage] = 1,
    [InventoryItem.Chip_M_WaveRangeUp] = 1,
    [InventoryItem.Chip_P_DownTimeUp] = 1,
    [InventoryItem.Chip_P_ElectricEnemy] = 1,
    [InventoryItem.Chip_ParryBattery] = 1,
    [InventoryItem.Chip_ParryHealth] = 1,
    [InventoryItem.Chip_RecoveryUp] = 1,
    [InventoryItem.Chip_RhythmMeterUp] = 1,
    [InventoryItem.Chip_ShowEnemyHealth] = 1,
    [InventoryItem.Chip_TakeAndGiveDamageUp] = 1,
    [InventoryItem.RockComicA] = 5,
    [InventoryItem.RockComicB] = 5,
    [InventoryItem.RockComicC] = 5,
    [InventoryItem.RockComicD] = 5,
    [InventoryItem.VLog0000] = 5,
    [InventoryItem.VLog0010] = 5,
    [InventoryItem.VLog0020] = 5,
    [InventoryItem.VLog0030] = 5,
    [InventoryItem.VLog0040] = 5,
    [InventoryItem.VLog0050] = 5,
    [InventoryItem.VLog0060] = 5,
    [InventoryItem.VLog0070] = 5,
    [InventoryItem.VLog0080] = 5,
    [InventoryItem.VLog0090] = 5,
    [InventoryItem.VLog0100] = 5,
    [InventoryItem.VLog0110] = 5,
    [InventoryItem.VLog0120] = 5,
    [InventoryItem.VLog0130] = 5,
    [InventoryItem.VLog0140] = 5,
    [InventoryItem.VLog0150] = 5,
    [InventoryItem.VLog0160] = 5,
    [InventoryItem.VLog0170] = 5,
    [InventoryItem.VLog0180] = 5,
    [InventoryItem.VLog0190] = 5,
    [InventoryItem.VLog0200] = 5,
    [InventoryItem.VLog0210] = 5,
    [InventoryItem.VLog0220] = 5,
    [InventoryItem.VLog0230] = 5,
    [InventoryItem.VLog0240] = 5,
    [InventoryItem.VLog0250] = 5,
    [InventoryItem.VLog0260] = 5,
    [InventoryItem.VLog0270] = 5,
    [InventoryItem.VLog0280] = 5,
    [InventoryItem.VLog0290] = 5,
    [InventoryItem.VLog0300] = 5,
    [InventoryItem.VLog0310] = 5,
    [InventoryItem.VLog0320] = 5,
    [InventoryItem.VLog0330] = 5,
    [InventoryItem.VLog0340] = 5,
    [InventoryItem.VLog0350] = 5,
    [InventoryItem.VLog0360] = 5,
    [InventoryItem.VLog0370] = 5,
    [InventoryItem.VLog0380] = 5,
    [InventoryItem.VLog0390] = 5,
    [InventoryItem.VLog0400] = 5,
    [InventoryItem.VLog0410] = 5,
    [InventoryItem.VLog0420] = 5,
    [InventoryItem.VLog0430] = 5,
    [InventoryItem.VLog0440] = 5,
    [InventoryItem.VLog0450] = 5,
    [InventoryItem.VLog0460] = 5,
    [InventoryItem.VLog0470] = 5,
    [InventoryItem.VLog0480] = 5,
    [InventoryItem.VLog0490] = 5,
    [InventoryItem.VLog0500] = 5,
    [InventoryItem.VLog0510] = 5,
    [InventoryItem.VLog0520] = 5,
    [InventoryItem.VLog0530] = 5,
    [InventoryItem.VLog0540] = 5,
    [InventoryItem.VLog0550] = 5,
    [InventoryItem.VLog0560] = 5,
    [InventoryItem.VLog0570] = 5,
    [InventoryItem.VLog0580] = 5,
    [InventoryItem.VLog0590] = 5,
    [InventoryItem.VLog0600] = 5,
    [InventoryItem.VLog0610] = 5,
    [InventoryItem.VLog0620] = 5,
    [InventoryItem.VLog0630] = 5,
    [InventoryItem.VLog0640] = 5,
    [InventoryItem.VLog0650] = 5,
    [InventoryItem.VLog0660] = 5,
    [InventoryItem.VLog0670] = 5,
    [InventoryItem.VLog0680] = 5,
    [InventoryItem.VLog0690] = 5,
    [InventoryItem.VLog0700] = 5,
    [InventoryItem.VLog0710] = 5,
    [InventoryItem.VLog0720] = 5,
    [InventoryItem.VLog0730] = 5,
    [InventoryItem.VLog0740] = 5,
    [InventoryItem.VLog0750] = 5,
    [InventoryItem.VLog0760] = 5,
    [InventoryItem.VLog5010] = 5,
    [InventoryItem.VLog5020] = 5,
    [InventoryItem.VLog5030] = 5,
    [InventoryItem.VLog5040] = 5,
    [InventoryItem.VLog5050] = 5,
    [InventoryItem.VLog5060] = 5,
    [InventoryItem.VLog5070] = 5,
    [InventoryItem.VLog5080] = 5,
    [InventoryItem.VLog5090] = 5,
    [InventoryItem.VLog5100] = 5,
    [InventoryItem.VLog5110] = 5,
    [InventoryItem.VLog5120] = 5,
    [InventoryItem.VLog5130] = 5,
    [InventoryItem.VLog5140] = 5,
    [InventoryItem.VLog5150] = 5,
    [InventoryItem.VLog5160] = 5,
    [InventoryItem.VLog5170] = 5,
    [InventoryItem.VLog5180] = 5,
    [InventoryItem.VLog5190] = 5,
    [InventoryItem.VLog5200] = 5,
    [InventoryItem.VLog5210] = 5,
    [InventoryItem.VLog5220] = 5,
    [InventoryItem.VLog5230] = 5,
    [InventoryItem.VLog5240] = 5,
    [InventoryItem.VLog5250] = 5,
    [InventoryItem.VLog5260] = 5,
    [InventoryItem.VLog5270] = 5,
    [InventoryItem.VLog5280] = 5,
    [InventoryItem.VLog5290] = 5,
    [InventoryItem.VLog5300] = 5,
    [InventoryItem.Ability_AirParry] = 1,
    [InventoryItem.Ability_DirectionalParry] = 1,
    [InventoryItem.Ability_Dodge] = 1,
    [InventoryItem.Ability_Magnet] = 1,
    [InventoryItem.Ability_MagnetBackstab] = 1,
    [InventoryItem.Ability_Parry] = 1,
    [InventoryItem.Ability_RhythmDodge] = 1,
    [InventoryItem.AttackX] = 1,
    [InventoryItem.AttackY] = 1,
    [InventoryItem.Combo_AirXXXX] = 1,
    [InventoryItem.Combo_AirXYXY] = 1,
    [InventoryItem.Combo_AirXYYY] = 1,
    [InventoryItem.Combo_AirY] = 1,
    [InventoryItem.Combo_ChargeX] = 1,
    [InventoryItem.Combo_ChargeY] = 1,
    [InventoryItem.Combo_D_X] = 1,
    [InventoryItem.Combo_D_Y] = 1,
    [InventoryItem.Combo_QuickX] = 1,
    [InventoryItem.Combo_QuickY] = 1,
    [InventoryItem.Combo_X_XX] = 1,
    [InventoryItem.Combo_XmY] = 1,
    [InventoryItem.Combo_XX_XXX] = 1,
    [InventoryItem.Combo_XXXX] = 1,
    [InventoryItem.Combo_XXYYY] = 1,
    [InventoryItem.Combo_XYXXX] = 1,
    [InventoryItem.Combo_XYY] = 1,
    [InventoryItem.Combo_YXX] = 1,
    [InventoryItem.Combo_YXY] = 1,
    [InventoryItem.Combo_YYX] = 1,
    [InventoryItem.Combo_YYY] = 1,
    [InventoryItem.PartnerAttackK01] = 1,
    [InventoryItem.PartnerAttackM01] = 1,
    [InventoryItem.PartnerAttackP01] = 1,
    [InventoryItem.PartnerChargeK01] = 1,
    [InventoryItem.PartnerChargeM01] = 1,
    [InventoryItem.PartnerChargeP01] = 1,
    [InventoryItem.PartnerCounterK01] = 1,
    [InventoryItem.PartnerCounterM01] = 1,
    [InventoryItem.PartnerCounterP01] = 1,
    [InventoryItem.PartnerJamKA01] = 1,
    [InventoryItem.PartnerJamKG01] = 1,
    [InventoryItem.PartnerJamMA01] = 1,
    [InventoryItem.PartnerJamMG01] = 1,
    [InventoryItem.PartnerJamPA01] = 1,
    [InventoryItem.PartnerJamPG01] = 1,
    [InventoryItem.SpecialAttack010] = 1,
    [InventoryItem.SpecialAttack020] = 1,
    [InventoryItem.SpecialAttack030] = 1,
    [InventoryItem.SpecialAttack040] = 1,
    [InventoryItem.SpecialAttack050] = 1,
    [InventoryItem.SpecialAttack060] = 1,
    [InventoryItem.SpecialAttack080] = 1,
    [InventoryItem.SpecialAttack310] = 1,
    [InventoryItem.SpecialAttack330] = 1,
    [InventoryItem.SpecialAttack340] = 1,
    [InventoryItem.SpecialAttack350] = 1,
    [InventoryItem.SpecialAttack360] = 1,
    [InventoryItem.SpecialAttack610] = 1,
    [InventoryItem.SpecialAttack620] = 1,
    [InventoryItem.SpecialAttack910] = 1,
    [InventoryItem.SpecialAttack1010] = 1,
    [InventoryItem.SpecialAttack1020] = 1,
    [InventoryItem.ChipSlot] = 2,
    [InventoryItem.SpAttackSlot] = 2,
    [InventoryItem.Ticket] = 2,
    [InventoryItem.Circuit] = 3,
    [InventoryItem.LifeUpPiece] = 3,
    [InventoryItem.LifeUp] = 3,
    [InventoryItem.LifeTankPiece] = 3,
    [InventoryItem.LifeTank] = 3,
    [InventoryItem.GaugeUpPiece] = 3,
    [InventoryItem.GaugeUp] = 3
}

return InventoryItem