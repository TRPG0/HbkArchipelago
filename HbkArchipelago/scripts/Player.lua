Player = {}

---@return boolean
function Player.HasPartner808()
    local Valid, PlayerCharacterManager = ObjectCache.FindPlayerCharacterManager()
    if Valid then
        return PlayerCharacterManager.PlayerStateInfo.JoinedPartnerFlags & 1 > 0
    end
    return false
end

---@return boolean
function Player.HasPartnerPeppermint()
    local Valid, PlayerCharacterManager = ObjectCache.FindPlayerCharacterManager()
    if Valid then
        return PlayerCharacterManager.PlayerStateInfo.JoinedPartnerFlags & 2 > 0
    end
    return false
end

---@return boolean
function Player.HasPartnerMacaron()
    local Valid, PlayerCharacterManager = ObjectCache.FindPlayerCharacterManager()
    if Valid then
        return PlayerCharacterManager.PlayerStateInfo.JoinedPartnerFlags & 4 > 0
    end
    return false
end

---@return boolean
function Player.HasPartnerKorsica()
    local Valid, PlayerCharacterManager = ObjectCache.FindPlayerCharacterManager()
    if Valid then
        return PlayerCharacterManager.PlayerStateInfo.JoinedPartnerFlags & 8 > 0
    end
    return false
end

---@return boolean
function Player.HasPartnerCNMN()
    local Valid, PlayerCharacterManager = ObjectCache.FindPlayerCharacterManager()
    if Valid then
        return PlayerCharacterManager.PlayerStateInfo.JoinedPartnerFlags & 16 > 0
    end
    return false
end

return Player