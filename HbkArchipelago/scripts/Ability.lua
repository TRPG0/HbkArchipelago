local Ability = {}

---@type HbkAbility
Ability.BeatHit = {
    ID = 1,
    Name = "BeatHit",
    AbilityTag = "Player.Skill.BeatHit",
    InventoryTag = nil,
    Add = function() Ability:AddAbility(Ability.BeatHit.ID) end,
    Remove = function() Ability:RemoveAbilityTag(Ability.BeatHit.AbilityTag) end
}

---@type HbkAbility
Ability.SPAttack = {
    ID = 2,
    Name = "SPAttack",
    AbilityTag = "Player.Skill.SPA",
    InventoryTag = nil,
    Add = function() Ability:AddAbility(Ability.SPAttack.ID) end,
    Remove = function() Ability:RemoveAbilityTag(Ability.SPAttack.AbilityTag) end
}

---@type HbkAbility
Ability.Dodge = {
    ID = 3,
    Name = "Dodge",
    AbilityTag = "Player.Skill.Action.Dash",
    InventoryTag = "Inventory.Ability.Dodge",
    Add = function() Ability:AddAbility(Ability.Dodge.ID) end,
    Remove = function() Ability:RemoveAbilityTag(Ability.Dodge.AbilityTag) end
}

---@type HbkAbility
Ability.AirDodge = {
    ID = 4,
    Name = "AirDodge",
    AbilityTag = "Player.Skill.Action.AirDash",
    InventoryTag = nil,
    Add = function() Ability:AddAbility(Ability.AirDodge.ID) end,
    Remove = function() Ability:RemoveAbilityTag(Ability.AirDodge.AbilityTag) end
}

--triple dodge
---@type HbkAbility
Ability.RhythmDodge = {
    ID = 5,
    Name = "RhythmDodge",
    AbilityTag = "Player.Skill.Action.RhythmDash",
    InventoryTag = "Inventory.Ability.RhythmDodge",
    Add = function() Ability:AddAbility(Ability.RhythmDodge.ID) end,
    Remove = function() Ability:RemoveAbilityTag(Ability.RhythmDodge.AbilityTag) end
}

---@type HbkAbility
Ability.Magnet = {
    ID = 6,
    Name = "Magnet",
    AbilityTag = "Player.Skill.Action.Magnet",
    InventoryTag = "Inventory.Ability.Magnet",
    Add = function() Ability:AddAbility(Ability.Magnet.ID) end,
    Remove = function() Ability:RemoveAbilityTag(Ability.Magnet.AbilityTag) end
}

---@type HbkAbility
Ability.MagnetBackstab = {
    ID = 7,
    Name = "MagnetBackstab",
    AbilityTag = "Player.Skill.Action.MagnetBackstab",
    InventoryTag = "Inventory.Ability.MagnetBackstab",
    Add = function() Ability:AddAbility(Ability.MagnetBackstab.ID) end,
    Remove = function() Ability:RemoveAbilityTag(Ability.MagnetBackstab.AbilityTag) end
}

---@type HbkAbility
Ability.Parry = {
    ID = 8,
    Name = "Parry",
    AbilityTag = "Player.Skill.Action.Parry",
    InventoryTag = "Inventory.Ability.Parry",
    Add = function() Ability:AddAbility(Ability.Parry.ID) end,
    Remove = function() Ability:RemoveAbilityTag(Ability.Parry.AbilityTag) end
}

---@type HbkAbility
Ability.AirParry = {
    ID = 9,
    Name = "AirParry",
    AbilityTag = "Player.Skill.Action.AirParry",
    InventoryTag = "Inventory.Ability.AirParry",
    Add = function() Ability:AddAbility(Ability.AirParry.ID) end,
    Remove = function() Ability:RemoveAbilityTag(Ability.AirParry.AbilityTag) end
}

---@type HbkAbility
Ability.DirectionalParry = {
    ID = 10,
    Name = "DirectionalParry",
    AbilityTag = "Player.Skill.Action.DirectionalParry",
    InventoryTag = "Inventory.Ability.DirectionalParry",
    Add = function() Ability:AddAbility(Ability.DirectionalParry.ID) end,
    Remove = function() Ability:RemoveAbilityTag(Ability.DirectionalParry.AbilityTag) end
}

---@type HbkAbility
Ability.PartnerCall = {
    ID = 11,
    Name = "PartnerCall",
    AbilityTag = "Player.Partner",
    InventoryTag = nil,
    Add = function() Ability:AddAbility(Ability.PartnerCall.ID) end,
    Remove = function() Ability:RemoveAbilityTag(Ability.PartnerCall.AbilityTag) end
}

---@param ability integer
function Ability:AddAbility(ability)
    local Valid, PlayerCharacterManager = ObjectCache.FindPlayerCharacterManager()
    if Valid then
        PlayerCharacterManager:LearnPlayerAbility(PlayerCharacterManager:GetWorld(), ability)
    end
end

---@param removeTag string
function Ability:RemoveAbilityTag(removeTag)
    local Valid, PlayerCharacterManager = ObjectCache.FindPlayerCharacterManager()
    if Valid then
        ---@type TArray<FGameplayTag>
        local tags = PlayerCharacterManager.PlayerStateInfo.AbilityTags.GameplayTags
        local newTags = {}
        tags:ForEach(function (index, elem)
            if elem:get().TagName:ToString() ~= removeTag then
                table.insert(newTags, {TagName = elem:get().TagName})
            end
        end)
        PlayerCharacterManager.PlayerStateInfo.AbilityTags.GameplayTags = newTags
        print("Removed ability tag " .. removeTag .. "\n")
    end
end

return Ability