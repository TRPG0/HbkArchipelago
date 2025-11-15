SaveData = require "SaveData"
Util = require "Util"

SkillTags = {}

--Light Attack
---@type HbkPlayerStateInfoTags
SkillTags.AttackX = {
    GameplayTag = {TagName = FName("Player.Skill.Attack.X")},
    ParentTags = {
        {TagName = FName("Player")},
        {TagName = FName("Player.Skill")},
        {TagName = FName("Player.Skill.Attack")}
    }
}

--Heavy Attack
---@type HbkPlayerStateInfoTags
SkillTags.AttackY = {
    GameplayTag = {TagName = FName("Player.Skill.Attack.Y")},
    ParentTags = {
        {TagName = FName("Player")},
        {TagName = FName("Player.Skill")},
        {TagName = FName("Player.Skill.Attack")}
    }
}

--Air Countdown
---@type HbkPlayerStateInfoTags
SkillTags.Combo_AirXXXX = {
    GameplayTag = {TagName = FName("Player.Skill.Combo.AirXXXX")},
    ParentTags = {
        {TagName = FName("Player")},
        {TagName = FName("Player.Skill")},
        {TagName = FName("Player.Skill.Combo")}
    }
}

--Compressor Slam
---@type HbkPlayerStateInfoTags
SkillTags.Combo_AirXYXY = {
    GameplayTag = {TagName = FName("Player.Skill.Combo.AirXYXY")},
    ParentTags = {
        {TagName = FName("Player")},
        {TagName = FName("Player.Skill")},
        {TagName = FName("Player.Skill.Combo")}
    }
}

--Harmonic Beam
---@type HbkPlayerStateInfoTags
SkillTags.Combo_AirXYYY = {
    GameplayTag = {TagName = FName("Player.Skill.Combo.AirXYYY")},
    ParentTags = {
        {TagName = FName("Player")},
        {TagName = FName("Player.Skill")},
        {TagName = FName("Player.Skill.Combo")}
    }
}

--Hammer-On
---@type HbkPlayerStateInfoTags
SkillTags.Combo_AirY = {
    GameplayTag = {TagName = FName("Player.Skill.Combo.AirY")},
    ParentTags = {
        {TagName = FName("Player")},
        {TagName = FName("Player.Skill")},
        {TagName = FName("Player.Skill.Combo")}
    }
}

--Staccato Launch
---@type HbkPlayerStateInfoTags
SkillTags.Combo_ChargeX = {
    GameplayTag = {TagName = FName("Player.Skill.Combo.C-X")},
    ParentTags = {
        {TagName = FName("Player")},
        {TagName = FName("Player.Skill")},
        {TagName = FName("Player.Skill.Combo")}
    }
}

--Gain Tornado
---@type HbkPlayerStateInfoTags
SkillTags.Combo_ChargeY = {
    GameplayTag = {TagName = FName("Player.Skill.Combo.C-Y")},
    ParentTags = {
        {TagName = FName("Player")},
        {TagName = FName("Player.Skill")},
        {TagName = FName("Player.Skill.Combo")}
    }
}

--Dash Attack
---@type HbkPlayerStateInfoTags
SkillTags.Combo_D_X = {
    GameplayTag = {TagName = FName("Player.Skill.Combo.D-X")},
    ParentTags = {
        {TagName = FName("Player")},
        {TagName = FName("Player.Skill")},
        {TagName = FName("Player.Skill.Combo")}
    }
}

--Air Launch
---@type HbkPlayerStateInfoTags
SkillTags.Combo_D_Y = {
    GameplayTag = {TagName = FName("Player.Skill.Combo.D-Y")},
    ParentTags = {
        {TagName = FName("Player")},
        {TagName = FName("Player.Skill")},
        {TagName = FName("Player.Skill.Combo")}
    }
}

--Quick Beat Hit
---@type HbkPlayerStateInfoTags
SkillTags.Combo_QuickX = {
    GameplayTag = {TagName = FName("Player.Skill.Combo.Q-X")},
    ParentTags = {
        {TagName = FName("Player")},
        {TagName = FName("Player.Skill")},
        {TagName = FName("Player.Skill.Combo")}
    }
}

--Steal Counter
---@type HbkPlayerStateInfoTags
SkillTags.Combo_QuickY = {
    GameplayTag = {TagName = FName("Player.Skill.Combo.Q-Y")},
    ParentTags = {
        {TagName = FName("Player")},
        {TagName = FName("Player.Skill")},
        {TagName = FName("Player.Skill.Combo")}
    }
}

--Rise Up
---@type HbkPlayerStateInfoTags
SkillTags.Combo_X_XX = {
    GameplayTag = {TagName = FName("Player.Skill.Combo.X-XX")},
    ParentTags = {
        {TagName = FName("Player")},
        {TagName = FName("Player.Skill")},
        {TagName = FName("Player.Skill.Combo")}
    }
}

--Shred
---@type HbkPlayerStateInfoTags
SkillTags.Combo_XmY = {
    GameplayTag = {TagName = FName("Player.Skill.Combo.XmY")},
    ParentTags = {
        {TagName = FName("Player")},
        {TagName = FName("Player.Skill")},
        {TagName = FName("Player.Skill.Combo")}
    }
}

--Tune Up
---@type HbkPlayerStateInfoTags
SkillTags.Combo_XX_XXX = {
    GameplayTag = {TagName = FName("Player.Skill.Combo.XX-XXX")},
    ParentTags = {
        {TagName = FName("Player")},
        {TagName = FName("Player.Skill")},
        {TagName = FName("Player.Skill.Combo")}
    }
}

--Humbucker
---@type HbkPlayerStateInfoTags
SkillTags.Combo_XXXX = {
    GameplayTag = {TagName = FName("Player.Skill.Combo.XXXX")},
    ParentTags = {
        {TagName = FName("Player")},
        {TagName = FName("Player.Skill")},
        {TagName = FName("Player.Skill.Combo")}
    }
}

--Arpeggio Stab
---@type HbkPlayerStateInfoTags
SkillTags.Combo_XXYYY = {
    GameplayTag = {TagName = FName("Player.Skill.Combo.XYXXX")},
    ParentTags = {
        {TagName = FName("Player")},
        {TagName = FName("Player.Skill")},
        {TagName = FName("Player.Skill.Combo")}
    }
}

--Echo Splash
---@type HbkPlayerStateInfoTags
SkillTags.Combo_XYXXX = {
    GameplayTag = {TagName = FName("Player.Skill.Combo.XYXXX")},
    ParentTags = {
        {TagName = FName("Player")},
        {TagName = FName("Player.Skill")},
        {TagName = FName("Player.Skill.Combo")}
    }
}

--Breakdown
---@type HbkPlayerStateInfoTags
SkillTags.Combo_XYY = {
    GameplayTag = {TagName = FName("Player.Skill.Combo.XYY")},
    ParentTags = {
        {TagName = FName("Player")},
        {TagName = FName("Player.Skill")},
        {TagName = FName("Player.Skill.Combo")}
    }
}

--Tremolo
---@type HbkPlayerStateInfoTags
SkillTags.Combo_YXX = {
    GameplayTag = {TagName = FName("Player.Skill.Combo.YXX")},
    ParentTags = {
        {TagName = FName("Player")},
        {TagName = FName("Player.Skill")},
        {TagName = FName("Player.Skill.Combo")}
    }
}

--Stomp Box
---@type HbkPlayerStateInfoTags
SkillTags.Combo_YXY = {
    GameplayTag = {TagName = FName("Player.Skill.Combo.YXY")},
    ParentTags = {
        {TagName = FName("Player")},
        {TagName = FName("Player.Skill")},
        {TagName = FName("Player.Skill.Combo")}
    }
}

--Pickup Crash
---@type HbkPlayerStateInfoTags
SkillTags.Combo_YYX = {
    GameplayTag = {TagName = FName("Player.Skill.Combo.YYX")},
    ParentTags = {
        {TagName = FName("Player")},
        {TagName = FName("Player.Skill")},
        {TagName = FName("Player.Skill.Combo")}
    }
}

--Grandslam
---@type HbkPlayerStateInfoTags
SkillTags.Combo_YYY = {
    GameplayTag = {TagName = FName("Player.Skill.Combo.YYY")},
    ParentTags = {
        {TagName = FName("Player")},
        {TagName = FName("Player.Skill")},
        {TagName = FName("Player.Skill.Combo")}
    }
}

--Korsica Windstick
---@type HbkPlayerStateInfoTags
SkillTags.PartnerAttackK01 = {
    GameplayTag = {TagName = FName("Player.Partner.Attack.K01")},
    ParentTags = {
        {TagName = FName("Player")},
        {TagName = FName("Player.Partner")},
        {TagName = FName("Player.Partner.Attack")}
    }
}

--Macaron Punch
---@type HbkPlayerStateInfoTags
SkillTags.PartnerAttackM01 = {
    GameplayTag = {TagName = FName("Player.Partner.Attack.M01")},
    ParentTags = {
        {TagName = FName("Player")},
        {TagName = FName("Player.Partner")},
        {TagName = FName("Player.Partner.Attack")}
    }
}

--Peppermint Blaster
---@type HbkPlayerStateInfoTags
SkillTags.PartnerAttackP01 = {
    GameplayTag = {TagName = FName("Player.Partner.Attack.P01")},
    ParentTags = {
        {TagName = FName("Player")},
        {TagName = FName("Player.Partner")},
        {TagName = FName("Player.Partner.Attack")}
    }
}

--Korsica Typhoon
---@type HbkPlayerStateInfoTags
SkillTags.PartnerChargeK01 = {
    GameplayTag = {TagName = FName("Player.Partner.Charge.K01")},
    ParentTags = {
        {TagName = FName("Player")},
        {TagName = FName("Player.Partner")},
        {TagName = FName("Player.Partner.Charge")}
    }
}

--Gravity Well
---@type HbkPlayerStateInfoTags
SkillTags.PartnerChargeM01 = {
    GameplayTag = {TagName = FName("Player.Partner.Charge.M01")},
    ParentTags = {
        {TagName = FName("Player")},
        {TagName = FName("Player.Partner")},
        {TagName = FName("Player.Partner.Charge")}
    }
}

--Cannon Spike
---@type HbkPlayerStateInfoTags
SkillTags.PartnerChargeP01 = {
    GameplayTag = {TagName = FName("Player.Partner.Charge.P01")},
    ParentTags = {
        {TagName = FName("Player")},
        {TagName = FName("Player.Partner")},
        {TagName = FName("Player.Partner.Charge")}
    }
}

--High Alert
---@type HbkPlayerStateInfoTags
SkillTags.PartnerCounterK01 = {
    GameplayTag = {TagName = FName("Player.Partner.Counter.K01")},
    ParentTags = {
        {TagName = FName("Player")},
        {TagName = FName("Player.Partner")},
        {TagName = FName("Player.Partner.Counter")}
    }
}

--Love Tap
---@type HbkPlayerStateInfoTags
SkillTags.PartnerCounterM01 = {
    GameplayTag = {TagName = FName("Player.Partner.Counter.M01")},
    ParentTags = {
        {TagName = FName("Player")},
        {TagName = FName("Player.Partner")},
        {TagName = FName("Player.Partner.Counter")}
    }
}

--Kick Shot
---@type HbkPlayerStateInfoTags
SkillTags.PartnerCounterP01 = {
    GameplayTag = {TagName = FName("Player.Partner.Counter.P01")},
    ParentTags = {
        {TagName = FName("Player")},
        {TagName = FName("Player.Partner")},
        {TagName = FName("Player.Partner.Counter")}
    }
}

--Tornado Lift
---@type HbkPlayerStateInfoTags
SkillTags.PartnerJamKA01 = {
    GameplayTag = {TagName = FName("Player.Partner.JamCombo.KA01")},
    ParentTags = {
        {TagName = FName("Player")},
        {TagName = FName("Player.Partner")},
        {TagName = FName("Player.Partner.JamCombo")}
    }
}

--High Security Risk
---@type HbkPlayerStateInfoTags
SkillTags.PartnerJamKG01 = {
    GameplayTag = {TagName = FName("Player.Partner.JamCombo.KG01")},
    ParentTags = {
        {TagName = FName("Player")},
        {TagName = FName("Player.Partner")},
        {TagName = FName("Player.Partner.JamCombo")}
    }
}

--High Strung
---@type HbkPlayerStateInfoTags
SkillTags.PartnerJamMA01 = {
    GameplayTag = {TagName = FName("Player.Partner.JamCombo.MA01")},
    ParentTags = {
        {TagName = FName("Player")},
        {TagName = FName("Player.Partner")},
        {TagName = FName("Player.Partner.JamCombo")}
    }
}

--Double Bass Drop
---@type HbkPlayerStateInfoTags
SkillTags.PartnerJamMG01 = {
    GameplayTag = {TagName = FName("Player.Partner.JamCombo.MG01")},
    ParentTags = {
        {TagName = FName("Player")},
        {TagName = FName("Player.Partner")},
        {TagName = FName("Player.Partner.JamCombo")}
    }
}

--Master Blaster
---@type HbkPlayerStateInfoTags
SkillTags.PartnerJamPA01 = {
    GameplayTag = {TagName = FName("Player.Partner.JamCombo.PA01")},
    ParentTags = {
        {TagName = FName("Player")},
        {TagName = FName("Player.Partner")},
        {TagName = FName("Player.Partner.JamCombo")}
    }
}

--Switch Kicker
---@type HbkPlayerStateInfoTags
SkillTags.PartnerJamPG01 = {
    GameplayTag = {TagName = FName("Player.Partner.JamCombo.PG01")},
    ParentTags = {
        {TagName = FName("Player")},
        {TagName = FName("Player.Partner")},
        {TagName = FName("Player.Partner.JamCombo")}
    }
}

--no gameplay tag for special attack 010?

--Guitar Ride
---@type HbkPlayerStateInfoTags
SkillTags.SpecialAttack020 = {
    GameplayTag = {TagName = FName("Player.Skill.SPA.020")},
    ParentTags = {
        {TagName = FName("Player")},
        {TagName = FName("Player.Skill")},
        {TagName = FName("Player.Skill.SPA")}
    }
}

--Pick Me Up!
---@type HbkPlayerStateInfoTags
SkillTags.SpecialAttack030 = {
    GameplayTag = {TagName = FName("Player.Skill.SPA.030")},
    ParentTags = {
        {TagName = FName("Player")},
        {TagName = FName("Player.Skill")},
        {TagName = FName("Player.Skill.SPA")}
    }
}

--Pick Slide
---@type HbkPlayerStateInfoTags
SkillTags.SpecialAttack040 = {
    GameplayTag = {TagName = FName("Player.Skill.SPA.040")},
    ParentTags = {
        {TagName = FName("Player")},
        {TagName = FName("Player.Skill")},
        {TagName = FName("Player.Skill.SPA")}
    }
}

--High Pitch Punch
---@type HbkPlayerStateInfoTags
SkillTags.SpecialAttack050 = {
    GameplayTag = {TagName = FName("Player.Skill.SPA.050")},
    ParentTags = {
        {TagName = FName("Player")},
        {TagName = FName("Player.Skill")},
        {TagName = FName("Player.Skill.SPA")}
    }
}

--Air Guitar
---@type HbkPlayerStateInfoTags
SkillTags.SpecialAttack060 = {
    GameplayTag = {TagName = FName("Player.Skill.SPA.060")},
    ParentTags = {
        {TagName = FName("Player")},
        {TagName = FName("Player.Skill")},
        {TagName = FName("Player.Skill.SPA")}
    }
}

--Rip and Tear
---@type HbkPlayerStateInfoTags
SkillTags.SpecialAttack080 = {
    GameplayTag = {TagName = FName("Player.Skill.SPA.080")},
    ParentTags = {
        {TagName = FName("Player")},
        {TagName = FName("Player.Skill")},
        {TagName = FName("Player.Skill.SPA")}
    }
}

--Double Riff
---@type HbkPlayerStateInfoTags
SkillTags.SpecialAttack310 = {
    GameplayTag = {TagName = FName("Player.Skill.SPA.310")},
    ParentTags = {
        {TagName = FName("Player")},
        {TagName = FName("Player.Skill")},
        {TagName = FName("Player.Skill.SPA")}
    }
}

--Barrier Wall
---@type HbkPlayerStateInfoTags
SkillTags.SpecialAttack330 = {
    GameplayTag = {TagName = FName("Player.Skill.SPA.330")},
    ParentTags = {
        {TagName = FName("Player")},
        {TagName = FName("Player.Skill")},
        {TagName = FName("Player.Skill.SPA")}
    }
}

--Twin Assault
---@type HbkPlayerStateInfoTags
SkillTags.SpecialAttack340 = {
    GameplayTag = {TagName = FName("Player.Skill.SPA.340")},
    ParentTags = {
        {TagName = FName("Player")},
        {TagName = FName("Player.Skill")},
        {TagName = FName("Player.Skill.SPA")}
    }
}

--Steal the Show
---@type HbkPlayerStateInfoTags
SkillTags.SpecialAttack350 = {
    GameplayTag = {TagName = FName("Player.Skill.SPA.350")},
    ParentTags = {
        {TagName = FName("Player")},
        {TagName = FName("Player.Skill")},
        {TagName = FName("Player.Skill.SPA")}
    }
}

--Holo-Chai
---@type HbkPlayerStateInfoTags
SkillTags.SpecialAttack360 = {
    GameplayTag = {TagName = FName("Player.Skill.SPA.360")},
    ParentTags = {
        {TagName = FName("Player")},
        {TagName = FName("Player.Skill")},
        {TagName = FName("Player.Skill.SPA")}
    }
}

--Hibiki!
---@type HbkPlayerStateInfoTags
SkillTags.SpecialAttack610 = {
    GameplayTag = {TagName = FName("Player.Skill.SPA.610")},
    ParentTags = {
        {TagName = FName("Player")},
        {TagName = FName("Player.Skill")},
        {TagName = FName("Player.Skill.SPA")}
    }
}

--Overdrive Slash
---@type HbkPlayerStateInfoTags
SkillTags.SpecialAttack620 = {
    GameplayTag = {TagName = FName("Player.Skill.SPA.620")},
    ParentTags = {
        {TagName = FName("Player")},
        {TagName = FName("Player.Skill")},
        {TagName = FName("Player.Skill.SPA")}
    }
}

--808-Gigawatt Cat-attack
---@type HbkPlayerStateInfoTags
SkillTags.SpecialAttack910 = {
    GameplayTag = {TagName = FName("Player.Skill.SPA.910")},
    ParentTags = {
        {TagName = FName("Player")},
        {TagName = FName("Player.Skill")},
        {TagName = FName("Player.Skill.SPA")}
    }
}

--CNMANIAC
---@type HbkPlayerStateInfoTags
SkillTags.SpecialAttack1010 = {
    GameplayTag = {TagName = FName("Player.Skill.SPA.1010")},
    ParentTags = {
        {TagName = FName("Player")},
        {TagName = FName("Player.Skill")},
        {TagName = FName("Player.Skill.SPA")}
    }
}

--My Hero!
---@type HbkPlayerStateInfoTags
SkillTags.SpecialAttack1020 = {
    GameplayTag = {TagName = FName("Player.Skill.SPA.1020")},
    ParentTags = {
        {TagName = FName("Player")},
        {TagName = FName("Player.Skill")},
        {TagName = FName("Player.Skill.SPA")}
    }
}

---@param Tags HbkPlayerStateInfoTags
function SkillTags.Add(Tags)
    Util.AddToTableIfNotHas(SaveData.SkillTags, Tags.GameplayTag.TagName:ToString())
    SaveData:AdjustSkillTags()
end

return SkillTags