Ability = require "Ability"

Sequence = {}

---@type table<string, OnSequence>
Sequence.OnStartSequence = {
    ["ev0012_80"] = {
        Callback = function ()
            print("New file started\n")
            SaveData:Delete()
        end,
        OnlyIfRandomized = false
    },
    ["cs0180_00"] = {
        Callback = function ()
            --Track 1 completed
            Multiworld:LevelCompleted("cs0180_00", 1)
        end,
        OnlyIfRandomized = true
    },
    ["cs0245_00"] = {
        Callback = function ()
            --Track 2 completed
            Multiworld:LevelCompleted("cs0245_00", 2)
        end,
        OnlyIfRandomized = true
    },
    ["cs0315_00"] = {
        Callback = function ()
            --Track 3 completed
            Multiworld:LevelCompleted("cs0315_00", 3)
        end,
        OnlyIfRandomized = true
    },
    ["cs0430_00"] = {
        Callback = function ()
            --Track 4 completed
            Multiworld:LevelCompleted("cs0430_00", 4)
        end,
        OnlyIfRandomized = true
    },
    ["cs0555_00"] = {
        Callback = function ()
            --Track 6 completed
            Multiworld:LevelCompleted("cs0555_00", 6)
        end,
        OnlyIfRandomized = true
    },
    ["cs0625_00"] = {
        Callback = function ()
            --Track 7 completed
            Multiworld:LevelCompleted("cs0625_00", 7)
        end,
        OnlyIfRandomized = true
    },
    ["cs0725_00"] = {
        Callback = function ()
            --Track 8 completed
            Multiworld:LevelCompleted("cs0725_00", 8)
        end,
        OnlyIfRandomized = true
    },
    ["cs0840_00"] = {
        Callback = function ()
            --Track 9 completed
            Multiworld:LevelCompleted("cs0840_00", 9)
        end,
        OnlyIfRandomized = true
    },
    ["cs1040_00"] = {
        Callback = function ()
            --Track 10 completed
            Multiworld:LevelCompleted("cs1040_00", 10)
        end,
        OnlyIfRandomized = true
    },
    ["cs1130_00"] = {
        Callback = function ()
            --Track 11 completed
            Multiworld:LevelCompleted("cs1130_00", 11)
        end,
        OnlyIfRandomized = true
    },
    ["ev1250_80"] = {
        Callback = function ()
            --Track 12 completed
            Multiworld:GoalCompleted()
        end,
        OnlyIfRandomized = true
    }
}

---@type table<string, OnSequence>
Sequence.OnEndSequence = {
    ["cs0125_00"] = {
        Callback = function ()
            --Beat hit does not unlock if you skip tutorial
            Ability.BeatHit:Add()

            local Valid, PlayerCharacterManager = ObjectCache.FindPlayerCharacterManager()
            if Valid then
                PlayerCharacterManager:Set808Visibility(true)
            end
        end,
        OnlyIfRandomized = true
    }
}

---@type table<string>
Sequence.BossFightSequences = {
    "cs0160_00",
    "cs0165_00",
    "cs0170_00",
    "cs0230_00",
    "cs0235_00",
    "cs0240_00",
    "cs0420_00",
    "cs0425_00",
    "cs0550_00",
    "cs0551_00",
    "cs0552_00",
    "cs0553_00",
    "cs0554_00",
    "cs0620_00",
    "cs0820_00",
    "cs0825_00",
    "cs0830_00",
    "cs0835_00",
    "cs1025_00",
    "cs1030_00",
    "cs1035_00"
}

return Sequence