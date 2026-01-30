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

---@class HbkStoreTags
---@field ObjectPath string
---@field InventoryTag FGameplayTag
---@field ProductTag FGameplayTag
local HbkStoreTags = {}

---@class OnSequence
---@field Callback function
---@field OnlyIfRandomized boolean
local OnSequence = {}

---@class SlotData
---@field Version string
---@field ServerVersion string
---@field PlayerCount integer
---@field StoreAttackChai boolean
---@field StoreAttackPeppermint boolean
---@field StoreAttackMacaron boolean
---@field StoreAttackKorsica boolean
---@field StoreSpecialAttack boolean
---@field StoreItem boolean
---@field StoreChip boolean
---@field AllowSell boolean
local SlotData = {}

---@class ScoutedItem
---@field ItemName string
---@field PlayerName string
---@field Flags integer
local ScoutedItem = {}