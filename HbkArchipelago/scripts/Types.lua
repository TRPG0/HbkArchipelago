---@meta

---@class Hook
---@field Target string
---@field PreCallback function | nil
---@field PostCallback function | nil
---@field PreId number | nil
---@field PostId number | nil
local Hook = {}

---@class BPHook
---@field ClassTarget string
---@field ScriptTarget string
---@field Callback function
---@field PreID number | nil
---@field PostId number | nil
local BPHook = {}

---@class HbkAbility
---@field ID number
---@field Name string
---@field AbilityTag string
---@field InventoryTag string | nil
---@field Add function
---@field Remove function
local HbkAbility = {}

---@class HbkPlayerStateInfoTags
---@field GameplayTag FGameplayTag
---@field ParentTags table<FGameplayTag>
local HbkPlayerStateInfoTags = {}

---@class OnSequence
---@field Callback function
---@field OnlyIfRandomized boolean
local OnSequence = {}

---@class SlotData
---@field Version string
---@field ServerVersion string
local SlotData = {}