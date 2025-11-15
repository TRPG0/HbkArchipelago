AbilityTags = {}

--Air Dash
---@type HbkPlayerStateInfoTags
AbilityTags.Ability_AirDodge = {
    GameplayTag = {TagName = FName("Player.Skill.Action.AirDash")},
    ParentTags = {
        {TagName = FName("Player")},
        {TagName = FName("Player.Skill")},
        {TagName = FName("Player.Skill.Action")}
    }
}

--Air Parry
---@type HbkPlayerStateInfoTags
AbilityTags.Ability_AirParry = {
    GameplayTag = {TagName = FName("Player.Skill.Action.AirParry")},
    ParentTags = {
        {TagName = FName("Player")},
        {TagName = FName("Player.Skill")},
        {TagName = FName("Player.Skill.Action")}
    }
}

--Beat Hit
---@type HbkPlayerStateInfoTags
AbilityTags.Ability_BeatHit = {
    GameplayTag = {TagName = FName("Player.Skill.BeatHit")},
    ParentTags = {
        {TagName = FName("Player")},
        {TagName = FName("Player.Skill")}
    }
}

--Directional Parry
---@type HbkPlayerStateInfoTags
AbilityTags.Ability_DirectionalParry = {
    GameplayTag = {TagName = FName("Player.Skill.Action.DirectionalParry")},
    ParentTags = {
        {TagName = FName("Player")},
        {TagName = FName("Player.Skill")},
        {TagName = FName("Player.Skill.Action")}
    }
}

--Dash
---@type HbkPlayerStateInfoTags
AbilityTags.Ability_Dodge = {
    GameplayTag = {TagName = FName("Player.Skill.Action.Dash")},
    ParentTags = {
        {TagName = FName("Player")},
        {TagName = FName("Player.Skill")},
        {TagName = FName("Player.Skill.Action")}
    }
}

--Magnet Grab
---@type HbkPlayerStateInfoTags
AbilityTags.Ability_Magnet = {
    GameplayTag = {TagName = FName("Player.Skill.Action.Magnet")},
    ParentTags = {
        {TagName = FName("Player")},
        {TagName = FName("Player.Skill")},
        {TagName = FName("Player.Skill.Action")}
    }
}

--Magnet Backstab
---@type HbkPlayerStateInfoTags
AbilityTags.Ability_MagnetBackstab = {
    GameplayTag = {TagName = FName("Player.Skill.Action.MagnetBackstab")},
    ParentTags = {
        {TagName = FName("Player")},
        {TagName = FName("Player.Skill")},
        {TagName = FName("Player.Skill.Action")}
    }
}

--Parry
---@type HbkPlayerStateInfoTags
AbilityTags.Ability_Parry = {
    GameplayTag = {TagName = FName("Player.Skill.Action.Parry")},
    ParentTags = {
        {TagName = FName("Player")},
        {TagName = FName("Player.Skill")},
        {TagName = FName("Player.Skill.Action")}
    }
}

--Partner
---@type HbkPlayerStateInfoTags
AbilityTags.Ability_Partner = {
    GameplayTag = {TagName = FName("Player.Partner")},
    ParentTags = {
        {TagName = FName("Player")}
    }
}

--Rhythm Dodge
---@type HbkPlayerStateInfoTags
AbilityTags.Ability_RhythmDodge = {
    GameplayTag = {TagName = FName("Player.Skill.Action.RhythmDash")},
    ParentTags = {
        {TagName = FName("Player")},
        {TagName = FName("Player.Skill")},
        {TagName = FName("Player.Skill.Action")}
    }
}

--Special Attack
---@type HbkPlayerStateInfoTags
AbilityTags.Ability_SpecialAttack = {
    GameplayTag = {TagName = FName("Player.Skill.SPA")},
    ParentTags = {
        {TagName = FName("Player")},
        {TagName = FName("Player.Skill")}
    }
}

return AbilityTags